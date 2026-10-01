import 'package:anixdart/anixdart.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
part 'upstream_enums_test.g.dart';

@JsonSerializable()
class EnumFixture {
  EnumFixture();
  ArticleResult? e0;
  ArticleCreateEditResult? e1;
  ArticleDeleteResult? e2;
  ArticleEditPinnedResult? e3;
  ArticleMuteResult? e4;
  ArticleSuggestionDeleteResult? e5;
  ArticleEventEntryPoint? e6;
  ArticleEventType? e7;
  CheckLoginResult? e8;
  LoginResult? e9;
  RegisterResult? e10;
  RegisterVerifyResult? e11;
  RestorePasswordResult? e12;
  RestorePasswordVerifyResult? e13;
  RestoreResult? e14;
  ResendResult? e15;
  RestoreResendResult? e16;
  RestoreVerifyResult? e17;
  SignInResult? e18;
  GoogleResult? e19;
  TelegramResult? e20;
  VkResult? e21;
  YandexResult? e22;
  SignUpResult? e23;
  VerifyResult? e24;
  ChannelWidgetSort? e25;
  ChannelWidgetPopularityPeriod? e26;
  ChannelProfilePermission? e27;
  ChannelUploadCoverAvatarResult? e28;
  ChannelBlockResult? e29;
  ChannelResult? e30;
  ChannelsFilterSort? e31;
  ChannelCreateEditResult? e32;
  BlogCreateResult? e33;
  EditorAvailableResult? e34;
  ChannelPermissionManageResult? e35;
  ChannelSubscribeResult? e36;
  ChannelUnsubscribeResult? e37;
  CollectionResult? e38;
  FavoriteCollectionAddResult? e39;
  FavoriteCollectionDeleteResult? e40;
  CollectionEditImageResult? e41;
  CollectionCreateEditResult? e42;
  ReleaseAddCollectionResult? e43;
  CollectionDeleteResult? e44;
  CommonResult? e45;
  CommentAddResult? e46;
  CommentDeleteResult? e47;
  CommentEditResult? e48;
  DeleteNotificationType? e49;
  NotificationPreferenceEditType? e50;
  ProfileFriendNotificationStatus? e51;
  PrivacyState? e52;
  PrivacyFriendRequestState? e53;
  ChangeEmailResult? e54;
  ChangeEmailResendResult? e55;
  ChangeEmailVerifyResult? e56;
  ChangeLoginResult? e57;
  ChangePasswordResult? e58;
  GoogleBindResult? e59;
  GoogleUnbindResult? e60;
  ProfileSelectThemeResult? e61;
  SocialEditResult? e62;
  TelegramBindResult? e63;
  TelegramUnbindResult? e64;
  VkBindResult? e65;
  VkUnbindResult? e66;
  YandexBindResult? e67;
  YandexUnbindResult? e68;
  FriendStatus? e69;
  PrivilegeLevel? e70;
  BookmarkType? e71;
  BookmarkSortType? e72;
  SendFriendRequestResult? e73;
  ProfileDeletionResult? e74;
  RemoveFriendRequestResult? e75;
  ProfileResult? e76;
  AchivementResult? e77;
  BlockListAddResult? e78;
  BookmarksExportResult? e79;
  BookmarksImportResult? e80;
  ReleaseCategory? e81;
  VoteType? e82;
  ReleaseStatus? e83;
  FilterGenresMode? e84;
  FilterAgeRating? e85;
  FilterSort? e86;
  ReleaseVideoResult? e87;
  BookmarkExportResult? e88;
  ReleaseVideoAppealResult? e89;
  ReportType? e90;
  ReportResult? e91;
  factory EnumFixture.fromJson(Map<String, dynamic> json) =>
      _$EnumFixtureFromJson(json);
  Map<String, dynamic> toJson() => _$EnumFixtureToJson(this);
}

