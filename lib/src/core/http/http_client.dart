import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

import '../errors/anixart_error.dart';
import '../errors/http_error.dart';
import 'http_types.dart';
import '../../models/common/enums.dart';

class AnixartHttpClient {
  AnixartHttpClient({
    required String baseUrl,
    required String userAgent,
    required bool throwOnAnixartError,
    String? token,
  }) : _baseUrl = baseUrl,
       _userAgent = userAgent,
       _throwOnAnixartError = throwOnAnixartError,
       _token = token,
       _client = http.Client();

  String _baseUrl;

  final String _userAgent;
  final bool _throwOnAnixartError;

  String? _token;

  final http.Client _client;

  void setBaseUrl(String baseUrl) {
    _baseUrl = baseUrl;
  }

  String getBaseUrl() {
    return _baseUrl;
  }

  void setToken(String? token) {
    _token = token;
  }

  void close() {
    _client.close();
  }

  String _getResultCodeName(int code, Map<int, String>? resultEnum) {
    return commonResultNames[code] ?? resultEnum?[code] ?? 'Unknown';
  }

  int? _getResultCode(Object? value) {
    if (value case Map map) {
      final code = map['code'];

      if (code is int) {
        return code;
      }

      if (code is num) {
        return code.toInt();
      }
    }

    return null;
  }

  String _parameterToString(Object value) {
    if (value is String || value is num || value is bool) {
      return value.toString();
    }

    throw ArgumentError.value(
      value,
      'value',
      'HTTP parameter must be String, num or bool',
    );
  }

  Future<HttpResponse<T>> request<T>(
    HttpRequest request, {
    ResponseDecoder<T>? decoder,
  }) async {
    var url = Uri.parse(
      request.customBaseUrl ?? _baseUrl,
    ).resolve(request.path);

    final query = <String, String>{...url.queryParameters};

    if (request.query != null) {
      for (final entry in request.query!.entries) {
        final value = entry.value;

        if (value == null) {
          continue;
        }

        query[entry.key] = _parameterToString(value);
      }
    }

    final headers = <String, String>{'User-Agent': _userAgent};

    final apiVersion = request.options.apiVersion;

    if (apiVersion != null && apiVersion != 0) {
      headers['API-Version'] = 'v$apiVersion';
    }

    //
    // Авторизация
    //

    switch (request.auth) {
      case AnixartAuth(:final required):
        if (required && (_token == null || _token!.isEmpty)) {
          throw AnixartError(
            message: 'Anixart token is required for this request',
            path: request.path,
            code: 401,
            codeName: 'Unauthorized',
          );
        }

        if (_token != null && _token!.isNotEmpty) {
          query['token'] = _token!;
        }

      case BearerAuth(:final token):
        headers['Authorization'] = 'Bearer $token';

      case null:
        break;
    }

    url = url.replace(queryParameters: query.isEmpty ? null : query);

    //
    // Отмена запроса и таймаут
    //

    final abortScope = _AbortScope(
      cancelToken: request.options.cancelToken,
      timeout: request.options.timeout,
    );

    try {
      final baseRequest = _buildRequest(
        request: request,
        url: url,
        headers: headers,
        abortTrigger: abortScope.trigger,
      );

      final streamedResponse = await _client.send(baseRequest);

      final response = await http.Response.fromStream(streamedResponse);

      final responseData = utf8.decode(
        response.bodyBytes,
        allowMalformed: true,
      );

      //
      // Аналог:
      //
      // if (String(responseData).trim() == "")
      //

      if (responseData.trim().isEmpty) {
        throw HttpError(
          message: 'Endpoint does not exists',
          status: response.statusCode,
          response: responseData,
        );
      }

      //
      // Аналог response.ok
      //

      if (response.statusCode < 200 || response.statusCode >= 300) {
        final reason = response.reasonPhrase;

        throw HttpError(
          message: reason == null || reason.isEmpty
              ? 'HTTP ${response.statusCode}'
              : 'HTTP ${response.statusCode}: $reason',
          status: response.statusCode,
          response: responseData,
        );
      }

      //
      // Разбор JSON
      //

      late final Object? json;

      try {
        json = jsonDecode(responseData);
      } on FormatException {
        throw HttpError(
          message: 'Failed to parse response as JSON',
          status: response.statusCode,
          response: responseData,
        );
      }

      //
      // Проверяем Anixart `code`
      //

      final code = _getResultCode(json);

      final successCodes = request.successCodes ?? const [0];

      final throwOnAnixartError =
          request.options.throwOnAnixartError ?? _throwOnAnixartError;

      if (code != null && !successCodes.contains(code) && throwOnAnixartError) {
        final codeName = _getResultCodeName(code, request.resultEnum);

        throw AnixartError(
          message: 'Anixart API Error: $codeName ($code)',
          path: request.path,
          code: code,
          codeName: codeName,
          data: json,
        );
      }

      //
      // TypeScript просто делает `as T`.
      //
      // В Dart лучше действительно декодировать модель.
      //

      final T data;

      if (decoder != null) {
        data = decoder(json);
      } else {
        data = json as T;
      }

      return HttpResponse<T>(
        status: response.statusCode,
        headers: Map.unmodifiable(response.headers),
        data: data,
      );
    } on http.RequestAbortedException {
      if (abortScope.reason == _AbortReason.timeout) {
        throw TimeoutException(
          'HTTP request timed out',
          request.options.timeout,
        );
      }

      if (abortScope.reason == _AbortReason.cancelled) {
        throw const RequestCancelledException();
      }

      throw const RequestCancelledException();
    } on http.ClientException catch (error) {
      throw HttpError(message: error.message, status: 0);
    } finally {
      await abortScope.dispose();
    }
  }

