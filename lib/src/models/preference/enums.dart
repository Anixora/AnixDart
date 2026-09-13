import 'package:json_annotation/json_annotation.dart';

enum PrivacyState {
  @JsonValue(0)
  all(0, "All"),
  @JsonValue(1)
  onlyFriends(1, "OnlyFriends"),
  @JsonValue(2)
  onlyMe(2, "OnlyMe");

  const PrivacyState(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum PrivacyFriendRequestState {
  @JsonValue(0)
  all(0, "All"),
  @JsonValue(1)
  onlyMe(1, "OnlyMe");

  const PrivacyFriendRequestState(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChangeEmailResult {
  @JsonValue(2)
  invalidPassword(2, "InvalidPassword"),
  @JsonValue(3)
  invalidOldEmail(3, "InvalidOldEmail"),
  @JsonValue(4)
  invalidEmail(4, "InvalidEmail"),
  @JsonValue(5)
  emailAlreadyTaken(5, "EmailAlreadyTaken"),
  @JsonValue(6)
  codeAlreadySend(6, "CodeAlreadySend"),
  @JsonValue(7)
  codeCannotSend(7, "CodeCannotSend");

  const ChangeEmailResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChangeEmailResendResult {
  @JsonValue(2)
  invalidPassword(2, "InvalidPassword"),
  @JsonValue(3)
  invalidOldEmail(3, "InvalidOldEmail"),
  @JsonValue(4)
  invalidHash(4, "InvalidHash"),
  @JsonValue(5)
  codeCannotSend(5, "CodeCannotSend");

  const ChangeEmailResendResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChangeEmailVerifyResult {
  @JsonValue(2)
  invalidEmail(2, "InvalidEmail"),
  @JsonValue(3)
  codeInvalid(3, "CodeInvalid"),
  @JsonValue(4)
  codeExpired(4, "CodeExpired"),
  @JsonValue(5)
  invalidHash(5, "InvalidHash"),
  @JsonValue(6)
  emailAlreadyTaken(6, "EmailAlreadyTaken");

  const ChangeEmailVerifyResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChangeLoginResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  loginAlreadyTaken(3, "LoginAlreadyTaken"),
  @JsonValue(4)
  timeLimit(4, "TimeLimit");

  const ChangeLoginResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChangePasswordResult {
  @JsonValue(2)
  invalidPassword(2, "InvalidPassword"),
  @JsonValue(3)
  invalidCurrentPassword(3, "InvalidCurrentPassword");

  const ChangePasswordResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum GoogleBindResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  googleAlreadyBound(3, "GoogleAlreadyBound");

  const GoogleBindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum GoogleUnbindResult {
  @JsonValue(2)
  googleNotBound(2, "GoogleNotBound");

  const GoogleUnbindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ProfileSelectThemeResult {
  @JsonValue(2)
  themeNotFound(2, "ThemeNotFound"),
  @JsonValue(3)
  themeNotAvaliable(3, "ThemeNotAvaliable");

  const ProfileSelectThemeResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum SocialEditResult {
  @JsonValue(2)
  invalidVK(2, "InvalidVK"),
  @JsonValue(3)
  invalidTelegram(3, "InvalidTelegram"),
  @JsonValue(4)
  invalidInstagram(4, "InvalidInstagram"),
  @JsonValue(5)
  invalidTiktok(5, "InvalidTiktok"),
  @JsonValue(6)
  invalidDiscord(6, "InvalidDiscord");

  const SocialEditResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum TelegramBindResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  telegramAlreadyBound(3, "TelegramAlreadyBound");

  const TelegramBindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum TelegramUnbindResult {
  @JsonValue(2)
  telegramNotBound(2, "TelegramNotBound");

  const TelegramUnbindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum VkBindResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  vkAlreadyBound(3, "VkAlreadyBound");

  const VkBindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum VkUnbindResult {
  @JsonValue(2)
  vkNotBound(2, "VkNotBound");

  const VkUnbindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum YandexBindResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  yandexAlreadyBound(3, "YandexAlreadyBound");

  const YandexBindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum YandexUnbindResult {
  @JsonValue(2)
  yandexNotBound(2, "YandexNotBound");

  const YandexUnbindResult(this.value, this.codeName);
  final int value;
  final String codeName;
}
