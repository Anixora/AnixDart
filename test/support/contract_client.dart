import 'dart:convert';

import 'package:anixdart/anixdart.dart';
import 'package:test/test.dart';

/// Контракт формируется по поведению соответствующего endpoint в AnixartJS.
final class ContractClient extends AnixartHttpClient {
  ContractClient(this.fixture)
    : super(
        baseUrl: 'https://example.test',
        userAgent: 'fixture',
        throwOnAnixartError: true,
      );

  final Map<String, dynamic> fixture;
  int calls = 0;

  @override
  Future<HttpResponse<T>> request<T>(
    HttpRequest request, {
    ResponseDecoder<T>? decoder,
  }) async {
    calls++;
    final expected = Map<String, dynamic>.from(fixture['expected'] as Map);

    if (expected['resultEnum'] case final Map values) {
      expected['resultEnum'] = {
        for (final entry in values.entries)
          if (int.tryParse(entry.key as String) != null) entry.key: entry.value,
      };
    }

    final actual = <String, Object?>{
      'path': request.path,
      'method': request.method.value,
      if (request.query != null)
        'query': {
          for (final e in request.query!.entries)
            if (e.value != null) e.key: e.value,
        },
      if (request.body case final JsonBody body)
        'body': {'type': 'JSON', 'data': body.data},
      if (request.body case final UrlEncodedBody body)
        'body': {'type': 'URL-Encoded', 'data': body.data},
      if (request.body case final ImageBody body)
        'body': {
          'type': 'Image',
          'data': {
            'name': expected['body']['data']['name'] == '<temporary-file-name>'
                ? '<temporary-file-name>'
                : body.name,
            'file': body.file,
            'type': body.field,
            if (body.fields.isNotEmpty) 'fields': body.fields,
            if (body.boundary != null) 'boundary': body.boundary,
          },
        },
      if (request.auth case final AnixartAuth auth)
        'auth': {'type': 'Anixart', if (auth.required) 'required': true},
      if (request.auth case final BearerAuth auth)
        'auth': {'type': 'Bearer', 'token': auth.token},
      if (request.customBaseUrl != null) 'customBaseUrl': request.customBaseUrl,
      if (request.successCodes != null) 'successCodes': request.successCodes,
      if (request.resultEnum != null)
        'resultEnum': {
          for (final e in request.resultEnum!.entries)
            e.key.toString(): e.value,
        },
      if (request.options.apiVersion != null)
        'apiVersion': request.options.apiVersion,
      if (request.headers.isNotEmpty) 'headers': request.headers,
    };

    if (request.body case final ImageBody body) {
      if (expected['body']['data']['name'] == '<temporary-file-name>') {
        expect(body.name, matches(r'^temp_file_\d{15}\.jpg$'));
      }
    }

    expect(jsonDecode(jsonEncode(actual)), expected);
    expect(
      decoder,
      isNotNull,
      reason: 'Каждый endpoint должен использовать настоящий decoder',
    );

    return HttpResponse(
      status: 200,
      headers: const {},
      data: decoder!(fixture['response']),
    );
  }
}
