import 'dart:convert';

import 'package:anixdart/anixdart.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

import '../support/model_fixtures.dart';

void main() {
  final badge = <String, dynamic>{
    'id': 12,
    'name': 'Значок',
    'type': 1,
    'timestamp': 0,
    'badge_url': 'https://example.test/badge',
    'award': {
      'trigger': 'FUTURE_TRIGGER',
      'episode_name': null,
      'profile_list_status': null,
      'release_id': null,
      'release_image': null,
      'release_title': null,
    },
  };

  test('значки 10.5 поддерживают новые изображения и неизвестный триггер', () {
    final decoded = Badge.fromJson(badge);
    expect(decoded.imageUrl, isNull);
    expect(decoded.award!.trigger, 'FUTURE_TRIGGER');
    expect(decoded.toJson(), badge);
    final legacy = {...badge}
      ..remove('badge_url')
      ..remove('award');
    legacy['image_url'] = 'legacy';
    expect(Badge.fromJson(legacy).imageUrl, 'legacy');
    expect(
      Badge.fromJson({...badge, 'ownership_percentage': 1}).ownershipPercentage,
      1.0,
    );
  });

  test('новые методы сохраняют HTTP-контракт AnixartJS 1.1.0', () async {
    final profile = modelFixture('Profile');
    final page = {
      'code': 0,
      'content': [badge],
      'total_count': 1,
      'total_page_count': 1,
      'current_page': 0,
    };
    final expected = <(String, String, Map<String, dynamic>)>[
      ('GET', '/achievement/get/CODE', {'code': 0}),
      (
        'GET',
        '/achievement/preview/CODE',
        {
          'code': 0,
          'achievement': {'name': 'Награда', 'badge': badge},
        },
      ),
      (
        'GET',
        '/profile/7/badge/list',
        {
          'code': 0,
          'profile': profile,
          'recent': [badge],
          'sections': [
            {
              'id': 1,
              'title': 'Раздел',
              'count': 1,
              'content': [badge],
            },
          ],
          'showcased': [badge],
          'total_count': 1,
        },
      ),
      ('GET', '/profile/7/badge/list/1/2', {...page, 'profile': profile}),
      ('GET', '/profile/preference/badge/edit/12', {'code': 0, 'badge': badge}),
      ('POST', '/profile/preference/badge/showcase/pin/12', {'code': 0}),
      ('POST', '/profile/preference/badge/showcase/unpin/12', {'code': 0}),
      ('POST', '/profile/preference/badge/showcase/reorder', {'code': 0}),
      ('GET', '/release/101/badges/0', page),
      ('POST', '/channel/delete/9', {'code': 0}),
      ('POST', '/profile/preference/login/history/delete', {'code': 0}),
    ];
    var calls = 0;
    final transport = MockClient((request) async {
      final (method, path, response) = expected[calls++];
      expect(request.method, method);
      expect(request.url.path, path);
      expect(
        request.url.queryParameters['token'],
        path.contains('/preview/') ? isNull : 'token',
      );
      if (path == '/achievement/get/CODE') {
        expect(request.url.queryParameters['badge_id'], '12');
      }
      if (path == '/profile/7/badge/list') {
        expect(request.url.queryParameters['recent'], '1');
      }
      if (path.endsWith('/reorder')) {
        expect(jsonDecode(request.body), {
          'ids': [12, 34],
        });
      }
      return http.Response.bytes(utf8.encode(jsonEncode(response)), 200);
    });
    final client = http.runWithClient(
      () => Anixart(token: 'token'),
      () => transport,
    );
    addTearDown(client.close);
    final endpoints = client.endpoints;
    await endpoints.achievement.get('CODE', badgeId: 12);
    expect(
      (await endpoints.achievement.preview('CODE')).achievement.badge.id,
      12,
    );
    expect(
      (await endpoints.profileBadge.list(7, recent: '1')).sections.single.count,
      1,
    );
    expect(
      (await endpoints.profileBadge.section(7, 1, page: 2)).content.single.id,
      12,
    );
    expect((await endpoints.profileBadge.edit(12)).badge.id, 12);
    await endpoints.profileBadge.pinToShowcase(12);
    await endpoints.profileBadge.unpinFromShowcase(12);
    await endpoints.profileBadge.reorderShowcase([12, 34]);
    expect((await endpoints.release.badges(101)).content.single.id, 12);
    await endpoints.channel.delete(9);
    await endpoints.profilePreference.deleteLoginHistory();
    expect(calls, expected.length);
  });

  test('новые коды ошибок преобразуются в AnixartError', () async {
    final transport = MockClient((request) async {
      return http.Response('{"code":3}', 200);
    });
    final client = http.runWithClient(
      () => Anixart(token: 'token'),
      () => transport,
    );
    addTearDown(client.close);
    for (final (call, name) in <(Future<Object> Function(), String)>[
      (() => client.endpoints.achievement.get('CODE'), 'AchievementNotFound'),
      (() => client.endpoints.profileBadge.pinToShowcase(12), 'LimitReached'),
      (() => client.endpoints.channel.delete(9), 'ChannelNotOwned'),
    ]) {
      await expectLater(
        call(),
        throwsA(
          isA<AnixartError>().having(
            (error) => error.codeName,
            'codeName',
            name,
          ),
        ),
      );
    }
  });

  test('уведомление содержит объект статьи, релиз и профиль — значки', () {
    final notification = <String, dynamic>{
      'type': 'article',
      'id': 1,
      '@id': 1,
      'timestamp': 0,
      'is_new': false,
      'is_pushed': false,
      'profile': modelFixture('Profile'),
      'article': modelFixture('Article'),
    };
    expect(
      ProfileArticleNotification.fromJson(notification).article.id,
      notification['article']['id'],
    );
    final release = Release.fromJson({
      ...modelFixture('Release'),
      'badge_count': 1,
      'badges_preview': [badge],
    });
    expect(release.badgesPreview!.single.id, 12);
    final profile = Profile.fromJson({
      ...modelFixture('Profile'),
      'badge_count': 1,
      'badges_preview': [badge],
    });
    expect(profile.badgeCount, 1);
  });
}
