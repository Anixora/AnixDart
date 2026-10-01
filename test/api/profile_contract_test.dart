import 'package:anixdart/anixdart.dart';
import 'package:test/test.dart';

import '../support/contract_client.dart';
import '../support/model_fixtures.dart';

void main() {
  Map<String, dynamic> fixture(
    Map<String, dynamic> expected, [
    Object? response = const {'code': 0},
  ]) => {'expected': expected, 'response': response};

  test('Profile.get сохраняет путь, авторизацию и коды результата', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/7',
        'method': 'GET',
        'auth': {'type': 'Anixart'},
        'resultEnum': {'2': 'ProfileNotFound'},
      }, modelFixture('ProfileResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    final result = await client.endpoints.profile.get(7);

    expect(result, isA<ProfileResponse>());
    expect(http.calls, 1);
  });

  test('Profile.changeLoginHistory декодирует страницу ответа', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/login/history/all/7/3',
        'method': 'GET',
        'auth': {'type': 'Anixart'},
      }, modelFixture('PageableResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    final result = await client.endpoints.profile.changeLoginHistory(
      7,
      page: 3,
    );

    expect(result, isA<PageableResponse<ChangeLogin>>());
  });

  test('ProfileBadge.all использует путь настроек значка', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/preference/badge/all/2',
        'method': 'GET',
        'auth': {'type': 'Anixart'},
      }, modelFixture('PageableResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileBadge.all(page: 2),
      isA<PageableResponse<Badge>>(),
    );
  });

  test('ProfileBlockList.addToBlockList сохраняет коды результата', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/blocklist/add/7',
        'method': 'GET',
        'auth': {'type': 'Anixart'},
        'resultEnum': {'2': 'AlreadyInBlockList'},
      }),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileBlockList.addToBlockList(7),
      isA<ApiResponse>(),
    );
  });

  test('ProfileDeletion.request отправляет пароль как данные формы', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/deletion/request',
        'method': 'POST',
        'body': {
          'type': 'URL-Encoded',
          'data': {'password': 'secret'},
        },
        'auth': {'type': 'Anixart'},
        'resultEnum': {
          '2': 'AlreadyRequested',
          '3': 'NotFound',
          '4': 'AlreadyProcessed',
          '5': 'InProgress',
          '6': 'InvalidPassword',
          '7': 'UnknownError',
        },
      }, modelFixture('ProfileDeletionResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileDeletion.request('secret'),
      isA<ProfileDeletionResponse>(),
    );
  });

  test('ProfileFriends.send сохраняет коды успеха AnixartJS', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/friend/request/send/7',
        'successCodes': [0, 2, 3],
        'method': 'GET',
        'auth': {'type': 'Anixart'},
        'resultEnum': {
          '2': 'RequestConfirmed',
          '3': 'RequestSent',
          '4': 'ProfileWasBlocked',
          '5': 'MyProfileWasBlocked',
          '6': 'FriendLimitReached',
          '7': 'TargetFriendLimitReached',
          '8': 'TargetFriendRequestsDisallowed',
          '9': 'FriendRequestLimitReached',
        },
      }, modelFixture('FriendStatusResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileFriends.send(7),
      isA<FriendStatusResponse>(),
    );
  });

  test(
    'ProfileFriends.requests mirrors SDK and omits docs-only count',
    () async {
      final http = ContractClient(
        fixture({
          'path': '/profile/friend/requests/in/4',
          'method': 'GET',
          'auth': {'type': 'Anixart'},
        }, modelFixture('PageableResponse')),
      );
      final client = Anixart(httpClient: http);
      addTearDown(client.close);

      expect(
        await client.endpoints.profileFriends.requests('in', page: 4),
        isA<PageableResponse<Profile>>(),
      );
    },
  );

  test('ProfileFriends.requestsLast передаёт count в запросе', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/friend/requests/out/last',
        'method': 'GET',
        'query': {'count': 9},
        'auth': {'type': 'Anixart'},
      }, modelFixture('PageableResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileFriends.requestsLast('out', count: 9),
      isA<PageableResponse<Profile>>(),
    );
  });

  test('ProfileHealth.appeal отправляет сообщение в JSON', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/health/enforcement/7/appeal',
        'method': 'POST',
        'body': {
          'type': 'JSON',
          'data': {'message': 'please review'},
        },
        'auth': {'type': 'Anixart'},
      }),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileHealth.appeal(7, 'please review'),
      isA<ApiResponse>(),
    );
  });

  test('ProfileList.get передаёт значения enum и фильтра', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/list/all/1/3',
        'method': 'GET',
        'query': {'sort': 1, 'filter_announce': 1},
        'auth': {'type': 'Anixart'},
      }, modelFixture('PageableResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileList.get(
        BookmarkType.watching,
        page: 3,
        sort: BookmarkSortType.newToOldAddTime,
        filterAnnounce: 1,
      ),
      isA<PageableResponse<Release>>(),
    );
  });

  test(
    'ProfilePreference.avatarEdit формирует multipart с изображением',
    () async {
      final http = ContractClient(
        fixture({
          'path': '/profile/preference/avatar/edit',
          'method': 'POST',
          'body': {
            'type': 'Image',
            'data': {
              'name': 'avatar.jpg',
              'file': [1, 2, 3],
              'type': 'image',
              'fields': {'name': 'avatar.jpg'},
            },
          },
          'auth': {'type': 'Anixart'},
        }, modelFixture('ProfilePreferenceResponse')),
      );
      final client = Anixart(httpClient: http);
      addTearDown(client.close);

      expect(
        await client.endpoints.profilePreference.avatarEdit(const [
          1,
          2,
          3,
        ], 'avatar.jpg'),
        isA<ProfilePreferenceResponse>(),
      );
    },
  );

  test(
    'ProfilePreference.changeEmail использует API-Version v2 по умолчанию',
    () async {
      const data = ChangeEmailRequest(
        newEmail: 'new@example.com',
        currentEmail: 'old@example.com',
        currentPassword: 'secret',
      );
      final http = ContractClient(
        fixture({
          'path': '/profile/preference/email/change',
          'method': 'POST',
          'body': {
            'type': 'URL-Encoded',
            'data': {
              'new_email': 'new@example.com',
              'current_email': 'old@example.com',
              'current_password': 'secret',
            },
          },
          'auth': {'type': 'Anixart'},
          'resultEnum': {
            '2': 'InvalidPassword',
            '3': 'InvalidOldEmail',
            '4': 'InvalidEmail',
            '5': 'EmailAlreadyTaken',
            '6': 'CodeAlreadySend',
            '7': 'CodeCannotSend',
          },
          'apiVersion': 2,
        }, modelFixture('ChangeEmailResponse')),
      );
      final client = Anixart(httpClient: http);
      addTearDown(client.close);

      expect(
        await client.endpoints.profilePreference.changeEmail(data),
        isA<ChangeEmailResponse>(),
      );
    },
  );

  test(
    'ProfilePreference.changeEmailVerify передаёт параметры запроса SDK',
    () async {
      const data = ChangeEmailVerifyRequest(
        newEmail: 'new@example.com',
        code: 123456,
        hash: 'hash',
      );
      final http = ContractClient(
        fixture({
          'path': '/profile/preference/email/verify',
          'query': data.toJson(),
          'method': 'GET',
          'auth': {'type': 'Anixart'},
          'resultEnum': {
            '2': 'InvalidEmail',
            '3': 'CodeInvalid',
            '4': 'CodeExpired',
            '5': 'InvalidHash',
            '6': 'EmailAlreadyTaken',
          },
        }),
      );
      final client = Anixart(httpClient: http);
      addTearDown(client.close);

      expect(
        await client.endpoints.profilePreference.changeEmailVerify(data),
        isA<ApiResponse>(),
      );
    },
  );

  test(
    'ProfilePreference.googleBind передаёт idToken и коды результата',
    () async {
      final http = ContractClient(
        fixture({
          'path': '/profile/preference/google/bind',
          'method': 'POST',
          'body': {
            'type': 'URL-Encoded',
            'data': {'idToken': 'token'},
          },
          'auth': {'type': 'Anixart'},
          'resultEnum': {'2': 'InvalidRequest', '3': 'GoogleAlreadyBound'},
        }),
      );
      final client = Anixart(httpClient: http);
      addTearDown(client.close);

      expect(
        await client.endpoints.profilePreference.googleBind('token'),
        isA<ApiResponse>(),
      );
    },
  );

  test('ProfileReleaseVote.allReleaseVoted передаёт сортировку', () async {
    final http = ContractClient(
      fixture({
        'path': '/profile/vote/release/voted/7/2',
        'method': 'GET',
        'query': {'sort': 3},
        'auth': {'type': 'Anixart'},
      }, modelFixture('PageableResponse')),
    );
    final client = Anixart(httpClient: http);
    addTearDown(client.close);

    expect(
      await client.endpoints.profileReleaseVote.allReleaseVoted(
        7,
        page: 2,
        sort: 3,
      ),
      isA<PageableResponse<Release>>(),
    );
  });

  test(
    'ProfileRoleList.all сохраняет порядок страницы и роли в пути',
    () async {
      final http = ContractClient(
        fixture({
          'path': '/role/all/4/7',
          'method': 'GET',
          'auth': {'type': 'Anixart'},
        }, modelFixture('PageableResponse')),
      );
      final client = Anixart(httpClient: http);
      addTearDown(client.close);

      expect(
        await client.endpoints.profileRoleList.all(7, page: 4),
        isA<PageableResponse<ProfileRole>>(),
      );
    },
  );
}