  http.BaseRequest _buildRequest({
    required HttpRequest request,
    required Uri url,
    required Map<String, String> headers,
    required Future<void>? abortTrigger,
  }) {
    final body = request.body;

    //
    // JSON
    //

    if (body case JsonBody(:final data)) {
      headers['Content-Type'] = 'application/json';

      _mergeHeaders(headers, request.headers);

      final httpRequest = http.AbortableRequest(
        request.method.value,
        url,
        abortTrigger: abortTrigger,
      );

      httpRequest.headers.addAll(headers);
      httpRequest.body = jsonEncode(data);

      return httpRequest;
    }

    //
    // application/x-www-form-urlencoded
    //

    if (body case UrlEncodedBody(:final data)) {
      headers['Content-Type'] = 'application/x-www-form-urlencoded';

      _mergeHeaders(headers, request.headers);

      final encoded = <String, String>{};

      for (final entry in data.entries) {
        final value = entry.value;

        if (value == null) {
          continue;
        }

        encoded[entry.key] = _parameterToString(value);
      }

      final httpRequest = http.AbortableRequest(
        request.method.value,
        url,
        abortTrigger: abortTrigger,
      );

      httpRequest.headers.addAll(headers);

      httpRequest.body = Uri(queryParameters: encoded).query;

      return httpRequest;
    }

    //
    // multipart/form-data
    //

    if (body case ImageBody()) {
      // package:http сам генерирует границу multipart.
      //
      // Если конкретному endpoint нужна ЯВНО
      // заданная граница, используется вспомогательный метод ниже.

      if (body.boundary != null) {
        headers['Content-Type'] =
            'multipart/form-data; boundary=${body.boundary}';

        _mergeHeaders(headers, request.headers);

        final httpRequest = http.AbortableRequest(
          request.method.value,
          url,
          abortTrigger: abortTrigger,
        );

        httpRequest.headers.addAll(headers);

        httpRequest.bodyBytes = _encodeMultipartWithBoundary(
          body,
          body.boundary!,
        );

        return httpRequest;
      }

      _mergeHeaders(headers, request.headers);

      final httpRequest = http.AbortableMultipartRequest(
        request.method.value,
        url,
        abortTrigger: abortTrigger,
      );

      httpRequest.headers.addAll(headers);

      httpRequest.fields.addAll(body.fields);

      httpRequest.files.add(
        http.MultipartFile.fromBytes(
          body.field,
          body.file,
          filename: body.name,
        ),
      );

      return httpRequest;
    }

    //
    // Запрос без тела
    //

    _mergeHeaders(headers, request.headers);

    final httpRequest = http.AbortableRequest(
      request.method.value,
      url,
      abortTrigger: abortTrigger,
    );

    httpRequest.headers.addAll(headers);

    return httpRequest;
  }

  void _mergeHeaders(Map<String, String> target, Map<String, String> source) {
    for (final entry in source.entries) {
      String? existingKey;

      for (final key in target.keys) {
        if (key.toLowerCase() == entry.key.toLowerCase()) {
          existingKey = key;
          break;
        }
      }

      if (existingKey != null) {
        target.remove(existingKey);
      }

      target[entry.key] = entry.value;
    }
  }

  List<int> _encodeMultipartWithBoundary(ImageBody body, String boundary) {
    final bytes = BytesBuilder();

    void addString(String value) {
      bytes.add(utf8.encode(value));
    }

    //
    // Файл
    //

    addString('--$boundary\r\n');

    addString(
      'Content-Disposition: form-data; '
      'name="${_escapeMultipart(body.field)}"; '
      'filename="${_escapeMultipart(body.name)}"\r\n',
    );

    addString('Content-Type: application/octet-stream\r\n\r\n');

    bytes.add(body.file);

    addString('\r\n');

    //
    // Поля
    //

    for (final entry in body.fields.entries) {
      addString('--$boundary\r\n');

      addString(
        'Content-Disposition: form-data; '
        'name="${_escapeMultipart(entry.key)}"\r\n\r\n',
      );

      addString(entry.value);
      addString('\r\n');
    }

    //
    // Завершение multipart
    //

    addString('--$boundary--\r\n');

    return bytes.takeBytes();
  }

  String _escapeMultipart(String value) {
    return value
        .replaceAll('\r', '')
        .replaceAll('\n', '')
        .replaceAll('"', '%22');
  }
}

enum _AbortReason { timeout, cancelled }

final class _AbortScope {
  _AbortScope({RequestCancelToken? cancelToken, Duration? timeout}) {
    if (cancelToken == null && timeout == null) {
      trigger = null;
      return;
    }

    trigger = _completer.future;

    if (cancelToken != null) {
      if (cancelToken.isCancelled) {
        _abort(_AbortReason.cancelled);
      } else {
        _cancelSubscription = cancelToken.onCancel.listen((_) {
          _abort(_AbortReason.cancelled);
        });
      }
    }

    if (timeout != null && !_completer.isCompleted) {
      _timer = Timer(timeout, () {
        _abort(_AbortReason.timeout);
      });
    }
  }

  final Completer<void> _completer = Completer<void>();

  late final Future<void>? trigger;

  StreamSubscription<void>? _cancelSubscription;
  Timer? _timer;

  _AbortReason? reason;

  void _abort(_AbortReason reason) {
    if (_completer.isCompleted) {
      return;
    }

    this.reason = reason;
    _completer.complete();
  }

  Future<void> dispose() async {
    _timer?.cancel();
    await _cancelSubscription?.cancel();
  }
}
