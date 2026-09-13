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
  test('ArticleResult.articleDeleted wire value', () {
    final value = EnumFixture.fromJson({'e0': 2});
    expect(value.e0, ArticleResult.articleDeleted);
    expect(ArticleResult.articleDeleted.value, 2);
    expect(value.toJson()['e0'], 2);
  });
  test('ArticleCreateEditResult.invalidRepostArticle wire value', () {
    final value = EnumFixture.fromJson({'e1': 2});
    expect(value.e1, ArticleCreateEditResult.invalidRepostArticle);
    expect(ArticleCreateEditResult.invalidRepostArticle.value, 2);
    expect(value.toJson()['e1'], 2);
  });
  test('ArticleCreateEditResult.invalidPayload wire value', () {
    final value = EnumFixture.fromJson({'e1': 3});
    expect(value.e1, ArticleCreateEditResult.invalidPayload);
    expect(ArticleCreateEditResult.invalidPayload.value, 3);
    expect(value.toJson()['e1'], 3);
  });
  test('ArticleCreateEditResult.invalidTags wire value', () {
    final value = EnumFixture.fromJson({'e1': 4});
    expect(value.e1, ArticleCreateEditResult.invalidTags);
    expect(ArticleCreateEditResult.invalidTags.value, 4);
    expect(value.toJson()['e1'], 4);
  });
  test('ArticleCreateEditResult.temporarilyDisabled wire value', () {
    final value = EnumFixture.fromJson({'e1': 5});
    expect(value.e1, ArticleCreateEditResult.temporarilyDisabled);
    expect(ArticleCreateEditResult.temporarilyDisabled.value, 5);
    expect(value.toJson()['e1'], 5);
  });
  test('ArticleCreateEditResult.articleLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e1': 6});
    expect(value.e1, ArticleCreateEditResult.articleLimitReached);
    expect(ArticleCreateEditResult.articleLimitReached.value, 6);
    expect(value.toJson()['e1'], 6);
  });
  test('ArticleCreateEditResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e1': 7});
    expect(value.e1, ArticleCreateEditResult.channelNotFound);
    expect(ArticleCreateEditResult.channelNotFound.value, 7);
    expect(value.toJson()['e1'], 7);
  });
  test('ArticleCreateEditResult.channelNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e1': 8});
    expect(value.e1, ArticleCreateEditResult.channelNotOwned);
    expect(ArticleCreateEditResult.channelNotOwned.value, 8);
    expect(value.toJson()['e1'], 8);
  });
  test('ArticleCreateEditResult.channelCreatorBanned wire value', () {
    final value = EnumFixture.fromJson({'e1': 9});
    expect(value.e1, ArticleCreateEditResult.channelCreatorBanned);
    expect(ArticleCreateEditResult.channelCreatorBanned.value, 9);
    expect(value.toJson()['e1'], 9);
  });
  test('ArticleCreateEditResult.channelBlocked wire value', () {
    final value = EnumFixture.fromJson({'e1': 10});
    expect(value.e1, ArticleCreateEditResult.channelBlocked);
    expect(ArticleCreateEditResult.channelBlocked.value, 10);
    expect(value.toJson()['e1'], 10);
  });
  test('ArticleCreateEditResult.articleNotFound wire value', () {
    final value = EnumFixture.fromJson({'e1': 11});
    expect(value.e1, ArticleCreateEditResult.articleNotFound);
    expect(ArticleCreateEditResult.articleNotFound.value, 11);
    expect(value.toJson()['e1'], 11);
  });
  test('ArticleCreateEditResult.articleDeleted wire value', () {
    final value = EnumFixture.fromJson({'e1': 12});
    expect(value.e1, ArticleCreateEditResult.articleDeleted);
    expect(ArticleCreateEditResult.articleDeleted.value, 12);
    expect(value.toJson()['e1'], 12);
  });
  test('ArticleCreateEditResult.blogNotCreated wire value', () {
    final value = EnumFixture.fromJson({'e1': 13});
    expect(value.e1, ArticleCreateEditResult.blogNotCreated);
    expect(ArticleCreateEditResult.blogNotCreated.value, 13);
    expect(value.toJson()['e1'], 13);
  });
  test('ArticleDeleteResult.articleNotFound wire value', () {
    final value = EnumFixture.fromJson({'e2': 2});
    expect(value.e2, ArticleDeleteResult.articleNotFound);
    expect(ArticleDeleteResult.articleNotFound.value, 2);
    expect(value.toJson()['e2'], 2);
  });
  test('ArticleDeleteResult.articleNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e2': 3});
    expect(value.e2, ArticleDeleteResult.articleNotOwned);
    expect(ArticleDeleteResult.articleNotOwned.value, 3);
    expect(value.toJson()['e2'], 3);
  });
  test('ArticleDeleteResult.articleDeleted wire value', () {
    final value = EnumFixture.fromJson({'e2': 4});
    expect(value.e2, ArticleDeleteResult.articleDeleted);
    expect(ArticleDeleteResult.articleDeleted.value, 4);
    expect(value.toJson()['e2'], 4);
  });
  test('ArticleEditPinnedResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e3': 2});
    expect(value.e3, ArticleEditPinnedResult.channelNotFound);
    expect(ArticleEditPinnedResult.channelNotFound.value, 2);
    expect(value.toJson()['e3'], 2);
  });
  test('ArticleEditPinnedResult.channelNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e3': 3});
    expect(value.e3, ArticleEditPinnedResult.channelNotOwned);
    expect(ArticleEditPinnedResult.channelNotOwned.value, 3);
    expect(value.toJson()['e3'], 3);
  });
  test('ArticleEditPinnedResult.articleNotFound wire value', () {
    final value = EnumFixture.fromJson({'e3': 4});
    expect(value.e3, ArticleEditPinnedResult.articleNotFound);
    expect(ArticleEditPinnedResult.articleNotFound.value, 4);
    expect(value.toJson()['e3'], 4);
  });
  test('ArticleEditPinnedResult.articleDeleted wire value', () {
    final value = EnumFixture.fromJson({'e3': 5});
    expect(value.e3, ArticleEditPinnedResult.articleDeleted);
    expect(ArticleEditPinnedResult.articleDeleted.value, 5);
    expect(value.toJson()['e3'], 5);
  });
  test('ArticleMuteResult.articleNotFound wire value', () {
    final value = EnumFixture.fromJson({'e4': 2});
    expect(value.e4, ArticleMuteResult.articleNotFound);
    expect(ArticleMuteResult.articleNotFound.value, 2);
    expect(value.toJson()['e4'], 2);
  });
  test('ArticleMuteResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e4': 3});
    expect(value.e4, ArticleMuteResult.channelNotFound);
    expect(ArticleMuteResult.channelNotFound.value, 3);
    expect(value.toJson()['e4'], 3);
  });
  test('ArticleMuteResult.channelOwned wire value', () {
    final value = EnumFixture.fromJson({'e4': 4});
    expect(value.e4, ArticleMuteResult.channelOwned);
    expect(ArticleMuteResult.channelOwned.value, 4);
    expect(value.toJson()['e4'], 4);
  });
  test(
    'ArticleSuggestionDeleteResult.articleSuggestionNotFound wire value',
    () {
      final value = EnumFixture.fromJson({'e5': 2});
      expect(value.e5, ArticleSuggestionDeleteResult.articleSuggestionNotFound);
      expect(ArticleSuggestionDeleteResult.articleSuggestionNotFound.value, 2);
      expect(value.toJson()['e5'], 2);
    },
  );
  test(
    'ArticleSuggestionDeleteResult.articleSuggestionNotOwned wire value',
    () {
      final value = EnumFixture.fromJson({'e5': 3});
      expect(value.e5, ArticleSuggestionDeleteResult.articleSuggestionNotOwned);
      expect(ArticleSuggestionDeleteResult.articleSuggestionNotOwned.value, 3);
      expect(value.toJson()['e5'], 3);
    },
  );
  test('ArticleEventEntryPoint.unknown wire value', () {
    final value = EnumFixture.fromJson({'e6': "unknown"});
    expect(value.e6, ArticleEventEntryPoint.unknown);
    expect(ArticleEventEntryPoint.unknown.value, "unknown");
    expect(value.toJson()['e6'], "unknown");
  });
  test('ArticleEventEntryPoint.article wire value', () {
    final value = EnumFixture.fromJson({'e6': "article"});
    expect(value.e6, ArticleEventEntryPoint.article);
    expect(ArticleEventEntryPoint.article.value, "article");
    expect(value.toJson()['e6'], "article");
  });
  test('ArticleEventEntryPoint.channel wire value', () {
    final value = EnumFixture.fromJson({'e6': "channel"});
    expect(value.e6, ArticleEventEntryPoint.channel);
    expect(ArticleEventEntryPoint.channel.value, "channel");
    expect(value.toJson()['e6'], "channel");
  });
  test('ArticleEventEntryPoint.feed wire value', () {
    final value = EnumFixture.fromJson({'e6': "feed"});
    expect(value.e6, ArticleEventEntryPoint.feed);
    expect(ArticleEventEntryPoint.feed.value, "feed");
    expect(value.toJson()['e6'], "feed");
  });
  test('ArticleEventEntryPoint.latest wire value', () {
    final value = EnumFixture.fromJson({'e6': "latest"});
    expect(value.e6, ArticleEventEntryPoint.latest);
    expect(ArticleEventEntryPoint.latest.value, "latest");
    expect(value.toJson()['e6'], "latest");
  });
  test('ArticleEventEntryPoint.search wire value', () {
    final value = EnumFixture.fromJson({'e6': "search"});
    expect(value.e6, ArticleEventEntryPoint.search);
    expect(ArticleEventEntryPoint.search.value, "search");
    expect(value.toJson()['e6'], "search");
  });
  test('ArticleEventType.view wire value', () {
    final value = EnumFixture.fromJson({'e7': "view"});
    expect(value.e7, ArticleEventType.view);
    expect(ArticleEventType.view.value, "view");
    expect(value.toJson()['e7'], "view");
  });
  test('ArticleEventType.open wire value', () {
    final value = EnumFixture.fromJson({'e7': "open"});
    expect(value.e7, ArticleEventType.open);
    expect(ArticleEventType.open.value, "open");
    expect(value.toJson()['e7'], "open");
  });
  test('ArticleEventType.read wire value', () {
    final value = EnumFixture.fromJson({'e7': "read"});
    expect(value.e7, ArticleEventType.read);
    expect(ArticleEventType.read.value, "read");
    expect(value.toJson()['e7'], "read");
  });
  test('CheckLoginResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e8': 2});
    expect(value.e8, CheckLoginResult.invalidLogin);
    expect(CheckLoginResult.invalidLogin.value, 2);
    expect(value.toJson()['e8'], 2);
  });
  test('LoginResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e9': 2});
    expect(value.e9, LoginResult.invalidLogin);
    expect(LoginResult.invalidLogin.value, 2);
    expect(value.toJson()['e9'], 2);
  });
  test('LoginResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e9': 3});
    expect(value.e9, LoginResult.invalidPassword);
    expect(LoginResult.invalidPassword.value, 3);
    expect(value.toJson()['e9'], 3);
  });
  test('RegisterResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e10': 2});
    expect(value.e10, RegisterResult.invalidLogin);
    expect(RegisterResult.invalidLogin.value, 2);
    expect(value.toJson()['e10'], 2);
  });
  test('RegisterResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e10': 3});
    expect(value.e10, RegisterResult.invalidEmail);
    expect(RegisterResult.invalidEmail.value, 3);
    expect(value.toJson()['e10'], 3);
  });
  test('RegisterResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e10': 4});
    expect(value.e10, RegisterResult.invalidPassword);
    expect(RegisterResult.invalidPassword.value, 4);
    expect(value.toJson()['e10'], 4);
  });
  test('RegisterResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e10': 5});
    expect(value.e10, RegisterResult.loginAlreadyTaken);
    expect(RegisterResult.loginAlreadyTaken.value, 5);
    expect(value.toJson()['e10'], 5);
  });
  test('RegisterResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e10': 6});
    expect(value.e10, RegisterResult.emailAlreadyTaken);
    expect(RegisterResult.emailAlreadyTaken.value, 6);
    expect(value.toJson()['e10'], 6);
  });
  test('RegisterResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e10': 7});
    expect(value.e10, RegisterResult.codeAlreadySend);
    expect(RegisterResult.codeAlreadySend.value, 7);
    expect(value.toJson()['e10'], 7);
  });
  test('RegisterResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e10': 8});
    expect(value.e10, RegisterResult.codeCannotSend);
    expect(RegisterResult.codeCannotSend.value, 8);
    expect(value.toJson()['e10'], 8);
  });
  test('RegisterResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e10': 9});
    expect(value.e10, RegisterResult.emailServiceDisallowed);
    expect(RegisterResult.emailServiceDisallowed.value, 9);
    expect(value.toJson()['e10'], 9);
  });
  test('RegisterResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e10': 10});
    expect(value.e10, RegisterResult.tooManyRegistrations);
    expect(RegisterResult.tooManyRegistrations.value, 10);
    expect(value.toJson()['e10'], 10);
  });
  test('RegisterVerifyResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e11': 2});
    expect(value.e11, RegisterVerifyResult.invalidLogin);
    expect(RegisterVerifyResult.invalidLogin.value, 2);
    expect(value.toJson()['e11'], 2);
  });
  test('RegisterVerifyResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e11': 3});
    expect(value.e11, RegisterVerifyResult.invalidEmail);
    expect(RegisterVerifyResult.invalidEmail.value, 3);
    expect(value.toJson()['e11'], 3);
  });
  test('RegisterVerifyResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e11': 4});
    expect(value.e11, RegisterVerifyResult.invalidPassword);
    expect(RegisterVerifyResult.invalidPassword.value, 4);
    expect(value.toJson()['e11'], 4);
  });
  test('RegisterVerifyResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e11': 5});
    expect(value.e11, RegisterVerifyResult.loginAlreadyTaken);
    expect(RegisterVerifyResult.loginAlreadyTaken.value, 5);
    expect(value.toJson()['e11'], 5);
  });
  test('RegisterVerifyResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e11': 6});
    expect(value.e11, RegisterVerifyResult.emailAlreadyTaken);
    expect(RegisterVerifyResult.emailAlreadyTaken.value, 6);
    expect(value.toJson()['e11'], 6);
  });
  test('RegisterVerifyResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e11': 7});
    expect(value.e11, RegisterVerifyResult.codeAlreadySend);
    expect(RegisterVerifyResult.codeAlreadySend.value, 7);
    expect(value.toJson()['e11'], 7);
  });
  test('RegisterVerifyResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e11': 8});
    expect(value.e11, RegisterVerifyResult.codeCannotSend);
    expect(RegisterVerifyResult.codeCannotSend.value, 8);
    expect(value.toJson()['e11'], 8);
  });
  test('RegisterVerifyResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e11': 9});
    expect(value.e11, RegisterVerifyResult.invalidHash);
    expect(RegisterVerifyResult.invalidHash.value, 9);
    expect(value.toJson()['e11'], 9);
  });
  test('RegisterVerifyResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e11': 10});
    expect(value.e11, RegisterVerifyResult.emailServiceDisallowed);
    expect(RegisterVerifyResult.emailServiceDisallowed.value, 10);
    expect(value.toJson()['e11'], 10);
  });
  test('RegisterVerifyResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e11': 11});
    expect(value.e11, RegisterVerifyResult.tooManyRegistrations);
    expect(RegisterVerifyResult.tooManyRegistrations.value, 11);
    expect(value.toJson()['e11'], 11);
  });
  test('RestorePasswordResult.profileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e12': 2});
    expect(value.e12, RestorePasswordResult.profileNotFound);
    expect(RestorePasswordResult.profileNotFound.value, 2);
    expect(value.toJson()['e12'], 2);
  });
  test('RestorePasswordResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e12': 3});
    expect(value.e12, RestorePasswordResult.codeAlreadySend);
    expect(RestorePasswordResult.codeAlreadySend.value, 3);
    expect(value.toJson()['e12'], 3);
  });
  test('RestorePasswordResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e12': 4});
    expect(value.e12, RestorePasswordResult.codeCannotSend);
    expect(RestorePasswordResult.codeCannotSend.value, 4);
    expect(value.toJson()['e12'], 4);
  });
  test('RestorePasswordVerifyResult.profileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e13': 2});
    expect(value.e13, RestorePasswordVerifyResult.profileNotFound);
    expect(RestorePasswordVerifyResult.profileNotFound.value, 2);
    expect(value.toJson()['e13'], 2);
  });
  test('RestorePasswordVerifyResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e13': 3});
    expect(value.e13, RestorePasswordVerifyResult.invalidPassword);
    expect(RestorePasswordVerifyResult.invalidPassword.value, 3);
    expect(value.toJson()['e13'], 3);
  });
  test('RestorePasswordVerifyResult.codeInvalid wire value', () {
    final value = EnumFixture.fromJson({'e13': 4});
    expect(value.e13, RestorePasswordVerifyResult.codeInvalid);
    expect(RestorePasswordVerifyResult.codeInvalid.value, 4);
    expect(value.toJson()['e13'], 4);
  });
  test('RestorePasswordVerifyResult.codeExpired wire value', () {
    final value = EnumFixture.fromJson({'e13': 5});
    expect(value.e13, RestorePasswordVerifyResult.codeExpired);
    expect(RestorePasswordVerifyResult.codeExpired.value, 5);
    expect(value.toJson()['e13'], 5);
  });
  test('RestorePasswordVerifyResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e13': 6});
    expect(value.e13, RestorePasswordVerifyResult.invalidHash);
    expect(RestorePasswordVerifyResult.invalidHash.value, 6);
    expect(value.toJson()['e13'], 6);
  });
  test('RestoreResult.profileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e14': 2});
    expect(value.e14, RestoreResult.profileNotFound);
    expect(RestoreResult.profileNotFound.value, 2);
    expect(value.toJson()['e14'], 2);
  });
  test('RestoreResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e14': 3});
    expect(value.e14, RestoreResult.codeAlreadySend);
    expect(RestoreResult.codeAlreadySend.value, 3);
    expect(value.toJson()['e14'], 3);
  });
  test('RestoreResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e14': 4});
    expect(value.e14, RestoreResult.codeCannotSend);
    expect(RestoreResult.codeCannotSend.value, 4);
    expect(value.toJson()['e14'], 4);
  });
  test('ResendResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e15': 2});
    expect(value.e15, ResendResult.invalidLogin);
    expect(ResendResult.invalidLogin.value, 2);
    expect(value.toJson()['e15'], 2);
  });
  test('ResendResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e15': 3});
    expect(value.e15, ResendResult.invalidEmail);
    expect(ResendResult.invalidEmail.value, 3);
    expect(value.toJson()['e15'], 3);
  });
  test('ResendResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e15': 4});
    expect(value.e15, ResendResult.invalidPassword);
    expect(ResendResult.invalidPassword.value, 4);
    expect(value.toJson()['e15'], 4);
  });
  test('ResendResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e15': 5});
    expect(value.e15, ResendResult.invalidHash);
    expect(ResendResult.invalidHash.value, 5);
    expect(value.toJson()['e15'], 5);
  });
  test('ResendResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e15': 6});
    expect(value.e15, ResendResult.codeCannotSend);
    expect(ResendResult.codeCannotSend.value, 6);
    expect(value.toJson()['e15'], 6);
  });
  test('RestoreResendResult.profileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e16': 2});
    expect(value.e16, RestoreResendResult.profileNotFound);
    expect(RestoreResendResult.profileNotFound.value, 2);
    expect(value.toJson()['e16'], 2);
  });
  test('RestoreResendResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e16': 3});
    expect(value.e16, RestoreResendResult.invalidHash);
    expect(RestoreResendResult.invalidHash.value, 3);
    expect(value.toJson()['e16'], 3);
  });
  test('RestoreResendResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e16': 4});
    expect(value.e16, RestoreResendResult.codeCannotSend);
    expect(RestoreResendResult.codeCannotSend.value, 4);
    expect(value.toJson()['e16'], 4);
  });
  test('RestoreVerifyResult.profileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e17': 2});
    expect(value.e17, RestoreVerifyResult.profileNotFound);
    expect(RestoreVerifyResult.profileNotFound.value, 2);
    expect(value.toJson()['e17'], 2);
  });
  test('RestoreVerifyResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e17': 3});
    expect(value.e17, RestoreVerifyResult.invalidPassword);
    expect(RestoreVerifyResult.invalidPassword.value, 3);
    expect(value.toJson()['e17'], 3);
  });
  test('RestoreVerifyResult.codeInvalid wire value', () {
    final value = EnumFixture.fromJson({'e17': 4});
    expect(value.e17, RestoreVerifyResult.codeInvalid);
    expect(RestoreVerifyResult.codeInvalid.value, 4);
    expect(value.toJson()['e17'], 4);
  });
  test('RestoreVerifyResult.codeExpired wire value', () {
    final value = EnumFixture.fromJson({'e17': 5});
    expect(value.e17, RestoreVerifyResult.codeExpired);
    expect(RestoreVerifyResult.codeExpired.value, 5);
    expect(value.toJson()['e17'], 5);
  });
  test('RestoreVerifyResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e17': 6});
    expect(value.e17, RestoreVerifyResult.invalidHash);
    expect(RestoreVerifyResult.invalidHash.value, 6);
    expect(value.toJson()['e17'], 6);
  });
  test('SignInResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e18': 2});
    expect(value.e18, SignInResult.invalidLogin);
    expect(SignInResult.invalidLogin.value, 2);
    expect(value.toJson()['e18'], 2);
  });
  test('SignInResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e18': 3});
    expect(value.e18, SignInResult.invalidPassword);
    expect(SignInResult.invalidPassword.value, 3);
    expect(value.toJson()['e18'], 3);
  });
  test('GoogleResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e19': 2});
    expect(value.e19, GoogleResult.invalidRequest);
    expect(GoogleResult.invalidRequest.value, 2);
    expect(value.toJson()['e19'], 2);
  });
  test('GoogleResult.notRegistered wire value', () {
    final value = EnumFixture.fromJson({'e19': 3});
    expect(value.e19, GoogleResult.notRegistered);
    expect(GoogleResult.notRegistered.value, 3);
    expect(value.toJson()['e19'], 3);
  });
  test('GoogleResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e19': 4});
    expect(value.e19, GoogleResult.invalidLogin);
    expect(GoogleResult.invalidLogin.value, 4);
    expect(value.toJson()['e19'], 4);
  });
  test('GoogleResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e19': 5});
    expect(value.e19, GoogleResult.invalidEmail);
    expect(GoogleResult.invalidEmail.value, 5);
    expect(value.toJson()['e19'], 5);
  });
  test('GoogleResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e19': 6});
    expect(value.e19, GoogleResult.loginAlreadyTaken);
    expect(GoogleResult.loginAlreadyTaken.value, 6);
    expect(value.toJson()['e19'], 6);
  });
  test('GoogleResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e19': 7});
    expect(value.e19, GoogleResult.emailAlreadyTaken);
    expect(GoogleResult.emailAlreadyTaken.value, 7);
    expect(value.toJson()['e19'], 7);
  });
  test('GoogleResult.emailChanged wire value', () {
    final value = EnumFixture.fromJson({'e19': 8});
    expect(value.e19, GoogleResult.emailChanged);
    expect(GoogleResult.emailChanged.value, 8);
    expect(value.toJson()['e19'], 8);
  });
  test('GoogleResult.emailChangedAndCodeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e19': 9});
    expect(value.e19, GoogleResult.emailChangedAndCodeAlreadySend);
    expect(GoogleResult.emailChangedAndCodeAlreadySend.value, 9);
    expect(value.toJson()['e19'], 9);
  });
  test('GoogleResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e19': 10});
    expect(value.e19, GoogleResult.emailServiceDisallowed);
    expect(GoogleResult.emailServiceDisallowed.value, 10);
    expect(value.toJson()['e19'], 10);
  });
  test('GoogleResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e19': 11});
    expect(value.e19, GoogleResult.tooManyRegistrations);
    expect(GoogleResult.tooManyRegistrations.value, 11);
    expect(value.toJson()['e19'], 11);
  });
  test('TelegramResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e20': 2});
    expect(value.e20, TelegramResult.invalidRequest);
    expect(TelegramResult.invalidRequest.value, 2);
    expect(value.toJson()['e20'], 2);
  });
  test('TelegramResult.notRegistered wire value', () {
    final value = EnumFixture.fromJson({'e20': 3});
    expect(value.e20, TelegramResult.notRegistered);
    expect(TelegramResult.notRegistered.value, 3);
    expect(value.toJson()['e20'], 3);
  });
  test('TelegramResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e20': 4});
    expect(value.e20, TelegramResult.invalidLogin);
    expect(TelegramResult.invalidLogin.value, 4);
    expect(value.toJson()['e20'], 4);
  });
  test('TelegramResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e20': 5});
    expect(value.e20, TelegramResult.invalidEmail);
    expect(TelegramResult.invalidEmail.value, 5);
    expect(value.toJson()['e20'], 5);
  });
  test('TelegramResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e20': 6});
    expect(value.e20, TelegramResult.loginAlreadyTaken);
    expect(TelegramResult.loginAlreadyTaken.value, 6);
    expect(value.toJson()['e20'], 6);
  });
  test('TelegramResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e20': 7});
    expect(value.e20, TelegramResult.emailAlreadyTaken);
    expect(TelegramResult.emailAlreadyTaken.value, 7);
    expect(value.toJson()['e20'], 7);
  });
  test('TelegramResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e20': 8});
    expect(value.e20, TelegramResult.codeAlreadySend);
    expect(TelegramResult.codeAlreadySend.value, 8);
    expect(value.toJson()['e20'], 8);
  });
  test('TelegramResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e20': 9});
    expect(value.e20, TelegramResult.emailServiceDisallowed);
    expect(TelegramResult.emailServiceDisallowed.value, 9);
    expect(value.toJson()['e20'], 9);
  });
  test('TelegramResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e20': 10});
    expect(value.e20, TelegramResult.tooManyRegistrations);
    expect(TelegramResult.tooManyRegistrations.value, 10);
    expect(value.toJson()['e20'], 10);
  });
  test('VkResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e21': 2});
    expect(value.e21, VkResult.invalidRequest);
    expect(VkResult.invalidRequest.value, 2);
    expect(value.toJson()['e21'], 2);
  });
  test('VkResult.notRegistered wire value', () {
    final value = EnumFixture.fromJson({'e21': 3});
    expect(value.e21, VkResult.notRegistered);
    expect(VkResult.notRegistered.value, 3);
    expect(value.toJson()['e21'], 3);
  });
  test('VkResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e21': 4});
    expect(value.e21, VkResult.invalidLogin);
    expect(VkResult.invalidLogin.value, 4);
    expect(value.toJson()['e21'], 4);
  });
  test('VkResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e21': 5});
    expect(value.e21, VkResult.invalidEmail);
    expect(VkResult.invalidEmail.value, 5);
    expect(value.toJson()['e21'], 5);
  });
  test('VkResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e21': 6});
    expect(value.e21, VkResult.loginAlreadyTaken);
    expect(VkResult.loginAlreadyTaken.value, 6);
    expect(value.toJson()['e21'], 6);
  });
  test('VkResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e21': 7});
    expect(value.e21, VkResult.emailAlreadyTaken);
    expect(VkResult.emailAlreadyTaken.value, 7);
    expect(value.toJson()['e21'], 7);
  });
  test('VkResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e21': 8});
    expect(value.e21, VkResult.codeAlreadySend);
    expect(VkResult.codeAlreadySend.value, 8);
    expect(value.toJson()['e21'], 8);
  });
  test('VkResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e21': 9});
    expect(value.e21, VkResult.emailServiceDisallowed);
    expect(VkResult.emailServiceDisallowed.value, 9);
    expect(value.toJson()['e21'], 9);
  });
  test('VkResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e21': 10});
    expect(value.e21, VkResult.tooManyRegistrations);
    expect(VkResult.tooManyRegistrations.value, 10);
    expect(value.toJson()['e21'], 10);
  });
  test('YandexResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e22': 2});
    expect(value.e22, YandexResult.invalidRequest);
    expect(YandexResult.invalidRequest.value, 2);
    expect(value.toJson()['e22'], 2);
  });
  test('YandexResult.notRegistered wire value', () {
    final value = EnumFixture.fromJson({'e22': 3});
    expect(value.e22, YandexResult.notRegistered);
    expect(YandexResult.notRegistered.value, 3);
    expect(value.toJson()['e22'], 3);
  });
  test('YandexResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e22': 4});
    expect(value.e22, YandexResult.invalidLogin);
    expect(YandexResult.invalidLogin.value, 4);
    expect(value.toJson()['e22'], 4);
  });
  test('YandexResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e22': 5});
    expect(value.e22, YandexResult.invalidEmail);
    expect(YandexResult.invalidEmail.value, 5);
    expect(value.toJson()['e22'], 5);
  });
  test('YandexResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e22': 6});
    expect(value.e22, YandexResult.loginAlreadyTaken);
    expect(YandexResult.loginAlreadyTaken.value, 6);
    expect(value.toJson()['e22'], 6);
  });
  test('YandexResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e22': 7});
    expect(value.e22, YandexResult.emailAlreadyTaken);
    expect(YandexResult.emailAlreadyTaken.value, 7);
    expect(value.toJson()['e22'], 7);
  });
  test('YandexResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e22': 8});
    expect(value.e22, YandexResult.codeAlreadySend);
    expect(YandexResult.codeAlreadySend.value, 8);
    expect(value.toJson()['e22'], 8);
  });
  test('YandexResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e22': 9});
    expect(value.e22, YandexResult.emailServiceDisallowed);
    expect(YandexResult.emailServiceDisallowed.value, 9);
    expect(value.toJson()['e22'], 9);
  });
  test('YandexResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e22': 10});
    expect(value.e22, YandexResult.tooManyRegistrations);
    expect(YandexResult.tooManyRegistrations.value, 10);
    expect(value.toJson()['e22'], 10);
  });
  test('SignUpResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e23': 2});
    expect(value.e23, SignUpResult.invalidLogin);
    expect(SignUpResult.invalidLogin.value, 2);
    expect(value.toJson()['e23'], 2);
  });
  test('SignUpResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e23': 3});
    expect(value.e23, SignUpResult.invalidEmail);
    expect(SignUpResult.invalidEmail.value, 3);
    expect(value.toJson()['e23'], 3);
  });
  test('SignUpResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e23': 4});
    expect(value.e23, SignUpResult.invalidPassword);
    expect(SignUpResult.invalidPassword.value, 4);
    expect(value.toJson()['e23'], 4);
  });
  test('SignUpResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e23': 5});
    expect(value.e23, SignUpResult.loginAlreadyTaken);
    expect(SignUpResult.loginAlreadyTaken.value, 5);
    expect(value.toJson()['e23'], 5);
  });
  test('SignUpResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e23': 6});
    expect(value.e23, SignUpResult.emailAlreadyTaken);
    expect(SignUpResult.emailAlreadyTaken.value, 6);
    expect(value.toJson()['e23'], 6);
  });
  test('SignUpResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e23': 7});
    expect(value.e23, SignUpResult.codeAlreadySend);
    expect(SignUpResult.codeAlreadySend.value, 7);
    expect(value.toJson()['e23'], 7);
  });
  test('SignUpResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e23': 8});
    expect(value.e23, SignUpResult.codeCannotSend);
    expect(SignUpResult.codeCannotSend.value, 8);
    expect(value.toJson()['e23'], 8);
  });
  test('SignUpResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e23': 9});
    expect(value.e23, SignUpResult.emailServiceDisallowed);
    expect(SignUpResult.emailServiceDisallowed.value, 9);
    expect(value.toJson()['e23'], 9);
  });
  test('SignUpResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e23': 10});
    expect(value.e23, SignUpResult.tooManyRegistrations);
    expect(SignUpResult.tooManyRegistrations.value, 10);
    expect(value.toJson()['e23'], 10);
  });
  test('VerifyResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e24': 2});
    expect(value.e24, VerifyResult.invalidLogin);
    expect(VerifyResult.invalidLogin.value, 2);
    expect(value.toJson()['e24'], 2);
  });
  test('VerifyResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e24': 3});
    expect(value.e24, VerifyResult.invalidEmail);
    expect(VerifyResult.invalidEmail.value, 3);
    expect(value.toJson()['e24'], 3);
  });
  test('VerifyResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e24': 4});
    expect(value.e24, VerifyResult.invalidPassword);
    expect(VerifyResult.invalidPassword.value, 4);
    expect(value.toJson()['e24'], 4);
  });
  test('VerifyResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e24': 5});
    expect(value.e24, VerifyResult.loginAlreadyTaken);
    expect(VerifyResult.loginAlreadyTaken.value, 5);
    expect(value.toJson()['e24'], 5);
  });
  test('VerifyResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e24': 6});
    expect(value.e24, VerifyResult.emailAlreadyTaken);
    expect(VerifyResult.emailAlreadyTaken.value, 6);
    expect(value.toJson()['e24'], 6);
  });
  test('VerifyResult.codeInvalid wire value', () {
    final value = EnumFixture.fromJson({'e24': 7});
    expect(value.e24, VerifyResult.codeInvalid);
    expect(VerifyResult.codeInvalid.value, 7);
    expect(value.toJson()['e24'], 7);
  });
  test('VerifyResult.codeExpired wire value', () {
    final value = EnumFixture.fromJson({'e24': 8});
    expect(value.e24, VerifyResult.codeExpired);
    expect(VerifyResult.codeExpired.value, 8);
    expect(value.toJson()['e24'], 8);
  });
  test('VerifyResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e24': 9});
    expect(value.e24, VerifyResult.invalidHash);
    expect(VerifyResult.invalidHash.value, 9);
    expect(value.toJson()['e24'], 9);
  });
  test('VerifyResult.emailServiceDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e24': 10});
    expect(value.e24, VerifyResult.emailServiceDisallowed);
    expect(VerifyResult.emailServiceDisallowed.value, 10);
    expect(value.toJson()['e24'], 10);
  });
  test('VerifyResult.tooManyRegistrations wire value', () {
    final value = EnumFixture.fromJson({'e24': 11});
    expect(value.e24, VerifyResult.tooManyRegistrations);
    expect(VerifyResult.tooManyRegistrations.value, 11);
    expect(value.toJson()['e24'], 11);
  });
  test('ChannelWidgetSort.chronology wire value', () {
    final value = EnumFixture.fromJson({'e25': 0});
    expect(value.e25, ChannelWidgetSort.chronology);
    expect(ChannelWidgetSort.chronology.value, 0);
    expect(value.toJson()['e25'], 0);
  });
  test('ChannelWidgetSort.popularity wire value', () {
    final value = EnumFixture.fromJson({'e25': 1});
    expect(value.e25, ChannelWidgetSort.popularity);
    expect(ChannelWidgetSort.popularity.value, 1);
    expect(value.toJson()['e25'], 1);
  });
  test('ChannelWidgetPopularityPeriod.hours24 wire value', () {
    final value = EnumFixture.fromJson({'e26': 0});
    expect(value.e26, ChannelWidgetPopularityPeriod.hours24);
    expect(ChannelWidgetPopularityPeriod.hours24.value, 0);
    expect(value.toJson()['e26'], 0);
  });
  test('ChannelWidgetPopularityPeriod.days3 wire value', () {
    final value = EnumFixture.fromJson({'e26': 1});
    expect(value.e26, ChannelWidgetPopularityPeriod.days3);
    expect(ChannelWidgetPopularityPeriod.days3.value, 1);
    expect(value.toJson()['e26'], 1);
  });
  test('ChannelWidgetPopularityPeriod.days7 wire value', () {
    final value = EnumFixture.fromJson({'e26': 2});
    expect(value.e26, ChannelWidgetPopularityPeriod.days7);
    expect(ChannelWidgetPopularityPeriod.days7.value, 2);
    expect(value.toJson()['e26'], 2);
  });
  test('ChannelProfilePermission.member wire value', () {
    final value = EnumFixture.fromJson({'e27': 0});
    expect(value.e27, ChannelProfilePermission.member);
    expect(ChannelProfilePermission.member.value, 0);
    expect(value.toJson()['e27'], 0);
  });
  test('ChannelProfilePermission.administrator wire value', () {
    final value = EnumFixture.fromJson({'e27': 1});
    expect(value.e27, ChannelProfilePermission.administrator);
    expect(ChannelProfilePermission.administrator.value, 1);
    expect(value.toJson()['e27'], 1);
  });
  test('ChannelProfilePermission.creator wire value', () {
    final value = EnumFixture.fromJson({'e27': 2});
    expect(value.e27, ChannelProfilePermission.creator);
    expect(ChannelProfilePermission.creator.value, 2);
    expect(value.toJson()['e27'], 2);
  });
  test('ChannelUploadCoverAvatarResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e28': 2});
    expect(value.e28, ChannelUploadCoverAvatarResult.channelNotFound);
    expect(ChannelUploadCoverAvatarResult.channelNotFound.value, 2);
    expect(value.toJson()['e28'], 2);
  });
  test('ChannelUploadCoverAvatarResult.channelNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e28': 3});
    expect(value.e28, ChannelUploadCoverAvatarResult.channelNotOwned);
    expect(ChannelUploadCoverAvatarResult.channelNotOwned.value, 3);
    expect(value.toJson()['e28'], 3);
  });
  test('ChannelBlockResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e29': 2});
    expect(value.e29, ChannelBlockResult.channelNotFound);
    expect(ChannelBlockResult.channelNotFound.value, 2);
    expect(value.toJson()['e29'], 2);
  });
  test('ChannelBlockResult.channelNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e29': 3});
    expect(value.e29, ChannelBlockResult.channelNotOwned);
    expect(ChannelBlockResult.channelNotOwned.value, 3);
    expect(value.toJson()['e29'], 3);
  });
  test('ChannelBlockResult.blockNotFound wire value', () {
    final value = EnumFixture.fromJson({'e29': 4});
    expect(value.e29, ChannelBlockResult.blockNotFound);
    expect(ChannelBlockResult.blockNotFound.value, 4);
    expect(value.toJson()['e29'], 4);
  });
  test('ChannelResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e30': 2});
    expect(value.e30, ChannelResult.channelNotFound);
    expect(ChannelResult.channelNotFound.value, 2);
    expect(value.toJson()['e30'], 2);
  });
  test('ChannelsFilterSort.none wire value', () {
    final value = EnumFixture.fromJson({'e31': 0});
    expect(value.e31, ChannelsFilterSort.none);
    expect(ChannelsFilterSort.none.value, 0);
    expect(value.toJson()['e31'], 0);
  });
  test('ChannelsFilterSort.subscriberCount wire value', () {
    final value = EnumFixture.fromJson({'e31': 1});
    expect(value.e31, ChannelsFilterSort.subscriberCount);
    expect(ChannelsFilterSort.subscriberCount.value, 1);
    expect(value.toJson()['e31'], 1);
  });
  test('ChannelCreateEditResult.invalidTitle wire value', () {
    final value = EnumFixture.fromJson({'e32': 2});
    expect(value.e32, ChannelCreateEditResult.invalidTitle);
    expect(ChannelCreateEditResult.invalidTitle.value, 2);
    expect(value.toJson()['e32'], 2);
  });
  test('ChannelCreateEditResult.invalidDescription wire value', () {
    final value = EnumFixture.fromJson({'e32': 3});
    expect(value.e32, ChannelCreateEditResult.invalidDescription);
    expect(ChannelCreateEditResult.invalidDescription.value, 3);
    expect(value.toJson()['e32'], 3);
  });
  test('ChannelCreateEditResult.channelLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e32': 4});
    expect(value.e32, ChannelCreateEditResult.channelLimitReached);
    expect(ChannelCreateEditResult.channelLimitReached.value, 4);
    expect(value.toJson()['e32'], 4);
  });
  test('ChannelCreateEditResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e32': 5});
    expect(value.e32, ChannelCreateEditResult.channelNotFound);
    expect(ChannelCreateEditResult.channelNotFound.value, 5);
    expect(value.toJson()['e32'], 5);
  });
  test('ChannelCreateEditResult.channelNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e32': 6});
    expect(value.e32, ChannelCreateEditResult.channelNotOwned);
    expect(ChannelCreateEditResult.channelNotOwned.value, 6);
    expect(value.toJson()['e32'], 6);
  });
  test('ChannelCreateEditResult.channelCreatorBanned wire value', () {
    final value = EnumFixture.fromJson({'e32': 7});
    expect(value.e32, ChannelCreateEditResult.channelCreatorBanned);
    expect(ChannelCreateEditResult.channelCreatorBanned.value, 7);
    expect(value.toJson()['e32'], 7);
  });
  test('BlogCreateResult.reputationLevelTooLow wire value', () {
    final value = EnumFixture.fromJson({'e33': 2});
    expect(value.e33, BlogCreateResult.reputationLevelTooLow);
    expect(BlogCreateResult.reputationLevelTooLow.value, 2);
    expect(value.toJson()['e33'], 2);
  });
  test('EditorAvailableResult.temporarilyDisabled wire value', () {
    final value = EnumFixture.fromJson({'e34': 2});
    expect(value.e34, EditorAvailableResult.temporarilyDisabled);
    expect(EditorAvailableResult.temporarilyDisabled.value, 2);
    expect(value.toJson()['e34'], 2);
  });
  test('EditorAvailableResult.articleLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e34': 3});
    expect(value.e34, EditorAvailableResult.articleLimitReached);
    expect(EditorAvailableResult.articleLimitReached.value, 3);
    expect(value.toJson()['e34'], 3);
  });
  test('EditorAvailableResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e34': 4});
    expect(value.e34, EditorAvailableResult.channelNotFound);
    expect(EditorAvailableResult.channelNotFound.value, 4);
    expect(value.toJson()['e34'], 4);
  });
  test('EditorAvailableResult.channelNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e34': 5});
    expect(value.e34, EditorAvailableResult.channelNotOwned);
    expect(EditorAvailableResult.channelNotOwned.value, 5);
    expect(value.toJson()['e34'], 5);
  });
  test('EditorAvailableResult.channelCreatorBanned wire value', () {
    final value = EnumFixture.fromJson({'e34': 6});
    expect(value.e34, EditorAvailableResult.channelCreatorBanned);
    expect(EditorAvailableResult.channelCreatorBanned.value, 6);
    expect(value.toJson()['e34'], 6);
  });
  test('EditorAvailableResult.blogNotCreated wire value', () {
    final value = EnumFixture.fromJson({'e34': 7});
    expect(value.e34, EditorAvailableResult.blogNotCreated);
    expect(EditorAvailableResult.blogNotCreated.value, 7);
    expect(value.toJson()['e34'], 7);
  });
  test('ChannelPermissionManageResult.permissionInvalid wire value', () {
    final value = EnumFixture.fromJson({'e35': 2});
    expect(value.e35, ChannelPermissionManageResult.permissionInvalid);
    expect(ChannelPermissionManageResult.permissionInvalid.value, 2);
    expect(value.toJson()['e35'], 2);
  });
  test('ChannelPermissionManageResult.targetProfileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e35': 3});
    expect(value.e35, ChannelPermissionManageResult.targetProfileNotFound);
    expect(ChannelPermissionManageResult.targetProfileNotFound.value, 3);
    expect(value.toJson()['e35'], 3);
  });
  test('ChannelPermissionManageResult.channelNotFound wire value', () {
    final value = EnumFixture.fromJson({'e35': 4});
    expect(value.e35, ChannelPermissionManageResult.channelNotFound);
    expect(ChannelPermissionManageResult.channelNotFound.value, 4);
    expect(value.toJson()['e35'], 4);
  });
  test('ChannelPermissionManageResult.channelNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e35': 5});
    expect(value.e35, ChannelPermissionManageResult.channelNotOwned);
    expect(ChannelPermissionManageResult.channelNotOwned.value, 5);
    expect(value.toJson()['e35'], 5);
  });
  test('ChannelSubscribeResult.subscriptionExists wire value', () {
    final value = EnumFixture.fromJson({'e36': 2});
    expect(value.e36, ChannelSubscribeResult.subscriptionExists);
    expect(ChannelSubscribeResult.subscriptionExists.value, 2);
    expect(value.toJson()['e36'], 2);
  });
  test('ChannelSubscribeResult.subscriptionLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e36': 3});
    expect(value.e36, ChannelSubscribeResult.subscriptionLimitReached);
    expect(ChannelSubscribeResult.subscriptionLimitReached.value, 3);
    expect(value.toJson()['e36'], 3);
  });
  test('ChannelUnsubscribeResult.subscriptionNotExists wire value', () {
    final value = EnumFixture.fromJson({'e37': 2});
    expect(value.e37, ChannelUnsubscribeResult.subscriptionNotExists);
    expect(ChannelUnsubscribeResult.subscriptionNotExists.value, 2);
    expect(value.toJson()['e37'], 2);
  });
  test('CollectionResult.invalidId wire value', () {
    final value = EnumFixture.fromJson({'e38': 2});
    expect(value.e38, CollectionResult.invalidId);
    expect(CollectionResult.invalidId.value, 2);
    expect(value.toJson()['e38'], 2);
  });
  test('CollectionResult.isPrivate wire value', () {
    final value = EnumFixture.fromJson({'e38': 3});
    expect(value.e38, CollectionResult.isPrivate);
    expect(CollectionResult.isPrivate.value, 3);
    expect(value.toJson()['e38'], 3);
  });
  test('CollectionResult.isDeleted wire value', () {
    final value = EnumFixture.fromJson({'e38': 4});
    expect(value.e38, CollectionResult.isDeleted);
    expect(CollectionResult.isDeleted.value, 4);
    expect(value.toJson()['e38'], 4);
  });
  test('FavoriteCollectionAddResult.collectionNotFound wire value', () {
    final value = EnumFixture.fromJson({'e39': 2});
    expect(value.e39, FavoriteCollectionAddResult.collectionNotFound);
    expect(FavoriteCollectionAddResult.collectionNotFound.value, 2);
    expect(value.toJson()['e39'], 2);
  });
  test(
    'FavoriteCollectionAddResult.collectionAlreadyInFavorite wire value',
    () {
      final value = EnumFixture.fromJson({'e39': 3});
      expect(
        value.e39,
        FavoriteCollectionAddResult.collectionAlreadyInFavorite,
      );
      expect(FavoriteCollectionAddResult.collectionAlreadyInFavorite.value, 3);
      expect(value.toJson()['e39'], 3);
    },
  );
  test('FavoriteCollectionDeleteResult.collectionNotFound wire value', () {
    final value = EnumFixture.fromJson({'e40': 2});
    expect(value.e40, FavoriteCollectionDeleteResult.collectionNotFound);
    expect(FavoriteCollectionDeleteResult.collectionNotFound.value, 2);
    expect(value.toJson()['e40'], 2);
  });
  test('CollectionEditImageResult.collectionNotFound wire value', () {
    final value = EnumFixture.fromJson({'e41': 2});
    expect(value.e41, CollectionEditImageResult.collectionNotFound);
    expect(CollectionEditImageResult.collectionNotFound.value, 2);
    expect(value.toJson()['e41'], 2);
  });
  test('CollectionCreateEditResult.invalidTitle wire value', () {
    final value = EnumFixture.fromJson({'e42': 2});
    expect(value.e42, CollectionCreateEditResult.invalidTitle);
    expect(CollectionCreateEditResult.invalidTitle.value, 2);
    expect(value.toJson()['e42'], 2);
  });
  test('CollectionCreateEditResult.invalidDescription wire value', () {
    final value = EnumFixture.fromJson({'e42': 3});
    expect(value.e42, CollectionCreateEditResult.invalidDescription);
    expect(CollectionCreateEditResult.invalidDescription.value, 3);
    expect(value.toJson()['e42'], 3);
  });
  test('CollectionCreateEditResult.invalidReleases wire value', () {
    final value = EnumFixture.fromJson({'e42': 4});
    expect(value.e42, CollectionCreateEditResult.invalidReleases);
    expect(CollectionCreateEditResult.invalidReleases.value, 4);
    expect(value.toJson()['e42'], 4);
  });
  test('CollectionCreateEditResult.collectionLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e42': 5});
    expect(value.e42, CollectionCreateEditResult.collectionLimitReached);
    expect(CollectionCreateEditResult.collectionLimitReached.value, 5);
    expect(value.toJson()['e42'], 5);
  });
  test('CollectionCreateEditResult.collectionNotFound wire value', () {
    final value = EnumFixture.fromJson({'e42': 6});
    expect(value.e42, CollectionCreateEditResult.collectionNotFound);
    expect(CollectionCreateEditResult.collectionNotFound.value, 6);
    expect(value.toJson()['e42'], 6);
  });
  test('CollectionCreateEditResult.collectionNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e42': 7});
    expect(value.e42, CollectionCreateEditResult.collectionNotOwned);
    expect(CollectionCreateEditResult.collectionNotOwned.value, 7);
    expect(value.toJson()['e42'], 7);
  });
  test('CollectionCreateEditResult.collectionDeleted wire value', () {
    final value = EnumFixture.fromJson({'e42': 8});
    expect(value.e42, CollectionCreateEditResult.collectionDeleted);
    expect(CollectionCreateEditResult.collectionDeleted.value, 8);
    expect(value.toJson()['e42'], 8);
  });
  test('CollectionCreateEditResult.releaseLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e42': 9});
    expect(value.e42, CollectionCreateEditResult.releaseLimitReached);
    expect(CollectionCreateEditResult.releaseLimitReached.value, 9);
    expect(value.toJson()['e42'], 9);
  });
  test('ReleaseAddCollectionResult.collectionNotFound wire value', () {
    final value = EnumFixture.fromJson({'e43': 2});
    expect(value.e43, ReleaseAddCollectionResult.collectionNotFound);
    expect(ReleaseAddCollectionResult.collectionNotFound.value, 2);
    expect(value.toJson()['e43'], 2);
  });
  test('ReleaseAddCollectionResult.collectionNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e43': 3});
    expect(value.e43, ReleaseAddCollectionResult.collectionNotOwned);
    expect(ReleaseAddCollectionResult.collectionNotOwned.value, 3);
    expect(value.toJson()['e43'], 3);
  });
  test('ReleaseAddCollectionResult.invalidRelease wire value', () {
    final value = EnumFixture.fromJson({'e43': 4});
    expect(value.e43, ReleaseAddCollectionResult.invalidRelease);
    expect(ReleaseAddCollectionResult.invalidRelease.value, 4);
    expect(value.toJson()['e43'], 4);
  });
  test('ReleaseAddCollectionResult.releaseAlreadyInCollection wire value', () {
    final value = EnumFixture.fromJson({'e43': 5});
    expect(value.e43, ReleaseAddCollectionResult.releaseAlreadyInCollection);
    expect(ReleaseAddCollectionResult.releaseAlreadyInCollection.value, 5);
    expect(value.toJson()['e43'], 5);
  });
  test('ReleaseAddCollectionResult.collectionDeleted wire value', () {
    final value = EnumFixture.fromJson({'e43': 6});
    expect(value.e43, ReleaseAddCollectionResult.collectionDeleted);
    expect(ReleaseAddCollectionResult.collectionDeleted.value, 6);
    expect(value.toJson()['e43'], 6);
  });
  test('ReleaseAddCollectionResult.releaseLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e43': 7});
    expect(value.e43, ReleaseAddCollectionResult.releaseLimitReached);
    expect(ReleaseAddCollectionResult.releaseLimitReached.value, 7);
    expect(value.toJson()['e43'], 7);
  });
  test('CollectionDeleteResult.collectionNotFound wire value', () {
    final value = EnumFixture.fromJson({'e44': 2});
    expect(value.e44, CollectionDeleteResult.collectionNotFound);
    expect(CollectionDeleteResult.collectionNotFound.value, 2);
    expect(value.toJson()['e44'], 2);
  });
  test('CollectionDeleteResult.collectionNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e44': 3});
    expect(value.e44, CollectionDeleteResult.collectionNotOwned);
    expect(CollectionDeleteResult.collectionNotOwned.value, 3);
    expect(value.toJson()['e44'], 3);
  });
  test('CollectionDeleteResult.collectionDeleted wire value', () {
    final value = EnumFixture.fromJson({'e44': 4});
    expect(value.e44, CollectionDeleteResult.collectionDeleted);
    expect(CollectionDeleteResult.collectionDeleted.value, 4);
    expect(value.toJson()['e44'], 4);
  });
  test('CommonResult.ok wire value', () {
    final value = EnumFixture.fromJson({'e45': 0});
    expect(value.e45, CommonResult.ok);
    expect(CommonResult.ok.value, 0);
    expect(value.toJson()['e45'], 0);
  });
  test('CommonResult.unexpectedError wire value', () {
    final value = EnumFixture.fromJson({'e45': 1});
    expect(value.e45, CommonResult.unexpectedError);
    expect(CommonResult.unexpectedError.value, 1);
    expect(value.toJson()['e45'], 1);
  });
  test('CommonResult.unauthorized wire value', () {
    final value = EnumFixture.fromJson({'e45': 401});
    expect(value.e45, CommonResult.unauthorized);
    expect(CommonResult.unauthorized.value, 401);
    expect(value.toJson()['e45'], 401);
  });
  test('CommonResult.invalidUserAgent wire value', () {
    final value = EnumFixture.fromJson({'e45': 402});
    expect(value.e45, CommonResult.invalidUserAgent);
    expect(CommonResult.invalidUserAgent.value, 402);
    expect(value.toJson()['e45'], 402);
  });
  test('CommonResult.permBan wire value', () {
    final value = EnumFixture.fromJson({'e45': 403});
    expect(value.e45, CommonResult.permBan);
    expect(CommonResult.permBan.value, 403);
    expect(value.toJson()['e45'], 403);
  });
  test('CommentAddResult.embeddableNotFound wire value', () {
    final value = EnumFixture.fromJson({'e46': 2});
    expect(value.e46, CommentAddResult.embeddableNotFound);
    expect(CommentAddResult.embeddableNotFound.value, 2);
    expect(value.toJson()['e46'], 2);
  });
  test('CommentAddResult.commentNotFound wire value', () {
    final value = EnumFixture.fromJson({'e46': 3});
    expect(value.e46, CommentAddResult.commentNotFound);
    expect(CommentAddResult.commentNotFound.value, 3);
    expect(value.toJson()['e46'], 3);
  });
  test('CommentAddResult.profileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e46': 4});
    expect(value.e46, CommentAddResult.profileNotFound);
    expect(CommentAddResult.profileNotFound.value, 4);
    expect(value.toJson()['e46'], 4);
  });
  test('CommentAddResult.commentIsTooShort wire value', () {
    final value = EnumFixture.fromJson({'e46': 5});
    expect(value.e46, CommentAddResult.commentIsTooShort);
    expect(CommentAddResult.commentIsTooShort.value, 5);
    expect(value.toJson()['e46'], 5);
  });
  test('CommentAddResult.commentIsTooLong wire value', () {
    final value = EnumFixture.fromJson({'e46': 6});
    expect(value.e46, CommentAddResult.commentIsTooLong);
    expect(CommentAddResult.commentIsTooLong.value, 6);
    expect(value.toJson()['e46'], 6);
  });
  test('CommentAddResult.commentLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e46': 7});
    expect(value.e46, CommentAddResult.commentLimitReached);
    expect(CommentAddResult.commentLimitReached.value, 7);
    expect(value.toJson()['e46'], 7);
  });
  test('CommentAddResult.inBlocklist wire value', () {
    final value = EnumFixture.fromJson({'e46': 8});
    expect(value.e46, CommentAddResult.inBlocklist);
    expect(CommentAddResult.inBlocklist.value, 8);
    expect(value.toJson()['e46'], 8);
  });
  test('CommentDeleteResult.commentNotFound wire value', () {
    final value = EnumFixture.fromJson({'e47': 2});
    expect(value.e47, CommentDeleteResult.commentNotFound);
    expect(CommentDeleteResult.commentNotFound.value, 2);
    expect(value.toJson()['e47'], 2);
  });
  test('CommentDeleteResult.commentNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e47': 3});
    expect(value.e47, CommentDeleteResult.commentNotOwned);
    expect(CommentDeleteResult.commentNotOwned.value, 3);
    expect(value.toJson()['e47'], 3);
  });
  test('CommentEditResult.commentNotFound wire value', () {
    final value = EnumFixture.fromJson({'e48': 2});
    expect(value.e48, CommentEditResult.commentNotFound);
    expect(CommentEditResult.commentNotFound.value, 2);
    expect(value.toJson()['e48'], 2);
  });
  test('CommentEditResult.commentIsTooShort wire value', () {
    final value = EnumFixture.fromJson({'e48': 3});
    expect(value.e48, CommentEditResult.commentIsTooShort);
    expect(CommentEditResult.commentIsTooShort.value, 3);
    expect(value.toJson()['e48'], 3);
  });
  test('CommentEditResult.commentIsTooLong wire value', () {
    final value = EnumFixture.fromJson({'e48': 4});
    expect(value.e48, CommentEditResult.commentIsTooLong);
    expect(CommentEditResult.commentIsTooLong.value, 4);
    expect(value.toJson()['e48'], 4);
  });
  test('CommentEditResult.commentNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e48': 5});
    expect(value.e48, CommentEditResult.commentNotOwned);
    expect(CommentEditResult.commentNotOwned.value, 5);
    expect(value.toJson()['e48'], 5);
  });
  test('CommentEditResult.commentWasDeleted wire value', () {
    final value = EnumFixture.fromJson({'e48': 6});
    expect(value.e48, CommentEditResult.commentWasDeleted);
    expect(CommentEditResult.commentWasDeleted.value, 6);
    expect(value.toJson()['e48'], 6);
  });
  test('CommentEditResult.embeddableNotFound wire value', () {
    final value = EnumFixture.fromJson({'e48': 7});
    expect(value.e48, CommentEditResult.embeddableNotFound);
    expect(CommentEditResult.embeddableNotFound.value, 7);
    expect(value.toJson()['e48'], 7);
  });
  test('DeleteNotificationType.articleComment wire value', () {
    final value = EnumFixture.fromJson({'e49': "article/comment"});
    expect(value.e49, DeleteNotificationType.articleComment);
    expect(DeleteNotificationType.articleComment.value, "article/comment");
    expect(value.toJson()['e49'], "article/comment");
  });
  test('DeleteNotificationType.collectionComment wire value', () {
    final value = EnumFixture.fromJson({'e49': "collectionComment"});
    expect(value.e49, DeleteNotificationType.collectionComment);
    expect(DeleteNotificationType.collectionComment.value, "collectionComment");
    expect(value.toJson()['e49'], "collectionComment");
  });
  test('DeleteNotificationType.episode wire value', () {
    final value = EnumFixture.fromJson({'e49': "episode"});
    expect(value.e49, DeleteNotificationType.episode);
    expect(DeleteNotificationType.episode.value, "episode");
    expect(value.toJson()['e49'], "episode");
  });
  test('DeleteNotificationType.friend wire value', () {
    final value = EnumFixture.fromJson({'e49': "friend"});
    expect(value.e49, DeleteNotificationType.friend);
    expect(DeleteNotificationType.friend.value, "friend");
    expect(value.toJson()['e49'], "friend");
  });
  test('DeleteNotificationType.myArticleComment wire value', () {
    final value = EnumFixture.fromJson({'e49': "my/article/comment"});
    expect(value.e49, DeleteNotificationType.myArticleComment);
    expect(DeleteNotificationType.myArticleComment.value, "my/article/comment");
    expect(value.toJson()['e49'], "my/article/comment");
  });
  test('DeleteNotificationType.myCollectionComment wire value', () {
    final value = EnumFixture.fromJson({'e49': "my/collection/comment"});
    expect(value.e49, DeleteNotificationType.myCollectionComment);
    expect(
      DeleteNotificationType.myCollectionComment.value,
      "my/collection/comment",
    );
    expect(value.toJson()['e49'], "my/collection/comment");
  });
  test('DeleteNotificationType.relatedRelease wire value', () {
    final value = EnumFixture.fromJson({'e49': "related/release"});
    expect(value.e49, DeleteNotificationType.relatedRelease);
    expect(DeleteNotificationType.relatedRelease.value, "related/release");
    expect(value.toJson()['e49'], "related/release");
  });
  test('DeleteNotificationType.releaseComment wire value', () {
    final value = EnumFixture.fromJson({'e49': "releaseComment"});
    expect(value.e49, DeleteNotificationType.releaseComment);
    expect(DeleteNotificationType.releaseComment.value, "releaseComment");
    expect(value.toJson()['e49'], "releaseComment");
  });
  test('NotificationPreferenceEditType.article wire value', () {
    final value = EnumFixture.fromJson({'e50': "article"});
    expect(value.e50, NotificationPreferenceEditType.article);
    expect(NotificationPreferenceEditType.article.value, "article");
    expect(value.toJson()['e50'], "article");
  });
  test('NotificationPreferenceEditType.comment wire value', () {
    final value = EnumFixture.fromJson({'e50': "comment"});
    expect(value.e50, NotificationPreferenceEditType.comment);
    expect(NotificationPreferenceEditType.comment.value, "comment");
    expect(value.toJson()['e50'], "comment");
  });
  test('NotificationPreferenceEditType.episode wire value', () {
    final value = EnumFixture.fromJson({'e50': "episode"});
    expect(value.e50, NotificationPreferenceEditType.episode);
    expect(NotificationPreferenceEditType.episode.value, "episode");
    expect(value.toJson()['e50'], "episode");
  });
  test('NotificationPreferenceEditType.firstEpisode wire value', () {
    final value = EnumFixture.fromJson({'e50': "episode/first"});
    expect(value.e50, NotificationPreferenceEditType.firstEpisode);
    expect(NotificationPreferenceEditType.firstEpisode.value, "episode/first");
    expect(value.toJson()['e50'], "episode/first");
  });
  test('NotificationPreferenceEditType.myArticleComment wire value', () {
    final value = EnumFixture.fromJson({'e50': "my/article/comment"});
    expect(value.e50, NotificationPreferenceEditType.myArticleComment);
    expect(
      NotificationPreferenceEditType.myArticleComment.value,
      "my/article/comment",
    );
    expect(value.toJson()['e50'], "my/article/comment");
  });
  test('NotificationPreferenceEditType.myCollectionComment wire value', () {
    final value = EnumFixture.fromJson({'e50': "my/collection/comment"});
    expect(value.e50, NotificationPreferenceEditType.myCollectionComment);
    expect(
      NotificationPreferenceEditType.myCollectionComment.value,
      "my/collection/comment",
    );
    expect(value.toJson()['e50'], "my/collection/comment");
  });
  test('NotificationPreferenceEditType.relatedRelease wire value', () {
    final value = EnumFixture.fromJson({'e50': "related/release"});
    expect(value.e50, NotificationPreferenceEditType.relatedRelease);
    expect(
      NotificationPreferenceEditType.relatedRelease.value,
      "related/release",
    );
    expect(value.toJson()['e50'], "related/release");
  });
  test('NotificationPreferenceEditType.reportProcess wire value', () {
    final value = EnumFixture.fromJson({'e50': "report/process"});
    expect(value.e50, NotificationPreferenceEditType.reportProcess);
    expect(
      NotificationPreferenceEditType.reportProcess.value,
      "report/process",
    );
    expect(value.toJson()['e50'], "report/process");
  });
  test('NotificationPreferenceEditType.selectedReleases wire value', () {
    final value = EnumFixture.fromJson({'e50': "selected/releases"});
    expect(value.e50, NotificationPreferenceEditType.selectedReleases);
    expect(
      NotificationPreferenceEditType.selectedReleases.value,
      "selected/releases",
    );
    expect(value.toJson()['e50'], "selected/releases");
  });
  test('ProfileFriendNotificationStatus.request wire value', () {
    final value = EnumFixture.fromJson({'e51': "REQUEST"});
    expect(value.e51, ProfileFriendNotificationStatus.request);
    expect(ProfileFriendNotificationStatus.request.value, "REQUEST");
    expect(value.toJson()['e51'], "REQUEST");
  });
  test('ProfileFriendNotificationStatus.accept wire value', () {
    final value = EnumFixture.fromJson({'e51': "ACCEPT"});
    expect(value.e51, ProfileFriendNotificationStatus.accept);
    expect(ProfileFriendNotificationStatus.accept.value, "ACCEPT");
    expect(value.toJson()['e51'], "ACCEPT");
  });
  test('PrivacyState.all wire value', () {
    final value = EnumFixture.fromJson({'e52': 0});
    expect(value.e52, PrivacyState.all);
    expect(PrivacyState.all.value, 0);
    expect(value.toJson()['e52'], 0);
  });
  test('PrivacyState.onlyFriends wire value', () {
    final value = EnumFixture.fromJson({'e52': 1});
    expect(value.e52, PrivacyState.onlyFriends);
    expect(PrivacyState.onlyFriends.value, 1);
    expect(value.toJson()['e52'], 1);
  });
  test('PrivacyState.onlyMe wire value', () {
    final value = EnumFixture.fromJson({'e52': 2});
    expect(value.e52, PrivacyState.onlyMe);
    expect(PrivacyState.onlyMe.value, 2);
    expect(value.toJson()['e52'], 2);
  });
  test('PrivacyFriendRequestState.all wire value', () {
    final value = EnumFixture.fromJson({'e53': 0});
    expect(value.e53, PrivacyFriendRequestState.all);
    expect(PrivacyFriendRequestState.all.value, 0);
    expect(value.toJson()['e53'], 0);
  });
  test('PrivacyFriendRequestState.onlyMe wire value', () {
    final value = EnumFixture.fromJson({'e53': 1});
    expect(value.e53, PrivacyFriendRequestState.onlyMe);
    expect(PrivacyFriendRequestState.onlyMe.value, 1);
    expect(value.toJson()['e53'], 1);
  });
  test('ChangeEmailResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e54': 2});
    expect(value.e54, ChangeEmailResult.invalidPassword);
    expect(ChangeEmailResult.invalidPassword.value, 2);
    expect(value.toJson()['e54'], 2);
  });
  test('ChangeEmailResult.invalidOldEmail wire value', () {
    final value = EnumFixture.fromJson({'e54': 3});
    expect(value.e54, ChangeEmailResult.invalidOldEmail);
    expect(ChangeEmailResult.invalidOldEmail.value, 3);
    expect(value.toJson()['e54'], 3);
  });
  test('ChangeEmailResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e54': 4});
    expect(value.e54, ChangeEmailResult.invalidEmail);
    expect(ChangeEmailResult.invalidEmail.value, 4);
    expect(value.toJson()['e54'], 4);
  });
  test('ChangeEmailResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e54': 5});
    expect(value.e54, ChangeEmailResult.emailAlreadyTaken);
    expect(ChangeEmailResult.emailAlreadyTaken.value, 5);
    expect(value.toJson()['e54'], 5);
  });
  test('ChangeEmailResult.codeAlreadySend wire value', () {
    final value = EnumFixture.fromJson({'e54': 6});
    expect(value.e54, ChangeEmailResult.codeAlreadySend);
    expect(ChangeEmailResult.codeAlreadySend.value, 6);
    expect(value.toJson()['e54'], 6);
  });
  test('ChangeEmailResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e54': 7});
    expect(value.e54, ChangeEmailResult.codeCannotSend);
    expect(ChangeEmailResult.codeCannotSend.value, 7);
    expect(value.toJson()['e54'], 7);
  });
  test('ChangeEmailResendResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e55': 2});
    expect(value.e55, ChangeEmailResendResult.invalidPassword);
    expect(ChangeEmailResendResult.invalidPassword.value, 2);
    expect(value.toJson()['e55'], 2);
  });
  test('ChangeEmailResendResult.invalidOldEmail wire value', () {
    final value = EnumFixture.fromJson({'e55': 3});
    expect(value.e55, ChangeEmailResendResult.invalidOldEmail);
    expect(ChangeEmailResendResult.invalidOldEmail.value, 3);
    expect(value.toJson()['e55'], 3);
  });
  test('ChangeEmailResendResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e55': 4});
    expect(value.e55, ChangeEmailResendResult.invalidHash);
    expect(ChangeEmailResendResult.invalidHash.value, 4);
    expect(value.toJson()['e55'], 4);
  });
  test('ChangeEmailResendResult.codeCannotSend wire value', () {
    final value = EnumFixture.fromJson({'e55': 5});
    expect(value.e55, ChangeEmailResendResult.codeCannotSend);
    expect(ChangeEmailResendResult.codeCannotSend.value, 5);
    expect(value.toJson()['e55'], 5);
  });
  test('ChangeEmailVerifyResult.invalidEmail wire value', () {
    final value = EnumFixture.fromJson({'e56': 2});
    expect(value.e56, ChangeEmailVerifyResult.invalidEmail);
    expect(ChangeEmailVerifyResult.invalidEmail.value, 2);
    expect(value.toJson()['e56'], 2);
  });
  test('ChangeEmailVerifyResult.codeInvalid wire value', () {
    final value = EnumFixture.fromJson({'e56': 3});
    expect(value.e56, ChangeEmailVerifyResult.codeInvalid);
    expect(ChangeEmailVerifyResult.codeInvalid.value, 3);
    expect(value.toJson()['e56'], 3);
  });
  test('ChangeEmailVerifyResult.codeExpired wire value', () {
    final value = EnumFixture.fromJson({'e56': 4});
    expect(value.e56, ChangeEmailVerifyResult.codeExpired);
    expect(ChangeEmailVerifyResult.codeExpired.value, 4);
    expect(value.toJson()['e56'], 4);
  });
  test('ChangeEmailVerifyResult.invalidHash wire value', () {
    final value = EnumFixture.fromJson({'e56': 5});
    expect(value.e56, ChangeEmailVerifyResult.invalidHash);
    expect(ChangeEmailVerifyResult.invalidHash.value, 5);
    expect(value.toJson()['e56'], 5);
  });
  test('ChangeEmailVerifyResult.emailAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e56': 6});
    expect(value.e56, ChangeEmailVerifyResult.emailAlreadyTaken);
    expect(ChangeEmailVerifyResult.emailAlreadyTaken.value, 6);
    expect(value.toJson()['e56'], 6);
  });
  test('ChangeLoginResult.invalidLogin wire value', () {
    final value = EnumFixture.fromJson({'e57': 2});
    expect(value.e57, ChangeLoginResult.invalidLogin);
    expect(ChangeLoginResult.invalidLogin.value, 2);
    expect(value.toJson()['e57'], 2);
  });
  test('ChangeLoginResult.loginAlreadyTaken wire value', () {
    final value = EnumFixture.fromJson({'e57': 3});
    expect(value.e57, ChangeLoginResult.loginAlreadyTaken);
    expect(ChangeLoginResult.loginAlreadyTaken.value, 3);
    expect(value.toJson()['e57'], 3);
  });
  test('ChangeLoginResult.timeLimit wire value', () {
    final value = EnumFixture.fromJson({'e57': 4});
    expect(value.e57, ChangeLoginResult.timeLimit);
    expect(ChangeLoginResult.timeLimit.value, 4);
    expect(value.toJson()['e57'], 4);
  });
  test('ChangePasswordResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e58': 2});
    expect(value.e58, ChangePasswordResult.invalidPassword);
    expect(ChangePasswordResult.invalidPassword.value, 2);
    expect(value.toJson()['e58'], 2);
  });
  test('ChangePasswordResult.invalidCurrentPassword wire value', () {
    final value = EnumFixture.fromJson({'e58': 3});
    expect(value.e58, ChangePasswordResult.invalidCurrentPassword);
    expect(ChangePasswordResult.invalidCurrentPassword.value, 3);
    expect(value.toJson()['e58'], 3);
  });
  test('GoogleBindResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e59': 2});
    expect(value.e59, GoogleBindResult.invalidRequest);
    expect(GoogleBindResult.invalidRequest.value, 2);
    expect(value.toJson()['e59'], 2);
  });
  test('GoogleBindResult.googleAlreadyBound wire value', () {
    final value = EnumFixture.fromJson({'e59': 3});
    expect(value.e59, GoogleBindResult.googleAlreadyBound);
    expect(GoogleBindResult.googleAlreadyBound.value, 3);
    expect(value.toJson()['e59'], 3);
  });
  test('GoogleUnbindResult.googleNotBound wire value', () {
    final value = EnumFixture.fromJson({'e60': 2});
    expect(value.e60, GoogleUnbindResult.googleNotBound);
    expect(GoogleUnbindResult.googleNotBound.value, 2);
    expect(value.toJson()['e60'], 2);
  });
  test('ProfileSelectThemeResult.themeNotFound wire value', () {
    final value = EnumFixture.fromJson({'e61': 2});
    expect(value.e61, ProfileSelectThemeResult.themeNotFound);
    expect(ProfileSelectThemeResult.themeNotFound.value, 2);
    expect(value.toJson()['e61'], 2);
  });
  test('ProfileSelectThemeResult.themeNotAvaliable wire value', () {
    final value = EnumFixture.fromJson({'e61': 3});
    expect(value.e61, ProfileSelectThemeResult.themeNotAvaliable);
    expect(ProfileSelectThemeResult.themeNotAvaliable.value, 3);
    expect(value.toJson()['e61'], 3);
  });
  test('SocialEditResult.invalidVK wire value', () {
    final value = EnumFixture.fromJson({'e62': 2});
    expect(value.e62, SocialEditResult.invalidVK);
    expect(SocialEditResult.invalidVK.value, 2);
    expect(value.toJson()['e62'], 2);
  });
  test('SocialEditResult.invalidTelegram wire value', () {
    final value = EnumFixture.fromJson({'e62': 3});
    expect(value.e62, SocialEditResult.invalidTelegram);
    expect(SocialEditResult.invalidTelegram.value, 3);
    expect(value.toJson()['e62'], 3);
  });
  test('SocialEditResult.invalidInstagram wire value', () {
    final value = EnumFixture.fromJson({'e62': 4});
    expect(value.e62, SocialEditResult.invalidInstagram);
    expect(SocialEditResult.invalidInstagram.value, 4);
    expect(value.toJson()['e62'], 4);
  });
  test('SocialEditResult.invalidTiktok wire value', () {
    final value = EnumFixture.fromJson({'e62': 5});
    expect(value.e62, SocialEditResult.invalidTiktok);
    expect(SocialEditResult.invalidTiktok.value, 5);
    expect(value.toJson()['e62'], 5);
  });
  test('SocialEditResult.invalidDiscord wire value', () {
    final value = EnumFixture.fromJson({'e62': 6});
    expect(value.e62, SocialEditResult.invalidDiscord);
    expect(SocialEditResult.invalidDiscord.value, 6);
    expect(value.toJson()['e62'], 6);
  });
  test('TelegramBindResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e63': 2});
    expect(value.e63, TelegramBindResult.invalidRequest);
    expect(TelegramBindResult.invalidRequest.value, 2);
    expect(value.toJson()['e63'], 2);
  });
  test('TelegramBindResult.telegramAlreadyBound wire value', () {
    final value = EnumFixture.fromJson({'e63': 3});
    expect(value.e63, TelegramBindResult.telegramAlreadyBound);
    expect(TelegramBindResult.telegramAlreadyBound.value, 3);
    expect(value.toJson()['e63'], 3);
  });
  test('TelegramUnbindResult.telegramNotBound wire value', () {
    final value = EnumFixture.fromJson({'e64': 2});
    expect(value.e64, TelegramUnbindResult.telegramNotBound);
    expect(TelegramUnbindResult.telegramNotBound.value, 2);
    expect(value.toJson()['e64'], 2);
  });
  test('VkBindResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e65': 2});
    expect(value.e65, VkBindResult.invalidRequest);
    expect(VkBindResult.invalidRequest.value, 2);
    expect(value.toJson()['e65'], 2);
  });
  test('VkBindResult.vkAlreadyBound wire value', () {
    final value = EnumFixture.fromJson({'e65': 3});
    expect(value.e65, VkBindResult.vkAlreadyBound);
    expect(VkBindResult.vkAlreadyBound.value, 3);
    expect(value.toJson()['e65'], 3);
  });
  test('VkUnbindResult.vkNotBound wire value', () {
    final value = EnumFixture.fromJson({'e66': 2});
    expect(value.e66, VkUnbindResult.vkNotBound);
    expect(VkUnbindResult.vkNotBound.value, 2);
    expect(value.toJson()['e66'], 2);
  });
  test('YandexBindResult.invalidRequest wire value', () {
    final value = EnumFixture.fromJson({'e67': 2});
    expect(value.e67, YandexBindResult.invalidRequest);
    expect(YandexBindResult.invalidRequest.value, 2);
    expect(value.toJson()['e67'], 2);
  });
  test('YandexBindResult.yandexAlreadyBound wire value', () {
    final value = EnumFixture.fromJson({'e67': 3});
    expect(value.e67, YandexBindResult.yandexAlreadyBound);
    expect(YandexBindResult.yandexAlreadyBound.value, 3);
    expect(value.toJson()['e67'], 3);
  });
  test('YandexUnbindResult.yandexNotBound wire value', () {
    final value = EnumFixture.fromJson({'e68': 2});
    expect(value.e68, YandexUnbindResult.yandexNotBound);
    expect(YandexUnbindResult.yandexNotBound.value, 2);
    expect(value.toJson()['e68'], 2);
  });
  test('FriendStatus.pendingFirstSecond wire value', () {
    final value = EnumFixture.fromJson({'e69': 0});
    expect(value.e69, FriendStatus.pendingFirstSecond);
    expect(FriendStatus.pendingFirstSecond.value, 0);
    expect(value.toJson()['e69'], 0);
  });
  test('FriendStatus.pendingSecondFirst wire value', () {
    final value = EnumFixture.fromJson({'e69': 1});
    expect(value.e69, FriendStatus.pendingSecondFirst);
    expect(FriendStatus.pendingSecondFirst.value, 1);
    expect(value.toJson()['e69'], 1);
  });
  test('FriendStatus.friend wire value', () {
    final value = EnumFixture.fromJson({'e69': 2});
    expect(value.e69, FriendStatus.friend);
    expect(FriendStatus.friend.value, 2);
    expect(value.toJson()['e69'], 2);
  });
  test('PrivilegeLevel.none wire value', () {
    final value = EnumFixture.fromJson({'e70': 0});
    expect(value.e70, PrivilegeLevel.none);
    expect(PrivilegeLevel.none.value, 0);
    expect(value.toJson()['e70'], 0);
  });
  test('PrivilegeLevel.member wire value', () {
    final value = EnumFixture.fromJson({'e70': 1});
    expect(value.e70, PrivilegeLevel.member);
    expect(PrivilegeLevel.member.value, 1);
    expect(value.toJson()['e70'], 1);
  });
  test('PrivilegeLevel.releaser wire value', () {
    final value = EnumFixture.fromJson({'e70': 2});
    expect(value.e70, PrivilegeLevel.releaser);
    expect(PrivilegeLevel.releaser.value, 2);
    expect(value.toJson()['e70'], 2);
  });
  test('PrivilegeLevel.moderator wire value', () {
    final value = EnumFixture.fromJson({'e70': 3});
    expect(value.e70, PrivilegeLevel.moderator);
    expect(PrivilegeLevel.moderator.value, 3);
    expect(value.toJson()['e70'], 3);
  });
  test('PrivilegeLevel.administrator wire value', () {
    final value = EnumFixture.fromJson({'e70': 4});
    expect(value.e70, PrivilegeLevel.administrator);
    expect(PrivilegeLevel.administrator.value, 4);
    expect(value.toJson()['e70'], 4);
  });
  test('PrivilegeLevel.developer wire value', () {
    final value = EnumFixture.fromJson({'e70': 5});
    expect(value.e70, PrivilegeLevel.developer);
    expect(PrivilegeLevel.developer.value, 5);
    expect(value.toJson()['e70'], 5);
  });
  test('BookmarkType.watching wire value', () {
    final value = EnumFixture.fromJson({'e71': 1});
    expect(value.e71, BookmarkType.watching);
    expect(BookmarkType.watching.value, 1);
    expect(value.toJson()['e71'], 1);
  });
  test('BookmarkType.inPlans wire value', () {
    final value = EnumFixture.fromJson({'e71': 2});
    expect(value.e71, BookmarkType.inPlans);
    expect(BookmarkType.inPlans.value, 2);
    expect(value.toJson()['e71'], 2);
  });
  test('BookmarkType.completed wire value', () {
    final value = EnumFixture.fromJson({'e71': 3});
    expect(value.e71, BookmarkType.completed);
    expect(BookmarkType.completed.value, 3);
    expect(value.toJson()['e71'], 3);
  });
  test('BookmarkType.holdOn wire value', () {
    final value = EnumFixture.fromJson({'e71': 4});
    expect(value.e71, BookmarkType.holdOn);
    expect(BookmarkType.holdOn.value, 4);
    expect(value.toJson()['e71'], 4);
  });
  test('BookmarkType.dropped wire value', () {
    final value = EnumFixture.fromJson({'e71': 5});
    expect(value.e71, BookmarkType.dropped);
    expect(BookmarkType.dropped.value, 5);
    expect(value.toJson()['e71'], 5);
  });
  test('BookmarkSortType.newToOldAddTime wire value', () {
    final value = EnumFixture.fromJson({'e72': 1});
    expect(value.e72, BookmarkSortType.newToOldAddTime);
    expect(BookmarkSortType.newToOldAddTime.value, 1);
    expect(value.toJson()['e72'], 1);
  });
  test('BookmarkSortType.oldToNewAddTime wire value', () {
    final value = EnumFixture.fromJson({'e72': 2});
    expect(value.e72, BookmarkSortType.oldToNewAddTime);
    expect(BookmarkSortType.oldToNewAddTime.value, 2);
    expect(value.toJson()['e72'], 2);
  });
  test('BookmarkSortType.newToOldYear wire value', () {
    final value = EnumFixture.fromJson({'e72': 3});
    expect(value.e72, BookmarkSortType.newToOldYear);
    expect(BookmarkSortType.newToOldYear.value, 3);
    expect(value.toJson()['e72'], 3);
  });
  test('BookmarkSortType.oldToNewYear wire value', () {
    final value = EnumFixture.fromJson({'e72': 4});
    expect(value.e72, BookmarkSortType.oldToNewYear);
    expect(BookmarkSortType.oldToNewYear.value, 4);
    expect(value.toJson()['e72'], 4);
  });
  test('BookmarkSortType.alpabetInAToZ wire value', () {
    final value = EnumFixture.fromJson({'e72': 5});
    expect(value.e72, BookmarkSortType.alpabetInAToZ);
    expect(BookmarkSortType.alpabetInAToZ.value, 5);
    expect(value.toJson()['e72'], 5);
  });
  test('BookmarkSortType.alpabetInZToA wire value', () {
    final value = EnumFixture.fromJson({'e72': 6});
    expect(value.e72, BookmarkSortType.alpabetInZToA);
    expect(BookmarkSortType.alpabetInZToA.value, 6);
    expect(value.toJson()['e72'], 6);
  });
  test('SendFriendRequestResult.requestConfirmed wire value', () {
    final value = EnumFixture.fromJson({'e73': 2});
    expect(value.e73, SendFriendRequestResult.requestConfirmed);
    expect(SendFriendRequestResult.requestConfirmed.value, 2);
    expect(value.toJson()['e73'], 2);
  });
  test('SendFriendRequestResult.requestSent wire value', () {
    final value = EnumFixture.fromJson({'e73': 3});
    expect(value.e73, SendFriendRequestResult.requestSent);
    expect(SendFriendRequestResult.requestSent.value, 3);
    expect(value.toJson()['e73'], 3);
  });
  test('SendFriendRequestResult.profileWasBlocked wire value', () {
    final value = EnumFixture.fromJson({'e73': 4});
    expect(value.e73, SendFriendRequestResult.profileWasBlocked);
    expect(SendFriendRequestResult.profileWasBlocked.value, 4);
    expect(value.toJson()['e73'], 4);
  });
  test('SendFriendRequestResult.myProfileWasBlocked wire value', () {
    final value = EnumFixture.fromJson({'e73': 5});
    expect(value.e73, SendFriendRequestResult.myProfileWasBlocked);
    expect(SendFriendRequestResult.myProfileWasBlocked.value, 5);
    expect(value.toJson()['e73'], 5);
  });
  test('SendFriendRequestResult.friendLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e73': 6});
    expect(value.e73, SendFriendRequestResult.friendLimitReached);
    expect(SendFriendRequestResult.friendLimitReached.value, 6);
    expect(value.toJson()['e73'], 6);
  });
  test('SendFriendRequestResult.targetFriendLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e73': 7});
    expect(value.e73, SendFriendRequestResult.targetFriendLimitReached);
    expect(SendFriendRequestResult.targetFriendLimitReached.value, 7);
    expect(value.toJson()['e73'], 7);
  });
  test('SendFriendRequestResult.targetFriendRequestsDisallowed wire value', () {
    final value = EnumFixture.fromJson({'e73': 8});
    expect(value.e73, SendFriendRequestResult.targetFriendRequestsDisallowed);
    expect(SendFriendRequestResult.targetFriendRequestsDisallowed.value, 8);
    expect(value.toJson()['e73'], 8);
  });
  test('SendFriendRequestResult.friendRequestLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e73': 9});
    expect(value.e73, SendFriendRequestResult.friendRequestLimitReached);
    expect(SendFriendRequestResult.friendRequestLimitReached.value, 9);
    expect(value.toJson()['e73'], 9);
  });
  test('ProfileDeletionResult.alreadyRequested wire value', () {
    final value = EnumFixture.fromJson({'e74': 2});
    expect(value.e74, ProfileDeletionResult.alreadyRequested);
    expect(ProfileDeletionResult.alreadyRequested.value, 2);
    expect(value.toJson()['e74'], 2);
  });
  test('ProfileDeletionResult.notFound wire value', () {
    final value = EnumFixture.fromJson({'e74': 3});
    expect(value.e74, ProfileDeletionResult.notFound);
    expect(ProfileDeletionResult.notFound.value, 3);
    expect(value.toJson()['e74'], 3);
  });
  test('ProfileDeletionResult.alreadyProcessed wire value', () {
    final value = EnumFixture.fromJson({'e74': 4});
    expect(value.e74, ProfileDeletionResult.alreadyProcessed);
    expect(ProfileDeletionResult.alreadyProcessed.value, 4);
    expect(value.toJson()['e74'], 4);
  });
  test('ProfileDeletionResult.inProgress wire value', () {
    final value = EnumFixture.fromJson({'e74': 5});
    expect(value.e74, ProfileDeletionResult.inProgress);
    expect(ProfileDeletionResult.inProgress.value, 5);
    expect(value.toJson()['e74'], 5);
  });
  test('ProfileDeletionResult.invalidPassword wire value', () {
    final value = EnumFixture.fromJson({'e74': 6});
    expect(value.e74, ProfileDeletionResult.invalidPassword);
    expect(ProfileDeletionResult.invalidPassword.value, 6);
    expect(value.toJson()['e74'], 6);
  });
  test('ProfileDeletionResult.unknownError wire value', () {
    final value = EnumFixture.fromJson({'e74': 7});
    expect(value.e74, ProfileDeletionResult.unknownError);
    expect(ProfileDeletionResult.unknownError.value, 7);
    expect(value.toJson()['e74'], 7);
  });
  test('RemoveFriendRequestResult.requestRemoved wire value', () {
    final value = EnumFixture.fromJson({'e75': 2});
    expect(value.e75, RemoveFriendRequestResult.requestRemoved);
    expect(RemoveFriendRequestResult.requestRemoved.value, 2);
    expect(value.toJson()['e75'], 2);
  });
  test('RemoveFriendRequestResult.friendshipRemoved wire value', () {
    final value = EnumFixture.fromJson({'e75': 3});
    expect(value.e75, RemoveFriendRequestResult.friendshipRemoved);
    expect(RemoveFriendRequestResult.friendshipRemoved.value, 3);
    expect(value.toJson()['e75'], 3);
  });
  test('ProfileResult.profileNotFound wire value', () {
    final value = EnumFixture.fromJson({'e76': 2});
    expect(value.e76, ProfileResult.profileNotFound);
    expect(ProfileResult.profileNotFound.value, 2);
    expect(value.toJson()['e76'], 2);
  });
  test('AchivementResult.alreadyGranted wire value', () {
    final value = EnumFixture.fromJson({'e77': 2});
    expect(value.e77, AchivementResult.alreadyGranted);
    expect(AchivementResult.alreadyGranted.value, 2);
    expect(value.toJson()['e77'], 2);
  });
  test('AchivementResult.achivementNotFound wire value', () {
    final value = EnumFixture.fromJson({'e77': 3});
    expect(value.e77, AchivementResult.achivementNotFound);
    expect(AchivementResult.achivementNotFound.value, 3);
    expect(value.toJson()['e77'], 3);
  });
  test('BlockListAddResult.alreadyInBlockList wire value', () {
    final value = EnumFixture.fromJson({'e78': 2});
    expect(value.e78, BlockListAddResult.alreadyInBlockList);
    expect(BlockListAddResult.alreadyInBlockList.value, 2);
    expect(value.toJson()['e78'], 2);
  });
  test('BookmarksExportResult.invalidProfileLists wire value', () {
    final value = EnumFixture.fromJson({'e79': 2});
    expect(value.e79, BookmarksExportResult.invalidProfileLists);
    expect(BookmarksExportResult.invalidProfileLists.value, 2);
    expect(value.toJson()['e79'], 2);
  });
  test('BookmarksExportResult.invalidExtraFields wire value', () {
    final value = EnumFixture.fromJson({'e79': 3});
    expect(value.e79, BookmarksExportResult.invalidExtraFields);
    expect(BookmarksExportResult.invalidExtraFields.value, 3);
    expect(value.toJson()['e79'], 3);
  });
  test('BookmarksImportResult.importLimitReached wire value', () {
    final value = EnumFixture.fromJson({'e80': 2});
    expect(value.e80, BookmarksImportResult.importLimitReached);
    expect(BookmarksImportResult.importLimitReached.value, 2);
    expect(value.toJson()['e80'], 2);
  });
  test('ReleaseCategory.unknown wire value', () {
    final value = EnumFixture.fromJson({'e81': 0});
    expect(value.e81, ReleaseCategory.unknown);
    expect(ReleaseCategory.unknown.value, 0);
    expect(value.toJson()['e81'], 0);
  });
  test('ReleaseCategory.series wire value', () {
    final value = EnumFixture.fromJson({'e81': 1});
    expect(value.e81, ReleaseCategory.series);
    expect(ReleaseCategory.series.value, 1);
    expect(value.toJson()['e81'], 1);
  });
  test('ReleaseCategory.movie wire value', () {
    final value = EnumFixture.fromJson({'e81': 2});
    expect(value.e81, ReleaseCategory.movie);
    expect(ReleaseCategory.movie.value, 2);
    expect(value.toJson()['e81'], 2);
  });
  test('ReleaseCategory.ova wire value', () {
    final value = EnumFixture.fromJson({'e81': 3});
    expect(value.e81, ReleaseCategory.ova);
    expect(ReleaseCategory.ova.value, 3);
    expect(value.toJson()['e81'], 3);
  });
  test('ReleaseCategory.special wire value', () {
    final value = EnumFixture.fromJson({'e81': 6});
    expect(value.e81, ReleaseCategory.special);
    expect(ReleaseCategory.special.value, 6);
    expect(value.toJson()['e81'], 6);
  });
  test('VoteType.like wire value', () {
    final value = EnumFixture.fromJson({'e82': 2});
    expect(value.e82, VoteType.like);
    expect(VoteType.like.value, 2);
    expect(value.toJson()['e82'], 2);
  });
  test('VoteType.dislike wire value', () {
    final value = EnumFixture.fromJson({'e82': 1});
    expect(value.e82, VoteType.dislike);
    expect(VoteType.dislike.value, 1);
    expect(value.toJson()['e82'], 1);
  });
  test('ReleaseStatus.unknown wire value', () {
    final value = EnumFixture.fromJson({'e83': 0});
    expect(value.e83, ReleaseStatus.unknown);
    expect(ReleaseStatus.unknown.value, 0);
    expect(value.toJson()['e83'], 0);
  });
  test('ReleaseStatus.finished wire value', () {
    final value = EnumFixture.fromJson({'e83': 1});
    expect(value.e83, ReleaseStatus.finished);
    expect(ReleaseStatus.finished.value, 1);
    expect(value.toJson()['e83'], 1);
  });
  test('ReleaseStatus.airing wire value', () {
    final value = EnumFixture.fromJson({'e83': 2});
    expect(value.e83, ReleaseStatus.airing);
    expect(ReleaseStatus.airing.value, 2);
    expect(value.toJson()['e83'], 2);
  });
  test('ReleaseStatus.announced wire value', () {
    final value = EnumFixture.fromJson({'e83': 3});
    expect(value.e83, ReleaseStatus.announced);
    expect(ReleaseStatus.announced.value, 3);
    expect(value.toJson()['e83'], 3);
  });
  test('FilterGenresMode.all wire value', () {
    final value = EnumFixture.fromJson({'e84': 0});
    expect(value.e84, FilterGenresMode.all);
    expect(FilterGenresMode.all.value, 0);
    expect(value.toJson()['e84'], 0);
  });
  test('FilterGenresMode.any wire value', () {
    final value = EnumFixture.fromJson({'e84': 1});
    expect(value.e84, FilterGenresMode.any);
    expect(FilterGenresMode.any.value, 1);
    expect(value.toJson()['e84'], 1);
  });
  test('FilterGenresMode.exclude wire value', () {
    final value = EnumFixture.fromJson({'e84': 2});
    expect(value.e84, FilterGenresMode.exclude);
    expect(FilterGenresMode.exclude.value, 2);
    expect(value.toJson()['e84'], 2);
  });
  test('FilterAgeRating.lessThan13 wire value', () {
    final value = EnumFixture.fromJson({'e85': 1});
    expect(value.e85, FilterAgeRating.lessThan13);
    expect(FilterAgeRating.lessThan13.value, 1);
    expect(value.toJson()['e85'], 1);
  });
  test('FilterAgeRating.moreThan13 wire value', () {
    final value = EnumFixture.fromJson({'e85': 2});
    expect(value.e85, FilterAgeRating.moreThan13);
    expect(FilterAgeRating.moreThan13.value, 2);
    expect(value.toJson()['e85'], 2);
  });
  test('FilterAgeRating.moreThan26 wire value', () {
    final value = EnumFixture.fromJson({'e85': 3});
    expect(value.e85, FilterAgeRating.moreThan26);
    expect(FilterAgeRating.moreThan26.value, 3);
    expect(value.toJson()['e85'], 3);
  });
  test('FilterAgeRating.moreThan100 wire value', () {
    final value = EnumFixture.fromJson({'e85': 4});
    expect(value.e85, FilterAgeRating.moreThan100);
    expect(FilterAgeRating.moreThan100.value, 4);
    expect(value.toJson()['e85'], 4);
  });
  test('FilterSort.dateUpdateDesc wire value', () {
    final value = EnumFixture.fromJson({'e86': 0});
    expect(value.e86, FilterSort.dateUpdateDesc);
    expect(FilterSort.dateUpdateDesc.value, 0);
    expect(value.toJson()['e86'], 0);
  });
  test('FilterSort.gradeDesc wire value', () {
    final value = EnumFixture.fromJson({'e86': 1});
    expect(value.e86, FilterSort.gradeDesc);
    expect(FilterSort.gradeDesc.value, 1);
    expect(value.toJson()['e86'], 1);
  });
  test('FilterSort.yearDesc wire value', () {
    final value = EnumFixture.fromJson({'e86': 2});
    expect(value.e86, FilterSort.yearDesc);
    expect(FilterSort.yearDesc.value, 2);
    expect(value.toJson()['e86'], 2);
  });
  test('FilterSort.popularDesc wire value', () {
    final value = EnumFixture.fromJson({'e86': 3});
    expect(value.e86, FilterSort.popularDesc);
    expect(FilterSort.popularDesc.value, 3);
    expect(value.toJson()['e86'], 3);
  });
  test('FilterSort.dateUpdateAsc wire value', () {
    final value = EnumFixture.fromJson({'e86': 4});
    expect(value.e86, FilterSort.dateUpdateAsc);
    expect(FilterSort.dateUpdateAsc.value, 4);
    expect(value.toJson()['e86'], 4);
  });
  test('FilterSort.gradeAsc wire value', () {
    final value = EnumFixture.fromJson({'e86': 5});
    expect(value.e86, FilterSort.gradeAsc);
    expect(FilterSort.gradeAsc.value, 5);
    expect(value.toJson()['e86'], 5);
  });
  test('FilterSort.yearAsc wire value', () {
    final value = EnumFixture.fromJson({'e86': 6});
    expect(value.e86, FilterSort.yearAsc);
    expect(FilterSort.yearAsc.value, 6);
    expect(value.toJson()['e86'], 6);
  });
  test('FilterSort.popularAsc wire value', () {
    final value = EnumFixture.fromJson({'e86': 7});
    expect(value.e86, FilterSort.popularAsc);
    expect(FilterSort.popularAsc.value, 7);
    expect(value.toJson()['e86'], 7);
  });
  test('ReleaseVideoResult.invalidReleaseId wire value', () {
    final value = EnumFixture.fromJson({'e87': 2});
    expect(value.e87, ReleaseVideoResult.invalidReleaseId);
    expect(ReleaseVideoResult.invalidReleaseId.value, 2);
    expect(value.toJson()['e87'], 2);
  });
  test('BookmarkExportResult.invalidProfileLists wire value', () {
    final value = EnumFixture.fromJson({'e88': 2});
    expect(value.e88, BookmarkExportResult.invalidProfileLists);
    expect(BookmarkExportResult.invalidProfileLists.value, 2);
    expect(value.toJson()['e88'], 2);
  });
  test('BookmarkExportResult.invalidExtraFields wire value', () {
    final value = EnumFixture.fromJson({'e88': 3});
    expect(value.e88, BookmarkExportResult.invalidExtraFields);
    expect(BookmarkExportResult.invalidExtraFields.value, 3);
    expect(value.toJson()['e88'], 3);
  });
  test('ReleaseVideoAppealResult.invalidReleaseId wire value', () {
    final value = EnumFixture.fromJson({'e89': 2});
    expect(value.e89, ReleaseVideoAppealResult.invalidReleaseId);
    expect(ReleaseVideoAppealResult.invalidReleaseId.value, 2);
    expect(value.toJson()['e89'], 2);
  });
  test('ReleaseVideoAppealResult.invalidTitle wire value', () {
    final value = EnumFixture.fromJson({'e89': 3});
    expect(value.e89, ReleaseVideoAppealResult.invalidTitle);
    expect(ReleaseVideoAppealResult.invalidTitle.value, 3);
    expect(value.toJson()['e89'], 3);
  });
  test('ReleaseVideoAppealResult.invalidCategory wire value', () {
    final value = EnumFixture.fromJson({'e89': 4});
    expect(value.e89, ReleaseVideoAppealResult.invalidCategory);
    expect(ReleaseVideoAppealResult.invalidCategory.value, 4);
    expect(value.toJson()['e89'], 4);
  });
  test('ReleaseVideoAppealResult.invalidUrl wire value', () {
    final value = EnumFixture.fromJson({'e89': 5});
    expect(value.e89, ReleaseVideoAppealResult.invalidUrl);
    expect(ReleaseVideoAppealResult.invalidUrl.value, 5);
    expect(value.toJson()['e89'], 5);
  });
  test('ReleaseVideoAppealResult.appealAlreadySent wire value', () {
    final value = EnumFixture.fromJson({'e89': 6});
    expect(value.e89, ReleaseVideoAppealResult.appealAlreadySent);
    expect(ReleaseVideoAppealResult.appealAlreadySent.value, 6);
    expect(value.toJson()['e89'], 6);
  });
  test('ReleaseVideoAppealResult.tooManyAppeals wire value', () {
    final value = EnumFixture.fromJson({'e89': 7});
    expect(value.e89, ReleaseVideoAppealResult.tooManyAppeals);
    expect(ReleaseVideoAppealResult.tooManyAppeals.value, 7);
    expect(value.toJson()['e89'], 7);
  });
  test('ReleaseVideoAppealResult.appealNotOwned wire value', () {
    final value = EnumFixture.fromJson({'e89': 8});
    expect(value.e89, ReleaseVideoAppealResult.appealNotOwned);
    expect(ReleaseVideoAppealResult.appealNotOwned.value, 8);
    expect(value.toJson()['e89'], 8);
  });
  test('ReleaseVideoAppealResult.appealNotFound wire value', () {
    final value = EnumFixture.fromJson({'e89': 9});
    expect(value.e89, ReleaseVideoAppealResult.appealNotFound);
    expect(ReleaseVideoAppealResult.appealNotFound.value, 9);
    expect(value.toJson()['e89'], 9);
  });
  test('ReleaseVideoAppealResult.appealDisabled wire value', () {
    final value = EnumFixture.fromJson({'e89': 10});
    expect(value.e89, ReleaseVideoAppealResult.appealDisabled);
    expect(ReleaseVideoAppealResult.appealDisabled.value, 10);
    expect(value.toJson()['e89'], 10);
  });
  test('ReportType.article wire value', () {
    final value = EnumFixture.fromJson({'e90': "article"});
    expect(value.e90, ReportType.article);
    expect(ReportType.article.value, "article");
    expect(value.toJson()['e90'], "article");
  });
  test('ReportType.articleComment wire value', () {
    final value = EnumFixture.fromJson({'e90': "comment/article"});
    expect(value.e90, ReportType.articleComment);
    expect(ReportType.articleComment.value, "comment/article");
    expect(value.toJson()['e90'], "comment/article");
  });
  test('ReportType.channel wire value', () {
    final value = EnumFixture.fromJson({'e90': "channel"});
    expect(value.e90, ReportType.channel);
    expect(ReportType.channel.value, "channel");
    expect(value.toJson()['e90'], "channel");
  });
  test('ReportType.collection wire value', () {
    final value = EnumFixture.fromJson({'e90': "collection"});
    expect(value.e90, ReportType.collection);
    expect(ReportType.collection.value, "collection");
    expect(value.toJson()['e90'], "collection");
  });
  test('ReportType.collectionComment wire value', () {
    final value = EnumFixture.fromJson({'e90': "comment/collection"});
    expect(value.e90, ReportType.collectionComment);
    expect(ReportType.collectionComment.value, "comment/collection");
    expect(value.toJson()['e90'], "comment/collection");
  });
  test('ReportType.episode wire value', () {
    final value = EnumFixture.fromJson({'e90': "episode"});
    expect(value.e90, ReportType.episode);
    expect(ReportType.episode.value, "episode");
    expect(value.toJson()['e90'], "episode");
  });
  test('ReportType.profile wire value', () {
    final value = EnumFixture.fromJson({'e90': "profile"});
    expect(value.e90, ReportType.profile);
    expect(ReportType.profile.value, "profile");
    expect(value.toJson()['e90'], "profile");
  });
  test('ReportType.release wire value', () {
    final value = EnumFixture.fromJson({'e90': "release"});
    expect(value.e90, ReportType.release);
    expect(ReportType.release.value, "release");
    expect(value.toJson()['e90'], "release");
  });
  test('ReportType.releaseComment wire value', () {
    final value = EnumFixture.fromJson({'e90': "comment/release"});
    expect(value.e90, ReportType.releaseComment);
    expect(ReportType.releaseComment.value, "comment/release");
    expect(value.toJson()['e90'], "comment/release");
  });
  test('ReportResult.entityNotFound wire value', () {
    final value = EnumFixture.fromJson({'e91': 2});
    expect(value.e91, ReportResult.entityNotFound);
    expect(ReportResult.entityNotFound.value, 2);
    expect(value.toJson()['e91'], 2);
  });
  test('ReportResult.invalidMessage wire value', () {
    final value = EnumFixture.fromJson({'e91': 3});
    expect(value.e91, ReportResult.invalidMessage);
    expect(ReportResult.invalidMessage.value, 3);
    expect(value.toJson()['e91'], 3);
  });
  test('ReportResult.reasonNotFound wire value', () {
    final value = EnumFixture.fromJson({'e91': 4});
    expect(value.e91, ReportResult.reasonNotFound);
    expect(ReportResult.reasonNotFound.value, 4);
    expect(value.toJson()['e91'], 4);
  });
}
