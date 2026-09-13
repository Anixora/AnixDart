import 'dart:convert';
import 'dart:io';
import 'package:anixdart/anixdart.dart';
import 'package:test/test.dart';

void main() {
  test(
    'коды друзей и версии API поиска доходят до реального транспорта',
    () async {
      final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      addTearDown(() => server.close(force: true));
      final client = Anixart(
        baseUrl: 'http://127.0.0.1:${server.port}',
        token: 'test-token',
      );
      addTearDown(client.close);
      final versions = <String?>[];
      final paths = <String>[];
      final tokens = <String?>[];
      final subscription = server.listen((request) async {
        paths.add(request.uri.path);
        tokens.add(request.uri.queryParameters['token']);
        versions.add(request.headers.value('API-Version'));
        await request.drain<void>();
        final Object body;
        if (request.uri.path.contains('/friend/')) {
          body = {'code': request.uri.path.contains('/send/') ? 2 : 3};
        } else if (request.headers.value('API-Version') == 'v1') {
          body = {'code': 0, 'content': [], 'total_page_count': 1};
        } else {
          body = {'code': 0, 'releases': [], 'related': null};
        }
        request.response.headers.contentType = ContentType.json;
        request.response.write(jsonEncode(body));
        await request.response.close();
      });
      addTearDown(subscription.cancel);
      expect((await client.endpoints.profileFriends.send(7)).code, 2);
      expect((await client.endpoints.profileFriends.remove(7)).code, 3);
      const query = SearchRequest(query: 'test');
      expect(
        await client.endpoints.search.releases(query),
        isA<CurrentReleaseSearchResult>(),
      );
      expect(
        await client.endpoints.search.releases(
          query,
          options: const RequestOptions(apiVersion: 1),
        ),
        isA<LegacyReleaseSearchResult>(),
      );
      expect(paths, [
        '/profile/friend/request/send/7',
        '/profile/friend/request/remove/7',
        '/search/releases/0',
        '/search/releases/0',
      ]);
      expect(tokens, everyElement('test-token'));
      expect(versions, [null, null, 'v2', 'v1']);
    },
  );
}
