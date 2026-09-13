import 'package:json_annotation/json_annotation.dart';

enum CheckLoginResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin");

  const CheckLoginResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum LoginResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  invalidPassword(3, "InvalidPassword");

  const LoginResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RegisterResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  invalidEmail(3, "InvalidEmail"),
  @JsonValue(4)
  invalidPassword(4, "InvalidPassword"),
  @JsonValue(5)
  loginAlreadyTaken(5, "LoginAlreadyTaken"),
  @JsonValue(6)
  emailAlreadyTaken(6, "EmailAlreadyTaken"),
  @JsonValue(7)
  codeAlreadySend(7, "CodeAlreadySend"),
  @JsonValue(8)
  codeCannotSend(8, "CodeCannotSend"),
  @JsonValue(9)
  emailServiceDisallowed(9, "EmailServiceDisallowed"),
  @JsonValue(10)
  tooManyRegistrations(10, "TooManyRegistrations");

  const RegisterResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RegisterVerifyResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  invalidEmail(3, "InvalidEmail"),
  @JsonValue(4)
  invalidPassword(4, "InvalidPassword"),
  @JsonValue(5)
  loginAlreadyTaken(5, "LoginAlreadyTaken"),
  @JsonValue(6)
  emailAlreadyTaken(6, "EmailAlreadyTaken"),
  @JsonValue(7)
  codeAlreadySend(7, "CodeAlreadySend"),
  @JsonValue(8)
  codeCannotSend(8, "CodeCannotSend"),
  @JsonValue(9)
  invalidHash(9, "InvalidHash"),
  @JsonValue(10)
  emailServiceDisallowed(10, "EmailServiceDisallowed"),
  @JsonValue(11)
  tooManyRegistrations(11, "TooManyRegistrations");

  const RegisterVerifyResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RestorePasswordResult {
  @JsonValue(2)
  profileNotFound(2, "ProfileNotFound"),
  @JsonValue(3)
  codeAlreadySend(3, "CodeAlreadySend"),
  @JsonValue(4)
  codeCannotSend(4, "CodeCannotSend");

  const RestorePasswordResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RestorePasswordVerifyResult {
  @JsonValue(2)
  profileNotFound(2, "ProfileNotFound"),
  @JsonValue(3)
  invalidPassword(3, "InvalidPassword"),
  @JsonValue(4)
  codeInvalid(4, "CodeInvalid"),
  @JsonValue(5)
  codeExpired(5, "CodeExpired"),
  @JsonValue(6)
  invalidHash(6, "InvalidHash");

  const RestorePasswordVerifyResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RestoreResult {
  @JsonValue(2)
  profileNotFound(2, "ProfileNotFound"),
  @JsonValue(3)
  codeAlreadySend(3, "CodeAlreadySend"),
  @JsonValue(4)
  codeCannotSend(4, "CodeCannotSend");

  const RestoreResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ResendResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  invalidEmail(3, "InvalidEmail"),
  @JsonValue(4)
  invalidPassword(4, "InvalidPassword"),
  @JsonValue(5)
  invalidHash(5, "InvalidHash"),
  @JsonValue(6)
  codeCannotSend(6, "CodeCannotSend");

  const ResendResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RestoreResendResult {
  @JsonValue(2)
  profileNotFound(2, "ProfileNotFound"),
  @JsonValue(3)
  invalidHash(3, "InvalidHash"),
  @JsonValue(4)
  codeCannotSend(4, "CodeCannotSend");

  const RestoreResendResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RestoreVerifyResult {
  @JsonValue(2)
  profileNotFound(2, "ProfileNotFound"),
  @JsonValue(3)
  invalidPassword(3, "InvalidPassword"),
  @JsonValue(4)
  codeInvalid(4, "CodeInvalid"),
  @JsonValue(5)
  codeExpired(5, "CodeExpired"),
  @JsonValue(6)
  invalidHash(6, "InvalidHash");

  const RestoreVerifyResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum SignInResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  invalidPassword(3, "InvalidPassword");

  const SignInResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum GoogleResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  notRegistered(3, "NotRegistered"),
  @JsonValue(4)
  invalidLogin(4, "InvalidLogin"),
  @JsonValue(5)
  invalidEmail(5, "InvalidEmail"),
  @JsonValue(6)
  loginAlreadyTaken(6, "LoginAlreadyTaken"),
  @JsonValue(7)
  emailAlreadyTaken(7, "EmailAlreadyTaken"),
  @JsonValue(8)
  emailChanged(8, "EmailChanged"),
  @JsonValue(9)
  emailChangedAndCodeAlreadySend(9, "EmailChangedAndCodeAlreadySend"),
  @JsonValue(10)
  emailServiceDisallowed(10, "EmailServiceDisallowed"),
  @JsonValue(11)
  tooManyRegistrations(11, "TooManyRegistrations");

  const GoogleResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum TelegramResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  notRegistered(3, "NotRegistered"),
  @JsonValue(4)
  invalidLogin(4, "InvalidLogin"),
  @JsonValue(5)
  invalidEmail(5, "InvalidEmail"),
  @JsonValue(6)
  loginAlreadyTaken(6, "LoginAlreadyTaken"),
  @JsonValue(7)
  emailAlreadyTaken(7, "EmailAlreadyTaken"),
  @JsonValue(8)
  codeAlreadySend(8, "CodeAlreadySend"),
  @JsonValue(9)
  emailServiceDisallowed(9, "EmailServiceDisallowed"),
  @JsonValue(10)
  tooManyRegistrations(10, "TooManyRegistrations");

  const TelegramResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum VkResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  notRegistered(3, "NotRegistered"),
  @JsonValue(4)
  invalidLogin(4, "InvalidLogin"),
  @JsonValue(5)
  invalidEmail(5, "InvalidEmail"),
  @JsonValue(6)
  loginAlreadyTaken(6, "LoginAlreadyTaken"),
  @JsonValue(7)
  emailAlreadyTaken(7, "EmailAlreadyTaken"),
  @JsonValue(8)
  codeAlreadySend(8, "CodeAlreadySend"),
  @JsonValue(9)
  emailServiceDisallowed(9, "EmailServiceDisallowed"),
  @JsonValue(10)
  tooManyRegistrations(10, "TooManyRegistrations");

  const VkResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum YandexResult {
  @JsonValue(2)
  invalidRequest(2, "InvalidRequest"),
  @JsonValue(3)
  notRegistered(3, "NotRegistered"),
  @JsonValue(4)
  invalidLogin(4, "InvalidLogin"),
  @JsonValue(5)
  invalidEmail(5, "InvalidEmail"),
  @JsonValue(6)
  loginAlreadyTaken(6, "LoginAlreadyTaken"),
  @JsonValue(7)
  emailAlreadyTaken(7, "EmailAlreadyTaken"),
  @JsonValue(8)
  codeAlreadySend(8, "CodeAlreadySend"),
  @JsonValue(9)
  emailServiceDisallowed(9, "EmailServiceDisallowed"),
  @JsonValue(10)
  tooManyRegistrations(10, "TooManyRegistrations");

  const YandexResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum SignUpResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  invalidEmail(3, "InvalidEmail"),
  @JsonValue(4)
  invalidPassword(4, "InvalidPassword"),
  @JsonValue(5)
  loginAlreadyTaken(5, "LoginAlreadyTaken"),
  @JsonValue(6)
  emailAlreadyTaken(6, "EmailAlreadyTaken"),
  @JsonValue(7)
  codeAlreadySend(7, "CodeAlreadySend"),
  @JsonValue(8)
  codeCannotSend(8, "CodeCannotSend"),
  @JsonValue(9)
  emailServiceDisallowed(9, "EmailServiceDisallowed"),
  @JsonValue(10)
  tooManyRegistrations(10, "TooManyRegistrations");

  const SignUpResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum VerifyResult {
  @JsonValue(2)
  invalidLogin(2, "InvalidLogin"),
  @JsonValue(3)
  invalidEmail(3, "InvalidEmail"),
  @JsonValue(4)
  invalidPassword(4, "InvalidPassword"),
  @JsonValue(5)
  loginAlreadyTaken(5, "LoginAlreadyTaken"),
  @JsonValue(6)
  emailAlreadyTaken(6, "EmailAlreadyTaken"),
  @JsonValue(7)
  codeInvalid(7, "CodeInvalid"),
  @JsonValue(8)
  codeExpired(8, "CodeExpired"),
  @JsonValue(9)
  invalidHash(9, "InvalidHash"),
  @JsonValue(10)
  emailServiceDisallowed(10, "EmailServiceDisallowed"),
  @JsonValue(11)
  tooManyRegistrations(11, "TooManyRegistrations");

  const VerifyResult(this.value, this.codeName);
  final int value;
  final String codeName;
}
