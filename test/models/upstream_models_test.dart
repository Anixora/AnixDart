import 'package:anixdart/anixdart.dart';
import 'package:test/test.dart';
import '../support/model_fixtures.dart';

void main() {
  test('настройки уведомлений требуют оба списка, включая пустые', () {
    const model = NotificationPreferenceResponse(
      code: 0,
      profileStatusNotificationPreferences: [],
      profileTypeNotificationPreferences: [],
      isReleaseTypeNotificationsEnabled: false,
      isEpisodeNotificationsEnabled: false,
      isFirstEpisodeNotificationEnabled: false,
      isRelatedReleaseNotificationsEnabled: false,
      isReportProcessNotificationsEnabled: false,
      isCommentNotificationsEnabled: false,
      isMyCollectionCommentNotificationsEnabled: false,
      isArticleNotificationsEnabled: false,
      isMyArticleCommentNotificationsEnabled: false,
    );
    final json = model.toJson();
    final decoded = NotificationPreferenceResponse.fromJson(json);
    final List<ProfileStatusNotificationPreference> statuses =
        decoded.profileStatusNotificationPreferences;
    final List<ProfileTypeNotificationPreference> types =
        decoded.profileTypeNotificationPreferences;
    expect(statuses, isEmpty);
    expect(types, isEmpty);
    for (final key in [
      'profileStatusNotificationPreferences',
      'profileTypeNotificationPreferences',
    ]) {
      for (final invalid in [
        Map<String, dynamic>.of(json)..remove(key),
        {...json, key: null},
      ]) {
        expect(
          () => NotificationPreferenceResponse.fromJson(invalid),
          throwsA(isA<TypeError>()),
          reason: '$key обязателен',
        );
      }
    }
  });
  test('Article: обязательные поля и допустимый null', () {
    final json = modelFixture('Article');
    final model = Article.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('channel'),
      {...json, 'channel': null},
    ]) {
      expect(
        () => Article.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Article.channel обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('payload'),
      {...json, 'payload': null},
    ]) {
      expect(
        () => Article.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Article.payload обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('creation_date'),
      {...json, 'creation_date': null},
    ]) {
      expect(
        () => Article.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Article.creation_date обязателен',
      );
    }
    expect(model.toJson()['author'], isNull);
    expect(model.toJson()['repost_article'], isNull);
  });
  test('SignInResponse: обязательные поля и допустимый null', () {
    final json = modelFixture('SignInResponse');
    final model = SignInResponse.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('profile'),
      {...json, 'profile': null},
    ]) {
      expect(
        () => SignInResponse.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'SignInResponse.profile обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('profileToken'),
      {...json, 'profileToken': null},
    ]) {
      expect(
        () => SignInResponse.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'SignInResponse.profileToken обязателен',
      );
    }
  });
  test('Channel: обязательные поля и допустимый null', () {
    final json = modelFixture('Channel');
    final model = Channel.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('title'),
      {...json, 'title': null},
    ]) {
      expect(
        () => Channel.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Channel.title обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('id'),
      {...json, 'id': null},
    ]) {
      expect(
        () => Channel.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Channel.id обязателен',
      );
    }
  });
  test('Collection: обязательные поля и допустимый null', () {
    final json = modelFixture('Collection');
    final model = Collection.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('title'),
      {...json, 'title': null},
    ]) {
      expect(
        () => Collection.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Collection.title обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('image'),
      {...json, 'image': null},
    ]) {
      expect(
        () => Collection.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Collection.image обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('releases'),
      {...json, 'releases': null},
    ]) {
      expect(
        () => Collection.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Collection.releases обязателен',
      );
    }
  });
  test('PageableResponse: обязательные поля и допустимый null', () {
    final json = modelFixture('PageableResponse');
    final model = PageableResponse<int>.fromJson(
      json,
      (value) => (value as num).toInt(),
    );
    expect(model.toJson((value) => value), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('content'),
      {...json, 'content': null},
    ]) {
      expect(
        () => PageableResponse<int>.fromJson(
          invalid,
          (value) => (value as num).toInt(),
        ),
        throwsA(isA<TypeError>()),
        reason: 'PageableResponse.content обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('total_count'),
      {...json, 'total_count': null},
    ]) {
      expect(
        () => PageableResponse<int>.fromJson(
          invalid,
          (value) => (value as num).toInt(),
        ),
        throwsA(isA<TypeError>()),
        reason: 'PageableResponse.total_count обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('current_page'),
      {...json, 'current_page': null},
    ]) {
      expect(
        () => PageableResponse<int>.fromJson(
          invalid,
          (value) => (value as num).toInt(),
        ),
        throwsA(isA<TypeError>()),
        reason: 'PageableResponse.current_page обязателен',
      );
    }
  });
  test('AnixPlayerConfigResponse: обязательные поля и допустимый null', () {
    final json = modelFixture('AnixPlayerConfigResponse');
    final model = AnixPlayerConfigResponse.fromJson(json);
    expect(model.toJson(), json);
  });
  test(
    'ProfileRelatedReleaseNotification: обязательные поля и допустимый null',
    () {
      final json = modelFixture('ProfileRelatedReleaseNotification');
      final model = ProfileRelatedReleaseNotification.fromJson(json);
      expect(model.toJson(), json);
      for (final invalid in [
        Map<String, dynamic>.of(json)..remove('release'),
        {...json, 'release': null},
      ]) {
        expect(
          () => ProfileRelatedReleaseNotification.fromJson(invalid),
          throwsA(isA<TypeError>()),
          reason: 'ProfileRelatedReleaseNotification.release обязателен',
        );
      }
    },
  );
  test('ChangeEmailVerifyRequest: обязательные поля и допустимый null', () {
    final json = modelFixture('ChangeEmailVerifyRequest');
    final model = ChangeEmailVerifyRequest.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('new_email'),
      {...json, 'new_email': null},
    ]) {
      expect(
        () => ChangeEmailVerifyRequest.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'ChangeEmailVerifyRequest.new_email обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('code'),
      {...json, 'code': null},
    ]) {
      expect(
        () => ChangeEmailVerifyRequest.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'ChangeEmailVerifyRequest.code обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('hash'),
      {...json, 'hash': null},
    ]) {
      expect(
        () => ChangeEmailVerifyRequest.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'ChangeEmailVerifyRequest.hash обязателен',
      );
    }
  });
  test('Profile: обязательные поля и допустимый null', () {
    final json = modelFixture('Profile');
    final model = Profile.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('login'),
      {...json, 'login': null},
    ]) {
      expect(
        () => Profile.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Profile.login обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('avatar'),
      {...json, 'avatar': null},
    ]) {
      expect(
        () => Profile.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Profile.avatar обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('history'),
      {...json, 'history': null},
    ]) {
      expect(
        () => Profile.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Profile.history обязателен',
      );
    }
    expect(model.toJson()['badge'], isNull);
    expect(model.toJson()['ban_reason'], isNull);
  });
  test('Release: обязательные поля и допустимый null', () {
    final json = modelFixture('Release');
    final model = Release.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('title_ru'),
      {...json, 'title_ru': null},
    ]) {
      expect(
        () => Release.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Release.title_ru обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('title_original'),
      {...json, 'title_original': null},
    ]) {
      expect(
        () => Release.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Release.title_original обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('image'),
      {...json, 'image': null},
    ]) {
      expect(
        () => Release.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Release.image обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('description'),
      {...json, 'description': null},
    ]) {
      expect(
        () => Release.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Release.description обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('rating'),
      {...json, 'rating': null},
    ]) {
      expect(
        () => Release.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'Release.rating обязателен',
      );
    }
    expect(model.toJson()['note'], isNull);
    expect(model.toJson()['title_alt'], isNull);
    expect(model.toJson()['episodes_total'], isNull);
  });
  test('ReportRequest: обязательные поля и допустимый null', () {
    final json = modelFixture('ReportRequest');
    final model = ReportRequest<int>.fromJson(
      json,
      (value) => (value as num).toInt(),
    );
    expect(
      model.toJson((value) => value),
      Map<String, dynamic>.of(json)..remove('entity_id'),
    );
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('message'),
      {...json, 'message': null},
    ]) {
      expect(
        () => ReportRequest<int>.fromJson(
          invalid,
          (value) => (value as num).toInt(),
        ),
        throwsA(isA<TypeError>()),
        reason: 'ReportRequest.message обязателен',
      );
    }
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('reason'),
      {...json, 'reason': null},
    ]) {
      expect(
        () => ReportRequest<int>.fromJson(
          invalid,
          (value) => (value as num).toInt(),
        ),
        throwsA(isA<TypeError>()),
        reason: 'ReportRequest.reason обязателен',
      );
    }
    expect(model.toJson((value) => value)['entity_id'], isNull);
  });
  test('ReleaseSearchResponse: обязательные поля и допустимый null', () {
    final json = modelFixture('ReleaseSearchResponse');
    final model = ReleaseSearchResponse.fromJson(json);
    expect(model.toJson(), json);
    for (final invalid in [
      Map<String, dynamic>.of(json)..remove('releases'),
      {...json, 'releases': null},
    ]) {
      expect(
        () => ReleaseSearchResponse.fromJson(invalid),
        throwsA(isA<TypeError>()),
        reason: 'ReleaseSearchResponse.releases обязателен',
      );
    }
  });
}
