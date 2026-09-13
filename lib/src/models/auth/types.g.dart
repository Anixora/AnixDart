// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckLoginResponse _$CheckLoginResponseFromJson(Map<String, dynamic> json) =>
    CheckLoginResponse(
      code: (json['code'] as num).toInt(),
      available: json['available'] as bool?,
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CheckLoginResponseToJson(CheckLoginResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'available': instance.available,
      'suggested_logins': instance.suggestedLogins,
    };

FirebaseResponse _$FirebaseResponseFromJson(Map<String, dynamic> json) =>
    FirebaseResponse(
      code: (json['code'] as num).toInt(),
      topicName: json['topicName'] as String?,
    );

Map<String, dynamic> _$FirebaseResponseToJson(FirebaseResponse instance) =>
    <String, dynamic>{'code': instance.code, 'topicName': instance.topicName};

ResendRequest _$ResendRequestFromJson(Map<String, dynamic> json) =>
    ResendRequest(
      login: json['login'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      vkAccessToken: json['vkAccessToken'] as String,
      googleIdToken: json['googleIdToken'] as String,
      telegramIdToken: json['telegramIdToken'] as String,
      yandexAccessToken: json['yandexAccessToken'] as String,
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$ResendRequestToJson(ResendRequest instance) =>
    <String, dynamic>{
      'login': instance.login,
      'email': instance.email,
      'password': instance.password,
      'vkAccessToken': instance.vkAccessToken,
      'googleIdToken': instance.googleIdToken,
      'telegramIdToken': instance.telegramIdToken,
      'yandexAccessToken': instance.yandexAccessToken,
      'hash': instance.hash,
    };

RestoreResendRequest _$RestoreResendRequestFromJson(
  Map<String, dynamic> json,
) => RestoreResendRequest(
  data: json['data'] as String,
  password: json['password'] as String,
  hash: json['hash'] as String,
);

Map<String, dynamic> _$RestoreResendRequestToJson(
  RestoreResendRequest instance,
) => <String, dynamic>{
  'data': instance.data,
  'password': instance.password,
  'hash': instance.hash,
};

RestoreVerifyRequest _$RestoreVerifyRequestFromJson(
  Map<String, dynamic> json,
) => RestoreVerifyRequest(
  data: json['data'] as String,
  password: json['password'] as String,
  hash: json['hash'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$RestoreVerifyRequestToJson(
  RestoreVerifyRequest instance,
) => <String, dynamic>{
  'data': instance.data,
  'password': instance.password,
  'hash': instance.hash,
  'code': instance.code,
};

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) =>
    SignInRequest(
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignInRequestToJson(SignInRequest instance) =>
    <String, dynamic>{'login': instance.login, 'password': instance.password};

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    SignUpRequest(
      login: json['login'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) =>
    <String, dynamic>{
      'login': instance.login,
      'email': instance.email,
      'password': instance.password,
    };

VerifyRequest _$VerifyRequestFromJson(Map<String, dynamic> json) =>
    VerifyRequest(
      login: json['login'] as String,
      email: json['email'] as String,
      password: json['password'] as String?,
      vkAccessToken: json['vkAccessToken'] as String?,
      googleIdToken: json['googleIdToken'] as String?,
      telegramIdToken: json['telegramIdToken'] as String?,
      yandexAccessToken: json['yandexAccessToken'] as String?,
      hash: json['hash'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$VerifyRequestToJson(VerifyRequest instance) =>
    <String, dynamic>{
      'login': instance.login,
      'email': instance.email,
      'password': ?instance.password,
      'vkAccessToken': ?instance.vkAccessToken,
      'googleIdToken': ?instance.googleIdToken,
      'telegramIdToken': ?instance.telegramIdToken,
      'yandexAccessToken': ?instance.yandexAccessToken,
      'hash': instance.hash,
      'code': instance.code,
    };

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      code: (json['code'] as num).toInt(),
      codeTimestampExpires: (json['codeTimestampExpires'] as num?)?.toInt(),
      hash: json['hash'] as String?,
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'codeTimestampExpires': instance.codeTimestampExpires,
      'hash': instance.hash,
      'suggested_logins': instance.suggestedLogins,
    };

VerifyResponse _$VerifyResponseFromJson(Map<String, dynamic> json) =>
    VerifyResponse(
      code: (json['code'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      profileToken: json['profileToken'] == null
          ? null
          : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$VerifyResponseToJson(VerifyResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'profile': instance.profile?.toJson(),
      'profileToken': instance.profileToken?.toJson(),
      'suggested_logins': instance.suggestedLogins,
    };

TimestampResponse _$TimestampResponseFromJson(Map<String, dynamic> json) =>
    TimestampResponse(
      code: (json['code'] as num).toInt(),
      timestampExpires: (json['timestampExpires'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TimestampResponseToJson(TimestampResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'timestampExpires': instance.timestampExpires,
    };

AuthProfileResponse _$AuthProfileResponseFromJson(Map<String, dynamic> json) =>
    AuthProfileResponse(
      code: (json['code'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      profileToken: json['profileToken'] == null
          ? null
          : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthProfileResponseToJson(
  AuthProfileResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'profile': instance.profile?.toJson(),
  'profileToken': instance.profileToken?.toJson(),
};

OAuthSignInResponse _$OAuthSignInResponseFromJson(Map<String, dynamic> json) =>
    OAuthSignInResponse(
      code: (json['code'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      profileToken: json['profileToken'] == null
          ? null
          : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
      codeTimestampExpires: (json['codeTimestampExpires'] as num?)?.toInt(),
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$OAuthSignInResponseToJson(
  OAuthSignInResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'profile': instance.profile?.toJson(),
  'profileToken': instance.profileToken?.toJson(),
  'codeTimestampExpires': instance.codeTimestampExpires,
  'suggested_logins': instance.suggestedLogins,
  'hash': instance.hash,
};

ResendResponse _$ResendResponseFromJson(Map<String, dynamic> json) =>
    ResendResponse(
      code: (json['code'] as num).toInt(),
      timestampExpires: (json['timestampExpires'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResendResponseToJson(ResendResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'timestampExpires': instance.timestampExpires,
    };

RestoreResponse _$RestoreResponseFromJson(Map<String, dynamic> json) =>
    RestoreResponse(
      code: (json['code'] as num).toInt(),
      hash: json['hash'] as String?,
      codeTimestampExpires: (json['codeTimestampExpires'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RestoreResponseToJson(RestoreResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'hash': instance.hash,
      'codeTimestampExpires': instance.codeTimestampExpires,
    };

RestoreResendResponse _$RestoreResendResponseFromJson(
  Map<String, dynamic> json,
) => RestoreResendResponse(
  code: (json['code'] as num).toInt(),
  timestampExpires: (json['timestampExpires'] as num?)?.toInt(),
);

Map<String, dynamic> _$RestoreResendResponseToJson(
  RestoreResendResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'timestampExpires': instance.timestampExpires,
};

RestoreVerifyResponse _$RestoreVerifyResponseFromJson(
  Map<String, dynamic> json,
) => RestoreVerifyResponse(
  code: (json['code'] as num).toInt(),
  profile: json['profile'] == null
      ? null
      : Profile.fromJson(json['profile'] as Map<String, dynamic>),
  profileToken: json['profileToken'] == null
      ? null
      : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RestoreVerifyResponseToJson(
  RestoreVerifyResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'profile': instance.profile?.toJson(),
  'profileToken': instance.profileToken?.toJson(),
};

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    SignInResponse(
      code: (json['code'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      profileToken: json['profileToken'] == null
          ? null
          : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResponseToJson(SignInResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'profile': instance.profile?.toJson(),
      'profileToken': instance.profileToken?.toJson(),
    };

GoogleResponse _$GoogleResponseFromJson(Map<String, dynamic> json) =>
    GoogleResponse(
      code: (json['code'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      profileToken: json['profileToken'] == null
          ? null
          : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
      codeTimestampExpires: (json['codeTimestampExpires'] as num?)?.toInt(),
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$GoogleResponseToJson(GoogleResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'profile': instance.profile?.toJson(),
      'profileToken': instance.profileToken?.toJson(),
      'codeTimestampExpires': instance.codeTimestampExpires,
      'suggested_logins': instance.suggestedLogins,
      'hash': instance.hash,
    };

TelegramResponse _$TelegramResponseFromJson(Map<String, dynamic> json) =>
    TelegramResponse(
      code: (json['code'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      profileToken: json['profileToken'] == null
          ? null
          : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
      codeTimestampExpires: (json['codeTimestampExpires'] as num?)?.toInt(),
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$TelegramResponseToJson(TelegramResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'profile': instance.profile?.toJson(),
      'profileToken': instance.profileToken?.toJson(),
      'codeTimestampExpires': instance.codeTimestampExpires,
      'suggested_logins': instance.suggestedLogins,
      'hash': instance.hash,
    };

VkResponse _$VkResponseFromJson(Map<String, dynamic> json) => VkResponse(
  code: (json['code'] as num).toInt(),
  profile: json['profile'] == null
      ? null
      : Profile.fromJson(json['profile'] as Map<String, dynamic>),
  profileToken: json['profileToken'] == null
      ? null
      : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
  codeTimestampExpires: (json['codeTimestampExpires'] as num?)?.toInt(),
  suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  hash: json['hash'] as String?,
);

Map<String, dynamic> _$VkResponseToJson(VkResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'profile': instance.profile?.toJson(),
      'profileToken': instance.profileToken?.toJson(),
      'codeTimestampExpires': instance.codeTimestampExpires,
      'suggested_logins': instance.suggestedLogins,
      'hash': instance.hash,
    };

YandexResponse _$YandexResponseFromJson(Map<String, dynamic> json) =>
    YandexResponse(
      code: (json['code'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      profileToken: json['profileToken'] == null
          ? null
          : ProfileToken.fromJson(json['profileToken'] as Map<String, dynamic>),
      codeTimestampExpires: (json['codeTimestampExpires'] as num?)?.toInt(),
      suggestedLogins: (json['suggested_logins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hash: json['hash'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$YandexResponseToJson(YandexResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'profile': instance.profile?.toJson(),
      'profileToken': instance.profileToken?.toJson(),
      'codeTimestampExpires': instance.codeTimestampExpires,
      'suggested_logins': instance.suggestedLogins,
      'hash': instance.hash,
      'email': instance.email,
    };

OAuthSignUpRequest _$OAuthSignUpRequestFromJson(Map<String, dynamic> json) =>
    OAuthSignUpRequest(
      login: json['login'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$OAuthSignUpRequestToJson(OAuthSignUpRequest instance) =>
    <String, dynamic>{'login': instance.login, 'email': instance.email};
