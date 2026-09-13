// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeEmailRequest _$ChangeEmailRequestFromJson(Map<String, dynamic> json) =>
    ChangeEmailRequest(
      newEmail: json['new_email'] as String,
      currentEmail: json['current_email'] as String,
      currentPassword: json['current_password'] as String,
    );

Map<String, dynamic> _$ChangeEmailRequestToJson(ChangeEmailRequest instance) =>
    <String, dynamic>{
      'new_email': instance.newEmail,
      'current_email': instance.currentEmail,
      'current_password': instance.currentPassword,
    };

ChangeEmailResendRequest _$ChangeEmailResendRequestFromJson(
  Map<String, dynamic> json,
) => ChangeEmailResendRequest(
  newEmail: json['new_email'] as String,
  currentEmail: json['current_email'] as String,
  currentPassword: json['current_password'] as String,
  hash: json['hash'] as String,
);

Map<String, dynamic> _$ChangeEmailResendRequestToJson(
  ChangeEmailResendRequest instance,
) => <String, dynamic>{
  'new_email': instance.newEmail,
  'current_email': instance.currentEmail,
  'current_password': instance.currentPassword,
  'hash': instance.hash,
};

ChangeEmailVerifyRequest _$ChangeEmailVerifyRequestFromJson(
  Map<String, dynamic> json,
) => ChangeEmailVerifyRequest(
  newEmail: json['new_email'] as String,
  code: (json['code'] as num).toInt(),
  hash: json['hash'] as String,
);

Map<String, dynamic> _$ChangeEmailVerifyRequestToJson(
  ChangeEmailVerifyRequest instance,
) => <String, dynamic>{
  'new_email': instance.newEmail,
  'code': instance.code,
  'hash': instance.hash,
};

ChangePasswordRequest _$ChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => ChangePasswordRequest(
  currentPassword: json['current_password'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$ChangePasswordRequestToJson(
  ChangePasswordRequest instance,
) => <String, dynamic>{
  'current_password': instance.currentPassword,
  'new_password': instance.newPassword,
};

SocialRequest _$SocialRequestFromJson(Map<String, dynamic> json) =>
    SocialRequest(
      vkPage: json['vkPage'] as String,
      tgPage: json['tgPage'] as String,
      instPage: json['instPage'] as String,
      ttPage: json['ttPage'] as String,
      discordPage: json['discordPage'] as String,
    );

Map<String, dynamic> _$SocialRequestToJson(SocialRequest instance) =>
    <String, dynamic>{
      'vkPage': instance.vkPage,
      'tgPage': instance.tgPage,
      'instPage': instance.instPage,
      'ttPage': instance.ttPage,
      'discordPage': instance.discordPage,
    };

ChangeEmailResponse _$ChangeEmailResponseFromJson(Map<String, dynamic> json) =>
    ChangeEmailResponse(
      code: (json['code'] as num).toInt(),
      hash: json['hash'] as String?,
      timestampExpires: (json['timestamp_expires'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChangeEmailResponseToJson(
  ChangeEmailResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'hash': instance.hash,
  'timestamp_expires': instance.timestampExpires,
};

ChangeEmailResendResponse _$ChangeEmailResendResponseFromJson(
  Map<String, dynamic> json,
) => ChangeEmailResendResponse(
  code: (json['code'] as num).toInt(),
  timestampExpires: (json['timestamp_expires'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChangeEmailResendResponseToJson(
  ChangeEmailResendResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'timestamp_expires': instance.timestampExpires,
};

ChangeLoginResponse _$ChangeLoginResponseFromJson(Map<String, dynamic> json) =>
    ChangeLoginResponse(
      code: (json['code'] as num).toInt(),
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ChangeLoginResponseToJson(
  ChangeLoginResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'suggested_logins': instance.suggestedLogins,
};

LoginInfoResponse _$LoginInfoResponseFromJson(Map<String, dynamic> json) =>
    LoginInfoResponse(
      code: (json['code'] as num).toInt(),
      login: json['login'] as String?,
      avatar: json['avatar'] as String?,
      isChangeAvaliable: json['is_change_avaliable'] as bool?,
      lastChangeAt: (json['last_change_at'] as num?)?.toInt(),
      nextChangeAvaliableAt: (json['next_change_avaliable_at'] as num?)
          ?.toInt(),
    );

Map<String, dynamic> _$LoginInfoResponseToJson(LoginInfoResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'login': instance.login,
      'avatar': instance.avatar,
      'is_change_avaliable': instance.isChangeAvaliable,
      'last_change_at': instance.lastChangeAt,
      'next_change_avaliable_at': instance.nextChangeAvaliableAt,
    };

ChangePasswordResponse _$ChangePasswordResponseFromJson(
  Map<String, dynamic> json,
) => ChangePasswordResponse(
  code: (json['code'] as num).toInt(),
  token: json['token'] as String?,
);

Map<String, dynamic> _$ChangePasswordResponseToJson(
  ChangePasswordResponse instance,
) => <String, dynamic>{'code': instance.code, 'token': instance.token};

ProfileSelectThemeResponse _$ProfileSelectThemeResponseFromJson(
  Map<String, dynamic> json,
) => ProfileSelectThemeResponse(
  code: (json['code'] as num).toInt(),
  theme: json['theme'] == null
      ? null
      : Theme.fromJson(json['theme'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileSelectThemeResponseToJson(
  ProfileSelectThemeResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'theme': instance.theme?.toJson(),
};

ProfileSocialResponse _$ProfileSocialResponseFromJson(
  Map<String, dynamic> json,
) => ProfileSocialResponse(
  code: (json['code'] as num).toInt(),
  discordPage: json['discord_page'] as String?,
  instPage: json['inst_page'] as String?,
  tgPage: json['tg_page'] as String?,
  ttPage: json['tt_page'] as String?,
  vkPage: json['vk_page'] as String?,
);

Map<String, dynamic> _$ProfileSocialResponseToJson(
  ProfileSocialResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'discord_page': instance.discordPage,
  'inst_page': instance.instPage,
  'tg_page': instance.tgPage,
  'tt_page': instance.ttPage,
  'vk_page': instance.vkPage,
};
