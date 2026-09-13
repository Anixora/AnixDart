import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:anixdart/anixdart.dart';
import 'package:test/test.dart';

void main() {
  final fixture = io.File('test/fixtures/release_101.json').readAsStringSync();

  Map<String, dynamic> fixtureJson() =>
      jsonDecode(fixture) as Map<String, dynamic>;

  test('модель релиза корректно декодирует реальный ответ API', () {
    final result = ReleaseResponse.fromJson(fixtureJson());

    expect(result.code, 0);
    expect(result.release.id, 101);
    expect(result.release.titleRu, isNotEmpty);
    expect(result.release.category!.id, ReleaseCategory.series);
    expect(result.release.status!.id, ReleaseStatus.finished);
    expect(result.release.grade, isA<double>());
    expect(result.release.comments, isNotEmpty);
    expect(result.release.recommendedReleases, isNotEmpty);
  });

  test('enum сохраняют числовые значения API', () {
    expect(Category.fromJson(6).id, ReleaseCategory.special);
    expect(const Category(id: ReleaseCategory.ova).toJson()['id'], 3);
    expect(ReleaseStatus.announced.value, 3);
    expect(CommonResult.invalidUserAgent.value, 402);
    expect(() => Category.fromJson(999), throwsArgumentError);
  });

  group('HTTP-клиент', () {
    late io.HttpServer server;
    late Anixart client;
    late Future<void> Function(io.HttpRequest) handler;
    late List<Future<void>> pending;
    late List<io.HttpRequest> received;

    setUp(() async {
      server = await io.HttpServer.bind(io.InternetAddress.loopbackIPv4, 0);
      client = Anixart(baseUrl: 'http://127.0.0.1:${server.port}');
      pending = [];
      received = [];
      handler = (request) async {
        request.response.write(fixture);
        await request.response.close();
      };

      server.listen((request) {
        received.add(request);
        pending.add(handler(request));
      });
    });

    tearDown(() async {
      client.close();
      await server.close(force: true);
      await Future.wait(pending);
    });

    Future<HttpResponse<Object?>> send({
      HttpBody? body,
      HttpAuth? auth,
      RequestOptions options = const RequestOptions(),
      List<int>? successCodes,
      Map<String, String> headers = const {},
      HttpParameters? query,
    }) {
      return client.http.request<Object?>(
        HttpRequest(
          method: body == null ? HttpMethod.get : HttpMethod.post,
          path: '/test?existing=keep',
          body: body,
          auth: auth,
          options: options,
          headers: headers,
          query: query,
          successCodes: successCodes,
        ),
      );
    }

    void respond(String body, {int status = 200}) {
      handler = (request) async {
        await request.drain<void>();
        request.response.statusCode = status;
        request.response.write(body);
        await request.response.close();
      };
    }

    test('endpoint отправляет path, query, token и версию API', () async {
      client.setToken('test-token');

      final result = await client.endpoints.release.get(
        101,
        extendedMode: false,
        options: const RequestOptions(apiVersion: 2),
      );

      expect(result.release.id, 101);
      expect(received.single.method, 'GET');
      expect(received.single.uri.path, '/release/101');
      expect(received.single.uri.queryParameters, {
        'extended_mode': 'false',
        'token': 'test-token',
      });
      expect(received.single.headers.value('API-Version'), 'v2');
      expect(received.single.headers.value('User-Agent'), defaultUserAgent);
    });

    test('JSON, urlencoded и multipart отправляются корректно', () async {
      final bodies = <String>[];
      handler = (request) async {
        bodies.add(await utf8.decoder.bind(request).join());
        request.response.write('{"code":0}');
        await request.response.close();
      };

      await send(body: const JsonBody({'title': 'Пример', 'number': 5}));
      expect(jsonDecode(bodies.last), {'title': 'Пример', 'number': 5});
      expect(received.last.headers.contentType!.mimeType, 'application/json');

      await send(
        body: const UrlEncodedBody({'name': 'a & b', 'flag': true}),
      );
      expect(Uri.splitQueryString(bodies.last), {
        'name': 'a & b',
        'flag': 'true',
      });

      await send(
        body: const ImageBody(
          name: 'image.bin',
          file: [65, 66, 67],
          field: 'image',
          fields: {'caption': 'example'},
        ),
      );
      expect(bodies.last, contains('filename="image.bin"'));
      expect(bodies.last, contains('ABC'));
      expect(bodies.last, contains('name="caption"'));
    });

    test('ошибки API, HTTP, таймаут и отмена запроса обрабатываются', () async {
      respond('{"code":402}');
      await expectLater(send(), throwsA(isA<AnixartError>()));
      expect((await send(successCodes: [402])).data, {'code': 402});

      respond('unavailable', status: 503);
      await expectLater(send(), throwsA(isA<HttpError>()));

      handler = (request) async {
        await Future<void>.delayed(const Duration(milliseconds: 150));
        await request.response.close();
      };
      await expectLater(
        send(options: const RequestOptions(timeout: Duration(milliseconds: 30))),
        throwsA(isA<TimeoutException>()),
      );

      final started = Completer<void>();
      handler = (request) async {
        request.response.write('{"code":');
        await request.response.flush();
        if (!started.isCompleted) started.complete();
        await Future<void>.delayed(const Duration(milliseconds: 150));
        await request.response.close();
      };
      final token = RequestCancelToken();
      final cancelled = expectLater(
        send(options: RequestOptions(cancelToken: token)),
        throwsA(isA<RequestCancelledException>()),
      );
      await started.future;
      token.cancel();
      await cancelled;
    });
  });
}
