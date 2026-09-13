import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangeEmailRequest {
  const ChangeEmailRequest({
    required this.newEmail,
    required this.currentEmail,
    required this.currentPassword,
  });

  @JsonKey(name: 'new_email')
  final String newEmail;

  @JsonKey(name: 'current_email')
  final String currentEmail;

  @JsonKey(name: 'current_password')
  final String currentPassword;

  factory ChangeEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeEmailRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangeEmailResendRequest {
  const ChangeEmailResendRequest({
    required this.newEmail,
    required this.currentEmail,
    required this.currentPassword,
    required this.hash,
  });

  @JsonKey(name: 'new_email')
  final String newEmail;

  @JsonKey(name: 'current_email')
  final String currentEmail;

  @JsonKey(name: 'current_password')
  final String currentPassword;

  @JsonKey(name: 'hash')
  final String hash;

  factory ChangeEmailResendRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailResendRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeEmailResendRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangeEmailVerifyRequest {
  const ChangeEmailVerifyRequest({
    required this.newEmail,
    required this.code,
    required this.hash,
  });

  @JsonKey(name: 'new_email')
  final String newEmail;

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'hash')
  final String hash;

  factory ChangeEmailVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailVerifyRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeEmailVerifyRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangePasswordRequest {
  const ChangePasswordRequest({
    required this.currentPassword,
    required this.newPassword,
  });

  @JsonKey(name: 'current_password')
  final String currentPassword;

  @JsonKey(name: 'new_password')
  final String newPassword;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SocialRequest {
  const SocialRequest({
    required this.vkPage,
    required this.tgPage,
    required this.instPage,
    required this.ttPage,
    required this.discordPage,
  });

  @JsonKey(name: 'vkPage')
  final String vkPage;

  @JsonKey(name: 'tgPage')
  final String tgPage;

  @JsonKey(name: 'instPage')
  final String instPage;

  @JsonKey(name: 'ttPage')
  final String ttPage;

  @JsonKey(name: 'discordPage')
  final String discordPage;

  factory SocialRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SocialRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangeEmailResponse {
  const ChangeEmailResponse({
    required this.code,
    this.hash,
    this.timestampExpires,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'hash')
  final String? hash;

  @JsonKey(name: 'timestamp_expires')
  final int? timestampExpires;

  factory ChangeEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeEmailResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangeEmailResendResponse {
  const ChangeEmailResendResponse({required this.code, this.timestampExpires});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'timestamp_expires')
  final int? timestampExpires;

  factory ChangeEmailResendResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailResendResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeEmailResendResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangeLoginResponse {
  const ChangeLoginResponse({required this.code, this.suggestedLogins});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'suggested_logins')
  final List<String>? suggestedLogins;

  factory ChangeLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangeLoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeLoginResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class LoginInfoResponse {
  const LoginInfoResponse({
    required this.code,
    this.login,
    this.avatar,
    this.isChangeAvaliable,
    this.lastChangeAt,
    this.nextChangeAvaliableAt,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'login')
  final String? login;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'is_change_avaliable')
  final bool? isChangeAvaliable;

  @JsonKey(name: 'last_change_at')
  final int? lastChangeAt;

  @JsonKey(name: 'next_change_avaliable_at')
  final int? nextChangeAvaliableAt;

  factory LoginInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginInfoResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangePasswordResponse {
  const ChangePasswordResponse({required this.code, this.token});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'token')
  final String? token;

  factory ChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChangePasswordResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileSelectThemeResponse {
  const ProfileSelectThemeResponse({required this.code, this.theme});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'theme')
  final Theme? theme;

  factory ProfileSelectThemeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileSelectThemeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileSelectThemeResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileSocialResponse {
  const ProfileSocialResponse({
    required this.code,
    this.discordPage,
    this.instPage,
    this.tgPage,
    this.ttPage,
    this.vkPage,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'discord_page')
  final String? discordPage;

  @JsonKey(name: 'inst_page')
  final String? instPage;

  @JsonKey(name: 'tg_page')
  final String? tgPage;

  @JsonKey(name: 'tt_page')
  final String? ttPage;

  @JsonKey(name: 'vk_page')
  final String? vkPage;

  factory ProfileSocialResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileSocialResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileSocialResponseToJson(this);
}
