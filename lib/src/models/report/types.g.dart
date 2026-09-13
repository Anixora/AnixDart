// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportReason _$ReportReasonFromJson(Map<String, dynamic> json) => ReportReason(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$ReportReasonToJson(ReportReason instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

ReportRequest<T> _$ReportRequestFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ReportRequest<T>(
  entityId: _$nullableGenericFromJson(json['entity_id'], fromJsonT),
  message: json['message'] as String,
  reason: (json['reason'] as num).toInt(),
);

Map<String, dynamic> _$ReportRequestToJson<T>(
  ReportRequest<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'entity_id': ?_$nullableGenericToJson(instance.entityId, toJsonT),
  'message': instance.message,
  'reason': instance.reason,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
