import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CheckLoginResponse {
  const CheckLoginResponse({
    required this.code,
    this.available,
    this.suggestedLogins,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'available')
  final bool? available;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  factory CheckLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckLoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CheckLoginResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class FirebaseResponse {
  const FirebaseResponse({required this.code, this.topicName});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'topicName')
  final String? topicName;

  factory FirebaseResponse.fromJson(Map<String, dynamic> json) =>
      _$FirebaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FirebaseResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ResendRequest {
  const ResendRequest({
    required this.login,
    required this.email,
    required this.password,
    required this.vkAccessToken,
    required this.googleIdToken,
    required this.telegramIdToken,
    required this.yandexAccessToken,
    required this.hash,
  });

  @JsonKey(name: 'login')
  final String login;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'vkAccessToken')
  final String vkAccessToken;

  @JsonKey(name: 'googleIdToken')
  final String googleIdToken;

  @JsonKey(name: 'telegramIdToken')
  final String telegramIdToken;

  @JsonKey(name: 'yandexAccessToken')
  final String yandexAccessToken;

  @JsonKey(name: 'hash')
  final String hash;

  factory ResendRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ResendRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class RestoreResendRequest {
  const RestoreResendRequest({
    required this.data,
    required this.password,
    required this.hash,
  });

  @JsonKey(name: 'data')
  final String data;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'hash')
  final String hash;

  factory RestoreResendRequest.fromJson(Map<String, dynamic> json) =>
      _$RestoreResendRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RestoreResendRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class RestoreVerifyRequest {
  const RestoreVerifyRequest({
    required this.data,
    required this.password,
    required this.hash,
    required this.code,
  });

  @JsonKey(name: 'data')
  final String data;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'hash')
  final String hash;

  @JsonKey(name: 'code')
  final String code;

  factory RestoreVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$RestoreVerifyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RestoreVerifyRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SignInRequest {
  const SignInRequest({required this.login, required this.password});

  @JsonKey(name: 'login')
  final String login;

  @JsonKey(name: 'password')
  final String password;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SignUpRequest {
  const SignUpRequest({
    required this.login,
    required this.email,
    required this.password,
  });

  @JsonKey(name: 'login')
  final String login;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'password')
  final String password;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class VerifyRequest {
  const VerifyRequest({
    required this.login,
    required this.email,
    this.password,
    this.vkAccessToken,
    this.googleIdToken,
    this.telegramIdToken,
    this.yandexAccessToken,
    required this.hash,
    required this.code,
  });

  @JsonKey(name: 'login')
  final String login;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'password', includeIfNull: false)
  final String? password;

  @JsonKey(name: 'vkAccessToken', includeIfNull: false)
  final String? vkAccessToken;

  @JsonKey(name: 'googleIdToken', includeIfNull: false)
  final String? googleIdToken;

  @JsonKey(name: 'telegramIdToken', includeIfNull: false)
  final String? telegramIdToken;

  @JsonKey(name: 'yandexAccessToken', includeIfNull: false)
  final String? yandexAccessToken;

  @JsonKey(name: 'hash')
  final String hash;

  @JsonKey(name: 'code')
  final String code;

  factory VerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SignUpResponse {
  const SignUpResponse({
    required this.code,
    this.codeTimestampExpires,
    this.hash,
    this.suggestedLogins,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'codeTimestampExpires')
  final int? codeTimestampExpires;

  @JsonKey(name: 'hash')
  final String? hash;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class VerifyResponse {
  const VerifyResponse({
    required this.code,
    this.profile,
    this.profileToken,
    this.suggestedLogins,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  factory VerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class TimestampResponse {
  const TimestampResponse({required this.code, this.timestampExpires});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'timestampExpires')
  final int? timestampExpires;

  factory TimestampResponse.fromJson(Map<String, dynamic> json) =>
      _$TimestampResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TimestampResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class AuthProfileResponse {
  const AuthProfileResponse({
    required this.code,
    this.profile,
    this.profileToken,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  factory AuthProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthProfileResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class OAuthSignInResponse {
  const OAuthSignInResponse({
    required this.code,
    this.profile,
    this.profileToken,
    this.codeTimestampExpires,
    this.suggestedLogins,
    this.hash,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  @JsonKey(name: 'codeTimestampExpires')
  final int? codeTimestampExpires;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  @JsonKey(name: 'hash')
  final String? hash;

  factory OAuthSignInResponse.fromJson(Map<String, dynamic> json) =>
      _$OAuthSignInResponseFromJson(json);
  Map<String, dynamic> toJson() => _$OAuthSignInResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ResendResponse {
  const ResendResponse({required this.code, this.timestampExpires});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'timestampExpires')
  final int? timestampExpires;

  factory ResendResponse.fromJson(Map<String, dynamic> json) =>
      _$ResendResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResendResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class RestoreResponse {
  const RestoreResponse({
    required this.code,
    this.hash,
    this.codeTimestampExpires,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'hash')
  final String? hash;

  @JsonKey(name: 'codeTimestampExpires')
  final int? codeTimestampExpires;

  factory RestoreResponse.fromJson(Map<String, dynamic> json) =>
      _$RestoreResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RestoreResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class RestoreResendResponse {
  const RestoreResendResponse({required this.code, this.timestampExpires});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'timestampExpires')
  final int? timestampExpires;

  factory RestoreResendResponse.fromJson(Map<String, dynamic> json) =>
      _$RestoreResendResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RestoreResendResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class RestoreVerifyResponse {
  const RestoreVerifyResponse({
    required this.code,
    this.profile,
    this.profileToken,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  factory RestoreVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$RestoreVerifyResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RestoreVerifyResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SignInResponse {
  const SignInResponse({required this.code, this.profile, this.profileToken});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class GoogleResponse {
  const GoogleResponse({
    required this.code,
    this.profile,
    this.profileToken,
    this.codeTimestampExpires,
    this.suggestedLogins,
    this.hash,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  @JsonKey(name: 'codeTimestampExpires')
  final int? codeTimestampExpires;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  @JsonKey(name: 'hash')
  final String? hash;

  factory GoogleResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GoogleResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class TelegramResponse {
  const TelegramResponse({
    required this.code,
    this.profile,
    this.profileToken,
    this.codeTimestampExpires,
    this.suggestedLogins,
    this.hash,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  @JsonKey(name: 'codeTimestampExpires')
  final int? codeTimestampExpires;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  @JsonKey(name: 'hash')
  final String? hash;

  factory TelegramResponse.fromJson(Map<String, dynamic> json) =>
      _$TelegramResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TelegramResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class VkResponse {
  const VkResponse({
    required this.code,
    this.profile,
    this.profileToken,
    this.codeTimestampExpires,
    this.suggestedLogins,
    this.hash,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  @JsonKey(name: 'codeTimestampExpires')
  final int? codeTimestampExpires;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  @JsonKey(name: 'hash')
  final String? hash;

  factory VkResponse.fromJson(Map<String, dynamic> json) =>
      _$VkResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VkResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class YandexResponse {
  const YandexResponse({
    required this.code,
    this.profile,
    this.profileToken,
    this.codeTimestampExpires,
    this.suggestedLogins,
    this.hash,
    this.email,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'profileToken')
  final ProfileToken? profileToken;

  @JsonKey(name: 'codeTimestampExpires')
  final int? codeTimestampExpires;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  @JsonKey(name: 'hash')
  final String? hash;

  @JsonKey(name: 'email')
  final String? email;

  factory YandexResponse.fromJson(Map<String, dynamic> json) =>
      _$YandexResponseFromJson(json);
  Map<String, dynamic> toJson() => _$YandexResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class OAuthSignUpRequest {
  const OAuthSignUpRequest({required this.login, required this.email});

  @JsonKey(name: 'login')
  final String login;

  @JsonKey(name: 'email')
  final String email;

  factory OAuthSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$OAuthSignUpRequestFromJson(json);
  Map<String, dynamic> toJson() => _$OAuthSignUpRequestToJson(this);
}
