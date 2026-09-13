import 'dart:async';

enum HttpMethod {
  get,
  post,
  put,
  delete,
  patch,
  head,
  options;

  String get value => name.toUpperCase();
}

typedef HttpParameters = Map<String, Object?>;

sealed class HttpBody {
  const HttpBody();
}

final class JsonBody extends HttpBody {
  const JsonBody(this.data);

  final Object? data;
}

final class UrlEncodedBody extends HttpBody {
  const UrlEncodedBody(this.data);

  final HttpParameters data;
}

final class ImageBody extends HttpBody {
  const ImageBody({
    required this.name,
    required this.file,
    required this.field,
    this.boundary,
    this.fields = const {},
  });

  /// Имя файла.
  final String name;

  /// Содержимое файла.
  final List<int> file;

  final String field;

  final String? boundary;

  final Map<String, String> fields;
}

sealed class HttpAuth {
  const HttpAuth();
}

final class AnixartAuth extends HttpAuth {
  const AnixartAuth({this.required = false});

  final bool required;
}

final class BearerAuth extends HttpAuth {
  const BearerAuth(this.token);

  final String token;
}

final class RequestCancelToken {
  final StreamController<void> _controller = StreamController<void>.broadcast(
    sync: true,
  );

  bool _cancelled = false;

  bool get isCancelled => _cancelled;

  Stream<void> get onCancel => _controller.stream;

  void cancel() {
    if (_cancelled) {
      return;
    }

    _cancelled = true;
    _controller.add(null);
  }
}

final class RequestOptions {
  const RequestOptions({
    this.timeout,
    this.cancelToken,
    this.throwOnAnixartError,
    this.apiVersion,
  });

  final Duration? timeout;
  final RequestCancelToken? cancelToken;

  final bool? throwOnAnixartError;
  final int? apiVersion;
}

final class HttpRequest {
  const HttpRequest({
    required this.method,
    required this.path,
    this.query,
    this.body,
    this.auth,
    this.customBaseUrl,
    this.successCodes,
    this.resultEnum,
    this.headers = const {},
    this.options = const RequestOptions(),
  });

  final HttpMethod method;
  final String path;

  final HttpParameters? query;
  final HttpBody? body;

  final HttpAuth? auth;

  final String? customBaseUrl;

  final List<int>? successCodes;

  final Map<int, String>? resultEnum;

  final Map<String, String> headers;

  final RequestOptions options;
}

final class HttpResponse<T> {
  const HttpResponse({
    required this.status,
    required this.headers,
    required this.data,
  });

  final int status;
  final Map<String, String> headers;
  final T data;
}

typedef ResponseDecoder<T> = T Function(Object? value);
