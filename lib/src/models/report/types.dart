import 'package:json_annotation/json_annotation.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReportReason {
  const ReportReason({required this.id, this.name});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String? name;

  factory ReportReason.fromJson(Map<String, dynamic> json) =>
      _$ReportReasonFromJson(json);
  Map<String, dynamic> toJson() => _$ReportReasonToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  genericArgumentFactories: true,
)
final class ReportRequest<T> {
  const ReportRequest({
    this.entityId,
    required this.message,
    required this.reason,
  });

  @JsonKey(name: 'entity_id', includeIfNull: false)
  final T? entityId;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'reason')
  final int reason;

  factory ReportRequest.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ReportRequestFromJson<T>(json, fromJsonT);
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$ReportRequestToJson<T>(this, toJsonT);
}