void main() {
  test('article: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (ArticleResult.articleDeleted, 2, ArticleResult.articleDeleted.value),
    ]) {
      final value = EnumFixture.fromJson({'e0': wire});
      expect(value.e0, expected, reason: 'ArticleResult');
      expect(declared, wire);
      expect(value.toJson()['e0'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ArticleCreateEditResult.invalidRepostArticle,
        2,
        ArticleCreateEditResult.invalidRepostArticle.value,
      ),
      (
        ArticleCreateEditResult.invalidPayload,
        3,
        ArticleCreateEditResult.invalidPayload.value,
      ),
      (
        ArticleCreateEditResult.invalidTags,
        4,
        ArticleCreateEditResult.invalidTags.value,
      ),
      (
        ArticleCreateEditResult.temporarilyDisabled,
        5,
        ArticleCreateEditResult.temporarilyDisabled.value,
      ),
      (
        ArticleCreateEditResult.articleLimitReached,
        6,
        ArticleCreateEditResult.articleLimitReached.value,
      ),
      (
        ArticleCreateEditResult.channelNotFound,
        7,
        ArticleCreateEditResult.channelNotFound.value,
      ),
      (
        ArticleCreateEditResult.channelNotOwned,
        8,
        ArticleCreateEditResult.channelNotOwned.value,
      ),
      (
        ArticleCreateEditResult.channelCreatorBanned,
        9,
        ArticleCreateEditResult.channelCreatorBanned.value,
      ),
      (
        ArticleCreateEditResult.channelBlocked,
        10,
        ArticleCreateEditResult.channelBlocked.value,
      ),
      (
        ArticleCreateEditResult.articleNotFound,
        11,
        ArticleCreateEditResult.articleNotFound.value,
      ),
      (
        ArticleCreateEditResult.articleDeleted,
        12,
        ArticleCreateEditResult.articleDeleted.value,
      ),
      (
        ArticleCreateEditResult.blogNotCreated,
        13,
        ArticleCreateEditResult.blogNotCreated.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e1': wire});
      expect(value.e1, expected, reason: 'ArticleCreateEditResult');
      expect(declared, wire);
      expect(value.toJson()['e1'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ArticleDeleteResult.articleNotFound,
        2,
        ArticleDeleteResult.articleNotFound.value,
      ),
      (
        ArticleDeleteResult.articleNotOwned,
        3,
        ArticleDeleteResult.articleNotOwned.value,
      ),
      (
        ArticleDeleteResult.articleDeleted,
        4,
        ArticleDeleteResult.articleDeleted.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e2': wire});
      expect(value.e2, expected, reason: 'ArticleDeleteResult');
      expect(declared, wire);
      expect(value.toJson()['e2'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ArticleEditPinnedResult.channelNotFound,
        2,
        ArticleEditPinnedResult.channelNotFound.value,
      ),
      (
        ArticleEditPinnedResult.channelNotOwned,
        3,
        ArticleEditPinnedResult.channelNotOwned.value,
      ),
      (
        ArticleEditPinnedResult.articleNotFound,
        4,
        ArticleEditPinnedResult.articleNotFound.value,
      ),
      (
        ArticleEditPinnedResult.articleDeleted,
        5,
        ArticleEditPinnedResult.articleDeleted.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e3': wire});
      expect(value.e3, expected, reason: 'ArticleEditPinnedResult');
      expect(declared, wire);
      expect(value.toJson()['e3'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ArticleMuteResult.articleNotFound,
        2,
        ArticleMuteResult.articleNotFound.value,
      ),
      (
        ArticleMuteResult.channelNotFound,
        3,
        ArticleMuteResult.channelNotFound.value,
      ),
      (ArticleMuteResult.channelOwned, 4, ArticleMuteResult.channelOwned.value),
    ]) {
      final value = EnumFixture.fromJson({'e4': wire});
      expect(value.e4, expected, reason: 'ArticleMuteResult');
      expect(declared, wire);
      expect(value.toJson()['e4'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ArticleSuggestionDeleteResult.articleSuggestionNotFound,
        2,
        ArticleSuggestionDeleteResult.articleSuggestionNotFound.value,
      ),
      (
        ArticleSuggestionDeleteResult.articleSuggestionNotOwned,
        3,
        ArticleSuggestionDeleteResult.articleSuggestionNotOwned.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e5': wire});
      expect(value.e5, expected, reason: 'ArticleSuggestionDeleteResult');
      expect(declared, wire);
      expect(value.toJson()['e5'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ArticleEventEntryPoint.unknown,
        "unknown",
        ArticleEventEntryPoint.unknown.value,
      ),
      (
        ArticleEventEntryPoint.article,
        "article",
        ArticleEventEntryPoint.article.value,
      ),
      (
        ArticleEventEntryPoint.channel,
        "channel",
        ArticleEventEntryPoint.channel.value,
      ),
      (ArticleEventEntryPoint.feed, "feed", ArticleEventEntryPoint.feed.value),
      (
        ArticleEventEntryPoint.latest,
        "latest",
        ArticleEventEntryPoint.latest.value,
      ),
      (
        ArticleEventEntryPoint.search,
        "search",
        ArticleEventEntryPoint.search.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e6': wire});
      expect(value.e6, expected, reason: 'ArticleEventEntryPoint');
      expect(declared, wire);
      expect(value.toJson()['e6'], wire);
    }
    for (final (expected, wire, declared) in [
      (ArticleEventType.view, "view", ArticleEventType.view.value),
      (ArticleEventType.open, "open", ArticleEventType.open.value),
      (ArticleEventType.read, "read", ArticleEventType.read.value),
    ]) {
      final value = EnumFixture.fromJson({'e7': wire});
      expect(value.e7, expected, reason: 'ArticleEventType');
      expect(declared, wire);
      expect(value.toJson()['e7'], wire);
    }
  });
  test('auth: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (CheckLoginResult.invalidLogin, 2, CheckLoginResult.invalidLogin.value),
    ]) {
      final value = EnumFixture.fromJson({'e8': wire});
      expect(value.e8, expected, reason: 'CheckLoginResult');
      expect(declared, wire);
      expect(value.toJson()['e8'], wire);
    }
    for (final (expected, wire, declared) in [
      (LoginResult.invalidLogin, 2, LoginResult.invalidLogin.value),
      (LoginResult.invalidPassword, 3, LoginResult.invalidPassword.value),
    ]) {
      final value = EnumFixture.fromJson({'e9': wire});
      expect(value.e9, expected, reason: 'LoginResult');
      expect(declared, wire);
      expect(value.toJson()['e9'], wire);
    }
    for (final (expected, wire, declared) in [
      (RegisterResult.invalidLogin, 2, RegisterResult.invalidLogin.value),
      (RegisterResult.invalidEmail, 3, RegisterResult.invalidEmail.value),
      (RegisterResult.invalidPassword, 4, RegisterResult.invalidPassword.value),
      (
        RegisterResult.loginAlreadyTaken,
        5,
        RegisterResult.loginAlreadyTaken.value,
      ),
      (
        RegisterResult.emailAlreadyTaken,
        6,
        RegisterResult.emailAlreadyTaken.value,
      ),
      (RegisterResult.codeAlreadySend, 7, RegisterResult.codeAlreadySend.value),
      (RegisterResult.codeCannotSend, 8, RegisterResult.codeCannotSend.value),
      (
        RegisterResult.emailServiceDisallowed,
        9,
        RegisterResult.emailServiceDisallowed.value,
      ),
      (
        RegisterResult.tooManyRegistrations,
        10,
        RegisterResult.tooManyRegistrations.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e10': wire});
      expect(value.e10, expected, reason: 'RegisterResult');
      expect(declared, wire);
      expect(value.toJson()['e10'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        RegisterVerifyResult.invalidLogin,
        2,
        RegisterVerifyResult.invalidLogin.value,
      ),
      (
        RegisterVerifyResult.invalidEmail,
        3,
        RegisterVerifyResult.invalidEmail.value,
      ),
      (
        RegisterVerifyResult.invalidPassword,
        4,
        RegisterVerifyResult.invalidPassword.value,
      ),
      (
        RegisterVerifyResult.loginAlreadyTaken,
        5,
        RegisterVerifyResult.loginAlreadyTaken.value,
      ),
      (
        RegisterVerifyResult.emailAlreadyTaken,
        6,
        RegisterVerifyResult.emailAlreadyTaken.value,
      ),
      (
        RegisterVerifyResult.codeAlreadySend,
        7,
        RegisterVerifyResult.codeAlreadySend.value,
      ),
      (
        RegisterVerifyResult.codeCannotSend,
        8,
        RegisterVerifyResult.codeCannotSend.value,
      ),
      (
        RegisterVerifyResult.invalidHash,
        9,
        RegisterVerifyResult.invalidHash.value,
      ),
      (
        RegisterVerifyResult.emailServiceDisallowed,
        10,
        RegisterVerifyResult.emailServiceDisallowed.value,
      ),
      (
        RegisterVerifyResult.tooManyRegistrations,
        11,
        RegisterVerifyResult.tooManyRegistrations.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e11': wire});
      expect(value.e11, expected, reason: 'RegisterVerifyResult');
      expect(declared, wire);
      expect(value.toJson()['e11'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        RestorePasswordResult.profileNotFound,
        2,
        RestorePasswordResult.profileNotFound.value,
      ),
      (
        RestorePasswordResult.codeAlreadySend,
        3,
        RestorePasswordResult.codeAlreadySend.value,
      ),
      (
        RestorePasswordResult.codeCannotSend,
        4,
        RestorePasswordResult.codeCannotSend.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e12': wire});
      expect(value.e12, expected, reason: 'RestorePasswordResult');
      expect(declared, wire);
      expect(value.toJson()['e12'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        RestorePasswordVerifyResult.profileNotFound,
        2,
        RestorePasswordVerifyResult.profileNotFound.value,
      ),
      (
        RestorePasswordVerifyResult.invalidPassword,
        3,
        RestorePasswordVerifyResult.invalidPassword.value,
      ),
      (
        RestorePasswordVerifyResult.codeInvalid,
        4,
        RestorePasswordVerifyResult.codeInvalid.value,
      ),
      (
        RestorePasswordVerifyResult.codeExpired,
        5,
        RestorePasswordVerifyResult.codeExpired.value,
      ),
      (
        RestorePasswordVerifyResult.invalidHash,
        6,
        RestorePasswordVerifyResult.invalidHash.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e13': wire});
      expect(value.e13, expected, reason: 'RestorePasswordVerifyResult');
      expect(declared, wire);
      expect(value.toJson()['e13'], wire);
    }
    for (final (expected, wire, declared) in [
      (RestoreResult.profileNotFound, 2, RestoreResult.profileNotFound.value),
      (RestoreResult.codeAlreadySend, 3, RestoreResult.codeAlreadySend.value),
      (RestoreResult.codeCannotSend, 4, RestoreResult.codeCannotSend.value),
    ]) {
      final value = EnumFixture.fromJson({'e14': wire});
      expect(value.e14, expected, reason: 'RestoreResult');
      expect(declared, wire);
      expect(value.toJson()['e14'], wire);
    }
    for (final (expected, wire, declared) in [
      (ResendResult.invalidLogin, 2, ResendResult.invalidLogin.value),
      (ResendResult.invalidEmail, 3, ResendResult.invalidEmail.value),
      (ResendResult.invalidPassword, 4, ResendResult.invalidPassword.value),
      (ResendResult.invalidHash, 5, ResendResult.invalidHash.value),
      (ResendResult.codeCannotSend, 6, ResendResult.codeCannotSend.value),
    ]) {
      final value = EnumFixture.fromJson({'e15': wire});
      expect(value.e15, expected, reason: 'ResendResult');
      expect(declared, wire);
      expect(value.toJson()['e15'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        RestoreResendResult.profileNotFound,
        2,
        RestoreResendResult.profileNotFound.value,
      ),
      (
        RestoreResendResult.invalidHash,
        3,
        RestoreResendResult.invalidHash.value,
      ),
      (
        RestoreResendResult.codeCannotSend,
        4,
        RestoreResendResult.codeCannotSend.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e16': wire});
      expect(value.e16, expected, reason: 'RestoreResendResult');
      expect(declared, wire);
      expect(value.toJson()['e16'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        RestoreVerifyResult.profileNotFound,
        2,
        RestoreVerifyResult.profileNotFound.value,
      ),
      (
        RestoreVerifyResult.invalidPassword,
        3,
        RestoreVerifyResult.invalidPassword.value,
      ),
      (
        RestoreVerifyResult.codeInvalid,
        4,
        RestoreVerifyResult.codeInvalid.value,
      ),
      (
        RestoreVerifyResult.codeExpired,
        5,
        RestoreVerifyResult.codeExpired.value,
      ),
      (
        RestoreVerifyResult.invalidHash,
        6,
        RestoreVerifyResult.invalidHash.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e17': wire});
      expect(value.e17, expected, reason: 'RestoreVerifyResult');
      expect(declared, wire);
      expect(value.toJson()['e17'], wire);
    }
    for (final (expected, wire, declared) in [
      (SignInResult.invalidLogin, 2, SignInResult.invalidLogin.value),
      (SignInResult.invalidPassword, 3, SignInResult.invalidPassword.value),
    ]) {
      final value = EnumFixture.fromJson({'e18': wire});
      expect(value.e18, expected, reason: 'SignInResult');
      expect(declared, wire);
      expect(value.toJson()['e18'], wire);
    }
    for (final (expected, wire, declared) in [
      (GoogleResult.invalidRequest, 2, GoogleResult.invalidRequest.value),
      (GoogleResult.notRegistered, 3, GoogleResult.notRegistered.value),
      (GoogleResult.invalidLogin, 4, GoogleResult.invalidLogin.value),
      (GoogleResult.invalidEmail, 5, GoogleResult.invalidEmail.value),
      (GoogleResult.loginAlreadyTaken, 6, GoogleResult.loginAlreadyTaken.value),
      (GoogleResult.emailAlreadyTaken, 7, GoogleResult.emailAlreadyTaken.value),
      (GoogleResult.emailChanged, 8, GoogleResult.emailChanged.value),
      (
        GoogleResult.emailChangedAndCodeAlreadySend,
        9,
        GoogleResult.emailChangedAndCodeAlreadySend.value,
      ),
      (
        GoogleResult.emailServiceDisallowed,
        10,
        GoogleResult.emailServiceDisallowed.value,
      ),
      (
        GoogleResult.tooManyRegistrations,
        11,
        GoogleResult.tooManyRegistrations.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e19': wire});
      expect(value.e19, expected, reason: 'GoogleResult');
      expect(declared, wire);
      expect(value.toJson()['e19'], wire);
    }
    for (final (expected, wire, declared) in [
      (TelegramResult.invalidRequest, 2, TelegramResult.invalidRequest.value),
      (TelegramResult.notRegistered, 3, TelegramResult.notRegistered.value),
      (TelegramResult.invalidLogin, 4, TelegramResult.invalidLogin.value),
      (TelegramResult.invalidEmail, 5, TelegramResult.invalidEmail.value),
      (
        TelegramResult.loginAlreadyTaken,
        6,
        TelegramResult.loginAlreadyTaken.value,
      ),
      (
        TelegramResult.emailAlreadyTaken,
        7,
        TelegramResult.emailAlreadyTaken.value,
      ),
      (TelegramResult.codeAlreadySend, 8, TelegramResult.codeAlreadySend.value),
      (
        TelegramResult.emailServiceDisallowed,
        9,
        TelegramResult.emailServiceDisallowed.value,
      ),
      (
        TelegramResult.tooManyRegistrations,
        10,
        TelegramResult.tooManyRegistrations.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e20': wire});
      expect(value.e20, expected, reason: 'TelegramResult');
      expect(declared, wire);
      expect(value.toJson()['e20'], wire);
    }
    for (final (expected, wire, declared) in [
      (VkResult.invalidRequest, 2, VkResult.invalidRequest.value),
      (VkResult.notRegistered, 3, VkResult.notRegistered.value),
      (VkResult.invalidLogin, 4, VkResult.invalidLogin.value),
      (VkResult.invalidEmail, 5, VkResult.invalidEmail.value),
      (VkResult.loginAlreadyTaken, 6, VkResult.loginAlreadyTaken.value),
      (VkResult.emailAlreadyTaken, 7, VkResult.emailAlreadyTaken.value),
      (VkResult.codeAlreadySend, 8, VkResult.codeAlreadySend.value),
      (
        VkResult.emailServiceDisallowed,
        9,
        VkResult.emailServiceDisallowed.value,
      ),
      (VkResult.tooManyRegistrations, 10, VkResult.tooManyRegistrations.value),
    ]) {
      final value = EnumFixture.fromJson({'e21': wire});
      expect(value.e21, expected, reason: 'VkResult');
      expect(declared, wire);
      expect(value.toJson()['e21'], wire);
    }
    for (final (expected, wire, declared) in [
      (YandexResult.invalidRequest, 2, YandexResult.invalidRequest.value),
      (YandexResult.notRegistered, 3, YandexResult.notRegistered.value),
      (YandexResult.invalidLogin, 4, YandexResult.invalidLogin.value),
      (YandexResult.invalidEmail, 5, YandexResult.invalidEmail.value),
      (YandexResult.loginAlreadyTaken, 6, YandexResult.loginAlreadyTaken.value),
      (YandexResult.emailAlreadyTaken, 7, YandexResult.emailAlreadyTaken.value),
      (YandexResult.codeAlreadySend, 8, YandexResult.codeAlreadySend.value),
      (
        YandexResult.emailServiceDisallowed,
        9,
        YandexResult.emailServiceDisallowed.value,
      ),
      (
        YandexResult.tooManyRegistrations,
        10,
        YandexResult.tooManyRegistrations.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e22': wire});
      expect(value.e22, expected, reason: 'YandexResult');
      expect(declared, wire);
      expect(value.toJson()['e22'], wire);
    }
    for (final (expected, wire, declared) in [
      (SignUpResult.invalidLogin, 2, SignUpResult.invalidLogin.value),
      (SignUpResult.invalidEmail, 3, SignUpResult.invalidEmail.value),
      (SignUpResult.invalidPassword, 4, SignUpResult.invalidPassword.value),
      (SignUpResult.loginAlreadyTaken, 5, SignUpResult.loginAlreadyTaken.value),
      (SignUpResult.emailAlreadyTaken, 6, SignUpResult.emailAlreadyTaken.value),
      (SignUpResult.codeAlreadySend, 7, SignUpResult.codeAlreadySend.value),
      (SignUpResult.codeCannotSend, 8, SignUpResult.codeCannotSend.value),
      (
        SignUpResult.emailServiceDisallowed,
        9,
        SignUpResult.emailServiceDisallowed.value,
      ),
      (
        SignUpResult.tooManyRegistrations,
        10,
        SignUpResult.tooManyRegistrations.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e23': wire});
      expect(value.e23, expected, reason: 'SignUpResult');
      expect(declared, wire);
      expect(value.toJson()['e23'], wire);
    }
    for (final (expected, wire, declared) in [
      (VerifyResult.invalidLogin, 2, VerifyResult.invalidLogin.value),
      (VerifyResult.invalidEmail, 3, VerifyResult.invalidEmail.value),
      (VerifyResult.invalidPassword, 4, VerifyResult.invalidPassword.value),
      (VerifyResult.loginAlreadyTaken, 5, VerifyResult.loginAlreadyTaken.value),
      (VerifyResult.emailAlreadyTaken, 6, VerifyResult.emailAlreadyTaken.value),
      (VerifyResult.codeInvalid, 7, VerifyResult.codeInvalid.value),
      (VerifyResult.codeExpired, 8, VerifyResult.codeExpired.value),
      (VerifyResult.invalidHash, 9, VerifyResult.invalidHash.value),
      (
        VerifyResult.emailServiceDisallowed,
        10,
        VerifyResult.emailServiceDisallowed.value,
      ),
      (
        VerifyResult.tooManyRegistrations,
        11,
        VerifyResult.tooManyRegistrations.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e24': wire});
      expect(value.e24, expected, reason: 'VerifyResult');
      expect(declared, wire);
      expect(value.toJson()['e24'], wire);
    }
  });
  test('channel: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (ChannelWidgetSort.chronology, 0, ChannelWidgetSort.chronology.value),
      (ChannelWidgetSort.popularity, 1, ChannelWidgetSort.popularity.value),
    ]) {
      final value = EnumFixture.fromJson({'e25': wire});
      expect(value.e25, expected, reason: 'ChannelWidgetSort');
      expect(declared, wire);
      expect(value.toJson()['e25'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelWidgetPopularityPeriod.hours24,
        0,
        ChannelWidgetPopularityPeriod.hours24.value,
      ),
      (
        ChannelWidgetPopularityPeriod.days3,
        1,
        ChannelWidgetPopularityPeriod.days3.value,
      ),
      (
        ChannelWidgetPopularityPeriod.days7,
        2,
        ChannelWidgetPopularityPeriod.days7.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e26': wire});
      expect(value.e26, expected, reason: 'ChannelWidgetPopularityPeriod');
      expect(declared, wire);
      expect(value.toJson()['e26'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelProfilePermission.member,
        0,
        ChannelProfilePermission.member.value,
      ),
      (
        ChannelProfilePermission.administrator,
        1,
        ChannelProfilePermission.administrator.value,
      ),
      (
        ChannelProfilePermission.creator,
        2,
        ChannelProfilePermission.creator.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e27': wire});
      expect(value.e27, expected, reason: 'ChannelProfilePermission');
      expect(declared, wire);
      expect(value.toJson()['e27'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelUploadCoverAvatarResult.channelNotFound,
        2,
        ChannelUploadCoverAvatarResult.channelNotFound.value,
      ),
      (
        ChannelUploadCoverAvatarResult.channelNotOwned,
        3,
        ChannelUploadCoverAvatarResult.channelNotOwned.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e28': wire});
      expect(value.e28, expected, reason: 'ChannelUploadCoverAvatarResult');
      expect(declared, wire);
      expect(value.toJson()['e28'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelBlockResult.channelNotFound,
        2,
        ChannelBlockResult.channelNotFound.value,
      ),
      (
        ChannelBlockResult.channelNotOwned,
        3,
        ChannelBlockResult.channelNotOwned.value,
      ),
      (
        ChannelBlockResult.blockNotFound,
        4,
        ChannelBlockResult.blockNotFound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e29': wire});
      expect(value.e29, expected, reason: 'ChannelBlockResult');
      expect(declared, wire);
      expect(value.toJson()['e29'], wire);
    }
    for (final (expected, wire, declared) in [
      (ChannelResult.channelNotFound, 2, ChannelResult.channelNotFound.value),
    ]) {
      final value = EnumFixture.fromJson({'e30': wire});
      expect(value.e30, expected, reason: 'ChannelResult');
      expect(declared, wire);
      expect(value.toJson()['e30'], wire);
    }
    for (final (expected, wire, declared) in [
      (ChannelsFilterSort.none, 0, ChannelsFilterSort.none.value),
      (
        ChannelsFilterSort.subscriberCount,
        1,
        ChannelsFilterSort.subscriberCount.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e31': wire});
      expect(value.e31, expected, reason: 'ChannelsFilterSort');
      expect(declared, wire);
      expect(value.toJson()['e31'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelCreateEditResult.invalidTitle,
        2,
        ChannelCreateEditResult.invalidTitle.value,
      ),
      (
        ChannelCreateEditResult.invalidDescription,
        3,
        ChannelCreateEditResult.invalidDescription.value,
      ),
      (
        ChannelCreateEditResult.channelLimitReached,
        4,
        ChannelCreateEditResult.channelLimitReached.value,
      ),
      (
        ChannelCreateEditResult.channelNotFound,
        5,
        ChannelCreateEditResult.channelNotFound.value,
      ),
      (
        ChannelCreateEditResult.channelNotOwned,
        6,
        ChannelCreateEditResult.channelNotOwned.value,
      ),
      (
        ChannelCreateEditResult.channelCreatorBanned,
        7,
        ChannelCreateEditResult.channelCreatorBanned.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e32': wire});
      expect(value.e32, expected, reason: 'ChannelCreateEditResult');
      expect(declared, wire);
      expect(value.toJson()['e32'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        BlogCreateResult.reputationLevelTooLow,
        2,
        BlogCreateResult.reputationLevelTooLow.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e33': wire});
      expect(value.e33, expected, reason: 'BlogCreateResult');
      expect(declared, wire);
      expect(value.toJson()['e33'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        EditorAvailableResult.temporarilyDisabled,
        2,
        EditorAvailableResult.temporarilyDisabled.value,
      ),
      (
        EditorAvailableResult.articleLimitReached,
        3,
        EditorAvailableResult.articleLimitReached.value,
      ),
      (
        EditorAvailableResult.channelNotFound,
        4,
        EditorAvailableResult.channelNotFound.value,
      ),
      (
        EditorAvailableResult.channelNotOwned,
        5,
        EditorAvailableResult.channelNotOwned.value,
      ),
      (
        EditorAvailableResult.channelCreatorBanned,
        6,
        EditorAvailableResult.channelCreatorBanned.value,
      ),
      (
        EditorAvailableResult.blogNotCreated,
        7,
        EditorAvailableResult.blogNotCreated.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e34': wire});
      expect(value.e34, expected, reason: 'EditorAvailableResult');
      expect(declared, wire);
      expect(value.toJson()['e34'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelPermissionManageResult.permissionInvalid,
        2,
        ChannelPermissionManageResult.permissionInvalid.value,
      ),
      (
        ChannelPermissionManageResult.targetProfileNotFound,
        3,
        ChannelPermissionManageResult.targetProfileNotFound.value,
      ),
      (
        ChannelPermissionManageResult.channelNotFound,
        4,
        ChannelPermissionManageResult.channelNotFound.value,
      ),
      (
        ChannelPermissionManageResult.channelNotOwned,
        5,
        ChannelPermissionManageResult.channelNotOwned.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e35': wire});
      expect(value.e35, expected, reason: 'ChannelPermissionManageResult');
      expect(declared, wire);
      expect(value.toJson()['e35'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelSubscribeResult.subscriptionExists,
        2,
        ChannelSubscribeResult.subscriptionExists.value,
      ),
      (
        ChannelSubscribeResult.subscriptionLimitReached,
        3,
        ChannelSubscribeResult.subscriptionLimitReached.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e36': wire});
      expect(value.e36, expected, reason: 'ChannelSubscribeResult');
      expect(declared, wire);
      expect(value.toJson()['e36'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChannelUnsubscribeResult.subscriptionNotExists,
        2,
        ChannelUnsubscribeResult.subscriptionNotExists.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e37': wire});
      expect(value.e37, expected, reason: 'ChannelUnsubscribeResult');
      expect(declared, wire);
      expect(value.toJson()['e37'], wire);
    }
  });
  test('collection: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (CollectionResult.invalidId, 2, CollectionResult.invalidId.value),
      (CollectionResult.isPrivate, 3, CollectionResult.isPrivate.value),
      (CollectionResult.isDeleted, 4, CollectionResult.isDeleted.value),
    ]) {
      final value = EnumFixture.fromJson({'e38': wire});
      expect(value.e38, expected, reason: 'CollectionResult');
      expect(declared, wire);
      expect(value.toJson()['e38'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        FavoriteCollectionAddResult.collectionNotFound,
        2,
        FavoriteCollectionAddResult.collectionNotFound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e39': wire});
      expect(value.e39, expected, reason: 'FavoriteCollectionAddResult');
      expect(declared, wire);
      expect(value.toJson()['e39'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        FavoriteCollectionDeleteResult.collectionNotFound,
        2,
        FavoriteCollectionDeleteResult.collectionNotFound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e40': wire});
      expect(value.e40, expected, reason: 'FavoriteCollectionDeleteResult');
      expect(declared, wire);
      expect(value.toJson()['e40'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        CollectionEditImageResult.collectionNotFound,
        2,
        CollectionEditImageResult.collectionNotFound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e41': wire});
      expect(value.e41, expected, reason: 'CollectionEditImageResult');
      expect(declared, wire);
      expect(value.toJson()['e41'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        CollectionCreateEditResult.invalidTitle,
        2,
        CollectionCreateEditResult.invalidTitle.value,
      ),
      (
        CollectionCreateEditResult.invalidDescription,
        3,
        CollectionCreateEditResult.invalidDescription.value,
      ),
      (
        CollectionCreateEditResult.invalidReleases,
        4,
        CollectionCreateEditResult.invalidReleases.value,
      ),
      (
        CollectionCreateEditResult.collectionLimitReached,
        5,
        CollectionCreateEditResult.collectionLimitReached.value,
      ),
      (
        CollectionCreateEditResult.collectionNotFound,
        6,
        CollectionCreateEditResult.collectionNotFound.value,
      ),
      (
        CollectionCreateEditResult.collectionNotOwned,
        7,
        CollectionCreateEditResult.collectionNotOwned.value,
      ),
      (
        CollectionCreateEditResult.collectionDeleted,
        8,
        CollectionCreateEditResult.collectionDeleted.value,
      ),
      (
        CollectionCreateEditResult.releaseLimitReached,
        9,
        CollectionCreateEditResult.releaseLimitReached.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e42': wire});
      expect(value.e42, expected, reason: 'CollectionCreateEditResult');
      expect(declared, wire);
      expect(value.toJson()['e42'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ReleaseAddCollectionResult.collectionNotFound,
        2,
        ReleaseAddCollectionResult.collectionNotFound.value,
      ),
      (
        ReleaseAddCollectionResult.collectionNotOwned,
        3,
        ReleaseAddCollectionResult.collectionNotOwned.value,
      ),
      (
        ReleaseAddCollectionResult.invalidRelease,
        4,
        ReleaseAddCollectionResult.invalidRelease.value,
      ),
      (
        ReleaseAddCollectionResult.releaseAlreadyInCollection,
        5,
        ReleaseAddCollectionResult.releaseAlreadyInCollection.value,
      ),
      (
        ReleaseAddCollectionResult.collectionDeleted,
        6,
        ReleaseAddCollectionResult.collectionDeleted.value,
      ),
      (
        ReleaseAddCollectionResult.releaseLimitReached,
        7,
        ReleaseAddCollectionResult.releaseLimitReached.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e43': wire});
      expect(value.e43, expected, reason: 'ReleaseAddCollectionResult');
      expect(declared, wire);
      expect(value.toJson()['e43'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        CollectionDeleteResult.collectionNotFound,
        2,
        CollectionDeleteResult.collectionNotFound.value,
      ),
      (
        CollectionDeleteResult.collectionNotOwned,
        3,
        CollectionDeleteResult.collectionNotOwned.value,
      ),
      (
        CollectionDeleteResult.collectionDeleted,
        4,
        CollectionDeleteResult.collectionDeleted.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e44': wire});
      expect(value.e44, expected, reason: 'CollectionDeleteResult');
      expect(declared, wire);
      expect(value.toJson()['e44'], wire);
    }
  });
  test('common: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (CommonResult.ok, 0, CommonResult.ok.value),
      (CommonResult.unexpectedError, 1, CommonResult.unexpectedError.value),
      (CommonResult.unauthorized, 401, CommonResult.unauthorized.value),
      (CommonResult.invalidUserAgent, 402, CommonResult.invalidUserAgent.value),
      (CommonResult.permBan, 403, CommonResult.permBan.value),
    ]) {
      final value = EnumFixture.fromJson({'e45': wire});
      expect(value.e45, expected, reason: 'CommonResult');
      expect(declared, wire);
      expect(value.toJson()['e45'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        CommentAddResult.embeddableNotFound,
        2,
        CommentAddResult.embeddableNotFound.value,
      ),
      (
        CommentAddResult.commentNotFound,
        3,
        CommentAddResult.commentNotFound.value,
      ),
      (
        CommentAddResult.profileNotFound,
        4,
        CommentAddResult.profileNotFound.value,
      ),
      (
        CommentAddResult.commentIsTooShort,
        5,
        CommentAddResult.commentIsTooShort.value,
      ),
      (
        CommentAddResult.commentIsTooLong,
        6,
        CommentAddResult.commentIsTooLong.value,
      ),
      (
        CommentAddResult.commentLimitReached,
        7,
        CommentAddResult.commentLimitReached.value,
      ),
      (CommentAddResult.inBlocklist, 8, CommentAddResult.inBlocklist.value),
    ]) {
      final value = EnumFixture.fromJson({'e46': wire});
      expect(value.e46, expected, reason: 'CommentAddResult');
      expect(declared, wire);
      expect(value.toJson()['e46'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        CommentDeleteResult.commentNotFound,
        2,
        CommentDeleteResult.commentNotFound.value,
      ),
      (
        CommentDeleteResult.commentNotOwned,
        3,
        CommentDeleteResult.commentNotOwned.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e47': wire});
      expect(value.e47, expected, reason: 'CommentDeleteResult');
      expect(declared, wire);
      expect(value.toJson()['e47'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        CommentEditResult.commentNotFound,
        2,
        CommentEditResult.commentNotFound.value,
      ),
      (
        CommentEditResult.commentIsTooShort,
        3,
        CommentEditResult.commentIsTooShort.value,
      ),
      (
        CommentEditResult.commentIsTooLong,
        4,
        CommentEditResult.commentIsTooLong.value,
      ),
      (
        CommentEditResult.commentNotOwned,
        5,
        CommentEditResult.commentNotOwned.value,
      ),
      (
        CommentEditResult.commentWasDeleted,
        6,
        CommentEditResult.commentWasDeleted.value,
      ),
      (
        CommentEditResult.embeddableNotFound,
        7,
        CommentEditResult.embeddableNotFound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e48': wire});
      expect(value.e48, expected, reason: 'CommentEditResult');
      expect(declared, wire);
      expect(value.toJson()['e48'], wire);
    }
  });
  test('notification: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (
        DeleteNotificationType.articleComment,
        "article/comment",
        DeleteNotificationType.articleComment.value,
      ),
      (
        DeleteNotificationType.collectionComment,
        "collectionComment",
        DeleteNotificationType.collectionComment.value,
      ),
      (
        DeleteNotificationType.episode,
        "episode",
        DeleteNotificationType.episode.value,
      ),
      (
        DeleteNotificationType.friend,
        "friend",
        DeleteNotificationType.friend.value,
      ),
      (
        DeleteNotificationType.myArticleComment,
        "my/article/comment",
        DeleteNotificationType.myArticleComment.value,
      ),
      (
        DeleteNotificationType.myCollectionComment,
        "my/collection/comment",
        DeleteNotificationType.myCollectionComment.value,
      ),
      (
        DeleteNotificationType.relatedRelease,
        "related/release",
        DeleteNotificationType.relatedRelease.value,
      ),
      (
        DeleteNotificationType.releaseComment,
        "releaseComment",
        DeleteNotificationType.releaseComment.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e49': wire});
      expect(value.e49, expected, reason: 'DeleteNotificationType');
      expect(declared, wire);
      expect(value.toJson()['e49'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        NotificationPreferenceEditType.article,
        "article",
        NotificationPreferenceEditType.article.value,
      ),
      (
        NotificationPreferenceEditType.comment,
        "comment",
        NotificationPreferenceEditType.comment.value,
      ),
      (
        NotificationPreferenceEditType.episode,
        "episode",
        NotificationPreferenceEditType.episode.value,
      ),
      (
        NotificationPreferenceEditType.firstEpisode,
        "episode/first",
        NotificationPreferenceEditType.firstEpisode.value,
      ),
      (
        NotificationPreferenceEditType.myArticleComment,
        "my/article/comment",
        NotificationPreferenceEditType.myArticleComment.value,
      ),
      (
        NotificationPreferenceEditType.myCollectionComment,
        "my/collection/comment",
        NotificationPreferenceEditType.myCollectionComment.value,
      ),
      (
        NotificationPreferenceEditType.relatedRelease,
        "related/release",
        NotificationPreferenceEditType.relatedRelease.value,
      ),
      (
        NotificationPreferenceEditType.reportProcess,
        "report/process",
        NotificationPreferenceEditType.reportProcess.value,
      ),
      (
        NotificationPreferenceEditType.selectedReleases,
        "selected/releases",
        NotificationPreferenceEditType.selectedReleases.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e50': wire});
      expect(value.e50, expected, reason: 'NotificationPreferenceEditType');
      expect(declared, wire);
      expect(value.toJson()['e50'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ProfileFriendNotificationStatus.request,
        "REQUEST",
        ProfileFriendNotificationStatus.request.value,
      ),
      (
        ProfileFriendNotificationStatus.accept,
        "ACCEPT",
        ProfileFriendNotificationStatus.accept.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e51': wire});
      expect(value.e51, expected, reason: 'ProfileFriendNotificationStatus');
      expect(declared, wire);
      expect(value.toJson()['e51'], wire);
    }
  });
  test('preference: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (PrivacyState.all, 0, PrivacyState.all.value),
      (PrivacyState.onlyFriends, 1, PrivacyState.onlyFriends.value),
      (PrivacyState.onlyMe, 2, PrivacyState.onlyMe.value),
    ]) {
      final value = EnumFixture.fromJson({'e52': wire});
      expect(value.e52, expected, reason: 'PrivacyState');
      expect(declared, wire);
      expect(value.toJson()['e52'], wire);
    }
    for (final (expected, wire, declared) in [
      (PrivacyFriendRequestState.all, 0, PrivacyFriendRequestState.all.value),
      (
        PrivacyFriendRequestState.onlyMe,
        1,
        PrivacyFriendRequestState.onlyMe.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e53': wire});
      expect(value.e53, expected, reason: 'PrivacyFriendRequestState');
      expect(declared, wire);
      expect(value.toJson()['e53'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChangeEmailResult.invalidPassword,
        2,
        ChangeEmailResult.invalidPassword.value,
      ),
      (
        ChangeEmailResult.invalidOldEmail,
        3,
        ChangeEmailResult.invalidOldEmail.value,
      ),
      (ChangeEmailResult.invalidEmail, 4, ChangeEmailResult.invalidEmail.value),
      (
        ChangeEmailResult.emailAlreadyTaken,
        5,
        ChangeEmailResult.emailAlreadyTaken.value,
      ),
      (
        ChangeEmailResult.codeAlreadySend,
        6,
        ChangeEmailResult.codeAlreadySend.value,
      ),
      (
        ChangeEmailResult.codeCannotSend,
        7,
        ChangeEmailResult.codeCannotSend.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e54': wire});
      expect(value.e54, expected, reason: 'ChangeEmailResult');
      expect(declared, wire);
      expect(value.toJson()['e54'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChangeEmailResendResult.invalidPassword,
        2,
        ChangeEmailResendResult.invalidPassword.value,
      ),
      (
        ChangeEmailResendResult.invalidOldEmail,
        3,
        ChangeEmailResendResult.invalidOldEmail.value,
      ),
      (
        ChangeEmailResendResult.invalidHash,
        4,
        ChangeEmailResendResult.invalidHash.value,
      ),
      (
        ChangeEmailResendResult.codeCannotSend,
        5,
        ChangeEmailResendResult.codeCannotSend.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e55': wire});
      expect(value.e55, expected, reason: 'ChangeEmailResendResult');
      expect(declared, wire);
      expect(value.toJson()['e55'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChangeEmailVerifyResult.invalidEmail,
        2,
        ChangeEmailVerifyResult.invalidEmail.value,
      ),
      (
        ChangeEmailVerifyResult.codeInvalid,
        3,
        ChangeEmailVerifyResult.codeInvalid.value,
      ),
      (
        ChangeEmailVerifyResult.codeExpired,
        4,
        ChangeEmailVerifyResult.codeExpired.value,
      ),
      (
        ChangeEmailVerifyResult.invalidHash,
        5,
        ChangeEmailVerifyResult.invalidHash.value,
      ),
      (
        ChangeEmailVerifyResult.emailAlreadyTaken,
        6,
        ChangeEmailVerifyResult.emailAlreadyTaken.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e56': wire});
      expect(value.e56, expected, reason: 'ChangeEmailVerifyResult');
      expect(declared, wire);
      expect(value.toJson()['e56'], wire);
    }
    for (final (expected, wire, declared) in [
      (ChangeLoginResult.invalidLogin, 2, ChangeLoginResult.invalidLogin.value),
      (
        ChangeLoginResult.loginAlreadyTaken,
        3,
        ChangeLoginResult.loginAlreadyTaken.value,
      ),
      (ChangeLoginResult.timeLimit, 4, ChangeLoginResult.timeLimit.value),
    ]) {
      final value = EnumFixture.fromJson({'e57': wire});
      expect(value.e57, expected, reason: 'ChangeLoginResult');
      expect(declared, wire);
      expect(value.toJson()['e57'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ChangePasswordResult.invalidPassword,
        2,
        ChangePasswordResult.invalidPassword.value,
      ),
      (
        ChangePasswordResult.invalidCurrentPassword,
        3,
        ChangePasswordResult.invalidCurrentPassword.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e58': wire});
      expect(value.e58, expected, reason: 'ChangePasswordResult');
      expect(declared, wire);
      expect(value.toJson()['e58'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        GoogleBindResult.invalidRequest,
        2,
        GoogleBindResult.invalidRequest.value,
      ),
      (
        GoogleBindResult.googleAlreadyBound,
        3,
        GoogleBindResult.googleAlreadyBound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e59': wire});
      expect(value.e59, expected, reason: 'GoogleBindResult');
      expect(declared, wire);
      expect(value.toJson()['e59'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        GoogleUnbindResult.googleNotBound,
        2,
        GoogleUnbindResult.googleNotBound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e60': wire});
      expect(value.e60, expected, reason: 'GoogleUnbindResult');
      expect(declared, wire);
      expect(value.toJson()['e60'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ProfileSelectThemeResult.themeNotFound,
        2,
        ProfileSelectThemeResult.themeNotFound.value,
      ),
      (
        ProfileSelectThemeResult.themeNotAvaliable,
        3,
        ProfileSelectThemeResult.themeNotAvaliable.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e61': wire});
      expect(value.e61, expected, reason: 'ProfileSelectThemeResult');
      expect(declared, wire);
      expect(value.toJson()['e61'], wire);
    }
    for (final (expected, wire, declared) in [
      (SocialEditResult.invalidVK, 2, SocialEditResult.invalidVK.value),
      (
        SocialEditResult.invalidTelegram,
        3,
        SocialEditResult.invalidTelegram.value,
      ),
      (
        SocialEditResult.invalidInstagram,
        4,
        SocialEditResult.invalidInstagram.value,
      ),
      (SocialEditResult.invalidTiktok, 5, SocialEditResult.invalidTiktok.value),
      (
        SocialEditResult.invalidDiscord,
        6,
        SocialEditResult.invalidDiscord.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e62': wire});
      expect(value.e62, expected, reason: 'SocialEditResult');
      expect(declared, wire);
      expect(value.toJson()['e62'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        TelegramBindResult.invalidRequest,
        2,
        TelegramBindResult.invalidRequest.value,
      ),
      (
        TelegramBindResult.telegramAlreadyBound,
        3,
        TelegramBindResult.telegramAlreadyBound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e63': wire});
      expect(value.e63, expected, reason: 'TelegramBindResult');
      expect(declared, wire);
      expect(value.toJson()['e63'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        TelegramUnbindResult.telegramNotBound,
        2,
        TelegramUnbindResult.telegramNotBound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e64': wire});
      expect(value.e64, expected, reason: 'TelegramUnbindResult');
      expect(declared, wire);
      expect(value.toJson()['e64'], wire);
    }
    for (final (expected, wire, declared) in [
      (VkBindResult.invalidRequest, 2, VkBindResult.invalidRequest.value),
      (VkBindResult.vkAlreadyBound, 3, VkBindResult.vkAlreadyBound.value),
    ]) {
      final value = EnumFixture.fromJson({'e65': wire});
      expect(value.e65, expected, reason: 'VkBindResult');
      expect(declared, wire);
      expect(value.toJson()['e65'], wire);
    }
    for (final (expected, wire, declared) in [
      (VkUnbindResult.vkNotBound, 2, VkUnbindResult.vkNotBound.value),
    ]) {
      final value = EnumFixture.fromJson({'e66': wire});
      expect(value.e66, expected, reason: 'VkUnbindResult');
      expect(declared, wire);
      expect(value.toJson()['e66'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        YandexBindResult.invalidRequest,
        2,
        YandexBindResult.invalidRequest.value,
      ),
      (
        YandexBindResult.yandexAlreadyBound,
        3,
        YandexBindResult.yandexAlreadyBound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e67': wire});
      expect(value.e67, expected, reason: 'YandexBindResult');
      expect(declared, wire);
      expect(value.toJson()['e67'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        YandexUnbindResult.yandexNotBound,
        2,
        YandexUnbindResult.yandexNotBound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e68': wire});
      expect(value.e68, expected, reason: 'YandexUnbindResult');
      expect(declared, wire);
      expect(value.toJson()['e68'], wire);
    }
  });
  test('profile: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (
        FriendStatus.pendingFirstSecond,
        0,
        FriendStatus.pendingFirstSecond.value,
      ),
      (
        FriendStatus.pendingSecondFirst,
        1,
        FriendStatus.pendingSecondFirst.value,
      ),
      (FriendStatus.friend, 2, FriendStatus.friend.value),
    ]) {
      final value = EnumFixture.fromJson({'e69': wire});
      expect(value.e69, expected, reason: 'FriendStatus');
      expect(declared, wire);
      expect(value.toJson()['e69'], wire);
    }
    for (final (expected, wire, declared) in [
      (PrivilegeLevel.none, 0, PrivilegeLevel.none.value),
      (PrivilegeLevel.member, 1, PrivilegeLevel.member.value),
      (PrivilegeLevel.releaser, 2, PrivilegeLevel.releaser.value),
      (PrivilegeLevel.moderator, 3, PrivilegeLevel.moderator.value),
      (PrivilegeLevel.administrator, 4, PrivilegeLevel.administrator.value),
      (PrivilegeLevel.developer, 5, PrivilegeLevel.developer.value),
    ]) {
      final value = EnumFixture.fromJson({'e70': wire});
      expect(value.e70, expected, reason: 'PrivilegeLevel');
      expect(declared, wire);
      expect(value.toJson()['e70'], wire);
    }
    for (final (expected, wire, declared) in [
      (BookmarkType.watching, 1, BookmarkType.watching.value),
      (BookmarkType.inPlans, 2, BookmarkType.inPlans.value),
      (BookmarkType.completed, 3, BookmarkType.completed.value),
      (BookmarkType.holdOn, 4, BookmarkType.holdOn.value),
      (BookmarkType.dropped, 5, BookmarkType.dropped.value),
    ]) {
      final value = EnumFixture.fromJson({'e71': wire});
      expect(value.e71, expected, reason: 'BookmarkType');
      expect(declared, wire);
      expect(value.toJson()['e71'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        BookmarkSortType.newToOldAddTime,
        1,
        BookmarkSortType.newToOldAddTime.value,
      ),
      (
        BookmarkSortType.oldToNewAddTime,
        2,
        BookmarkSortType.oldToNewAddTime.value,
      ),
      (BookmarkSortType.newToOldYear, 3, BookmarkSortType.newToOldYear.value),
      (BookmarkSortType.oldToNewYear, 4, BookmarkSortType.oldToNewYear.value),
      (BookmarkSortType.alpabetInAToZ, 5, BookmarkSortType.alpabetInAToZ.value),
      (BookmarkSortType.alpabetInZToA, 6, BookmarkSortType.alpabetInZToA.value),
    ]) {
      final value = EnumFixture.fromJson({'e72': wire});
      expect(value.e72, expected, reason: 'BookmarkSortType');
      expect(declared, wire);
      expect(value.toJson()['e72'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        SendFriendRequestResult.requestConfirmed,
        2,
        SendFriendRequestResult.requestConfirmed.value,
      ),
      (
        SendFriendRequestResult.requestSent,
        3,
        SendFriendRequestResult.requestSent.value,
      ),
      (
        SendFriendRequestResult.profileWasBlocked,
        4,
        SendFriendRequestResult.profileWasBlocked.value,
      ),
      (
        SendFriendRequestResult.myProfileWasBlocked,
        5,
        SendFriendRequestResult.myProfileWasBlocked.value,
      ),
      (
        SendFriendRequestResult.friendLimitReached,
        6,
        SendFriendRequestResult.friendLimitReached.value,
      ),
      (
        SendFriendRequestResult.targetFriendLimitReached,
        7,
        SendFriendRequestResult.targetFriendLimitReached.value,
      ),
      (
        SendFriendRequestResult.targetFriendRequestsDisallowed,
        8,
        SendFriendRequestResult.targetFriendRequestsDisallowed.value,
      ),
      (
        SendFriendRequestResult.friendRequestLimitReached,
        9,
        SendFriendRequestResult.friendRequestLimitReached.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e73': wire});
      expect(value.e73, expected, reason: 'SendFriendRequestResult');
      expect(declared, wire);
      expect(value.toJson()['e73'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ProfileDeletionResult.alreadyRequested,
        2,
        ProfileDeletionResult.alreadyRequested.value,
      ),
      (ProfileDeletionResult.notFound, 3, ProfileDeletionResult.notFound.value),
      (
        ProfileDeletionResult.alreadyProcessed,
        4,
        ProfileDeletionResult.alreadyProcessed.value,
      ),
      (
        ProfileDeletionResult.inProgress,
        5,
        ProfileDeletionResult.inProgress.value,
      ),
      (
        ProfileDeletionResult.invalidPassword,
        6,
        ProfileDeletionResult.invalidPassword.value,
      ),
      (
        ProfileDeletionResult.unknownError,
        7,
        ProfileDeletionResult.unknownError.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e74': wire});
      expect(value.e74, expected, reason: 'ProfileDeletionResult');
      expect(declared, wire);
      expect(value.toJson()['e74'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        RemoveFriendRequestResult.requestRemoved,
        2,
        RemoveFriendRequestResult.requestRemoved.value,
      ),
      (
        RemoveFriendRequestResult.friendshipRemoved,
        3,
        RemoveFriendRequestResult.friendshipRemoved.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e75': wire});
      expect(value.e75, expected, reason: 'RemoveFriendRequestResult');
      expect(declared, wire);
      expect(value.toJson()['e75'], wire);
    }
    for (final (expected, wire, declared) in [
      (ProfileResult.profileNotFound, 2, ProfileResult.profileNotFound.value),
    ]) {
      final value = EnumFixture.fromJson({'e76': wire});
      expect(value.e76, expected, reason: 'ProfileResult');
      expect(declared, wire);
      expect(value.toJson()['e76'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        AchivementResult.alreadyGranted,
        2,
        AchivementResult.alreadyGranted.value,
      ),
      (
        AchivementResult.achivementNotFound,
        3,
        AchivementResult.achivementNotFound.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e77': wire});
      expect(value.e77, expected, reason: 'AchivementResult');
      expect(declared, wire);
      expect(value.toJson()['e77'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        BlockListAddResult.alreadyInBlockList,
        2,
        BlockListAddResult.alreadyInBlockList.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e78': wire});
      expect(value.e78, expected, reason: 'BlockListAddResult');
      expect(declared, wire);
      expect(value.toJson()['e78'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        BookmarksExportResult.invalidProfileLists,
        2,
        BookmarksExportResult.invalidProfileLists.value,
      ),
      (
        BookmarksExportResult.invalidExtraFields,
        3,
        BookmarksExportResult.invalidExtraFields.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e79': wire});
      expect(value.e79, expected, reason: 'BookmarksExportResult');
      expect(declared, wire);
      expect(value.toJson()['e79'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        BookmarksImportResult.importLimitReached,
        2,
        BookmarksImportResult.importLimitReached.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e80': wire});
      expect(value.e80, expected, reason: 'BookmarksImportResult');
      expect(declared, wire);
      expect(value.toJson()['e80'], wire);
    }
  });
  test('release: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (ReleaseCategory.unknown, 0, ReleaseCategory.unknown.value),
      (ReleaseCategory.series, 1, ReleaseCategory.series.value),
      (ReleaseCategory.movie, 2, ReleaseCategory.movie.value),
      (ReleaseCategory.ova, 3, ReleaseCategory.ova.value),
      (ReleaseCategory.special, 6, ReleaseCategory.special.value),
    ]) {
      final value = EnumFixture.fromJson({'e81': wire});
      expect(value.e81, expected, reason: 'ReleaseCategory');
      expect(declared, wire);
      expect(value.toJson()['e81'], wire);
    }
    for (final (expected, wire, declared) in [
      (VoteType.like, 2, VoteType.like.value),
      (VoteType.dislike, 1, VoteType.dislike.value),
    ]) {
      final value = EnumFixture.fromJson({'e82': wire});
      expect(value.e82, expected, reason: 'VoteType');
      expect(declared, wire);
      expect(value.toJson()['e82'], wire);
    }
    for (final (expected, wire, declared) in [
      (ReleaseStatus.unknown, 0, ReleaseStatus.unknown.value),
      (ReleaseStatus.finished, 1, ReleaseStatus.finished.value),
      (ReleaseStatus.airing, 2, ReleaseStatus.airing.value),
      (ReleaseStatus.announced, 3, ReleaseStatus.announced.value),
    ]) {
      final value = EnumFixture.fromJson({'e83': wire});
      expect(value.e83, expected, reason: 'ReleaseStatus');
      expect(declared, wire);
      expect(value.toJson()['e83'], wire);
    }
    for (final (expected, wire, declared) in [
      (FilterGenresMode.all, 0, FilterGenresMode.all.value),
      (FilterGenresMode.any, 1, FilterGenresMode.any.value),
      (FilterGenresMode.exclude, 2, FilterGenresMode.exclude.value),
    ]) {
      final value = EnumFixture.fromJson({'e84': wire});
      expect(value.e84, expected, reason: 'FilterGenresMode');
      expect(declared, wire);
      expect(value.toJson()['e84'], wire);
    }
    for (final (expected, wire, declared) in [
      (FilterAgeRating.lessThan13, 1, FilterAgeRating.lessThan13.value),
      (FilterAgeRating.moreThan13, 2, FilterAgeRating.moreThan13.value),
      (FilterAgeRating.moreThan26, 3, FilterAgeRating.moreThan26.value),
      (FilterAgeRating.moreThan100, 4, FilterAgeRating.moreThan100.value),
    ]) {
      final value = EnumFixture.fromJson({'e85': wire});
      expect(value.e85, expected, reason: 'FilterAgeRating');
      expect(declared, wire);
      expect(value.toJson()['e85'], wire);
    }
    for (final (expected, wire, declared) in [
      (FilterSort.dateUpdateDesc, 0, FilterSort.dateUpdateDesc.value),
      (FilterSort.gradeDesc, 1, FilterSort.gradeDesc.value),
      (FilterSort.yearDesc, 2, FilterSort.yearDesc.value),
      (FilterSort.popularDesc, 3, FilterSort.popularDesc.value),
      (FilterSort.dateUpdateAsc, 4, FilterSort.dateUpdateAsc.value),
      (FilterSort.gradeAsc, 5, FilterSort.gradeAsc.value),
      (FilterSort.yearAsc, 6, FilterSort.yearAsc.value),
      (FilterSort.popularAsc, 7, FilterSort.popularAsc.value),
    ]) {
      final value = EnumFixture.fromJson({'e86': wire});
      expect(value.e86, expected, reason: 'FilterSort');
      expect(declared, wire);
      expect(value.toJson()['e86'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ReleaseVideoResult.invalidReleaseId,
        2,
        ReleaseVideoResult.invalidReleaseId.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e87': wire});
      expect(value.e87, expected, reason: 'ReleaseVideoResult');
      expect(declared, wire);
      expect(value.toJson()['e87'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        BookmarkExportResult.invalidProfileLists,
        2,
        BookmarkExportResult.invalidProfileLists.value,
      ),
      (
        BookmarkExportResult.invalidExtraFields,
        3,
        BookmarkExportResult.invalidExtraFields.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e88': wire});
      expect(value.e88, expected, reason: 'BookmarkExportResult');
      expect(declared, wire);
      expect(value.toJson()['e88'], wire);
    }
    for (final (expected, wire, declared) in [
      (
        ReleaseVideoAppealResult.invalidReleaseId,
        2,
        ReleaseVideoAppealResult.invalidReleaseId.value,
      ),
      (
        ReleaseVideoAppealResult.invalidTitle,
        3,
        ReleaseVideoAppealResult.invalidTitle.value,
      ),
      (
        ReleaseVideoAppealResult.invalidCategory,
        4,
        ReleaseVideoAppealResult.invalidCategory.value,
      ),
      (
        ReleaseVideoAppealResult.invalidUrl,
        5,
        ReleaseVideoAppealResult.invalidUrl.value,
      ),
      (
        ReleaseVideoAppealResult.appealAlreadySent,
        6,
        ReleaseVideoAppealResult.appealAlreadySent.value,
      ),
      (
        ReleaseVideoAppealResult.tooManyAppeals,
        7,
        ReleaseVideoAppealResult.tooManyAppeals.value,
      ),
      (
        ReleaseVideoAppealResult.appealNotOwned,
        8,
        ReleaseVideoAppealResult.appealNotOwned.value,
      ),
      (
        ReleaseVideoAppealResult.appealNotFound,
        9,
        ReleaseVideoAppealResult.appealNotFound.value,
      ),
      (
        ReleaseVideoAppealResult.appealDisabled,
        10,
        ReleaseVideoAppealResult.appealDisabled.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e89': wire});
      expect(value.e89, expected, reason: 'ReleaseVideoAppealResult');
      expect(declared, wire);
      expect(value.toJson()['e89'], wire);
    }
  });
  test('report: числовые и строковые значения enum', () {
    for (final (expected, wire, declared) in [
      (ReportType.article, "article", ReportType.article.value),
      (
        ReportType.articleComment,
        "comment/article",
        ReportType.articleComment.value,
      ),
      (ReportType.channel, "channel", ReportType.channel.value),
      (ReportType.collection, "collection", ReportType.collection.value),
      (
        ReportType.collectionComment,
        "comment/collection",
        ReportType.collectionComment.value,
      ),
      (ReportType.episode, "episode", ReportType.episode.value),
      (ReportType.profile, "profile", ReportType.profile.value),
      (ReportType.release, "release", ReportType.release.value),
      (
        ReportType.releaseComment,
        "comment/release",
        ReportType.releaseComment.value,
      ),
    ]) {
      final value = EnumFixture.fromJson({'e90': wire});
      expect(value.e90, expected, reason: 'ReportType');
      expect(declared, wire);
      expect(value.toJson()['e90'], wire);
    }
    for (final (expected, wire, declared) in [
      (ReportResult.entityNotFound, 2, ReportResult.entityNotFound.value),
      (ReportResult.invalidMessage, 3, ReportResult.invalidMessage.value),
      (ReportResult.reasonNotFound, 4, ReportResult.reasonNotFound.value),
    ]) {
      final value = EnumFixture.fromJson({'e91': wire});
      expect(value.e91, expected, reason: 'ReportResult');
      expect(declared, wire);
      expect(value.toJson()['e91'], wire);
    }
  });
}
