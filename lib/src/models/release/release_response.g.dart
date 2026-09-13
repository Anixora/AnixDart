// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleaseResponse _$ReleaseResponseFromJson(Map<String, dynamic> json) =>
    ReleaseResponse(
      code: (json['code'] as num).toInt(),
      releaseOrNull: json['release'] == null
          ? null
          : Release.fromJson(json['release'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReleaseResponseToJson(ReleaseResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'release': instance.releaseOrNull?.toJson(),
    };
