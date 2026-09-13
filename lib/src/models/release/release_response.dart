import 'package:json_annotation/json_annotation.dart';
import '../../utils/release_references.dart';
import 'release.dart';

part 'release_response.g.dart';

@JsonSerializable(explicitToJson: true)
final class ReleaseResponse {
  const ReleaseResponse({required this.code, this.releaseOrNull});

  final int code;

  /// В ответе с ошибкой релиз может отсутствовать, если выбрасывание ошибок отключено.
  @JsonKey(name: 'release')
  final Release? releaseOrNull;

  @JsonKey(includeFromJson: false, includeToJson: false)
  Release get release =>
      releaseOrNull ??
      (throw StateError('Response code $code contains no release'));

  factory ReleaseResponse.fromJson(Map<String, dynamic> json) =>
      _$ReleaseResponseFromJson(resolveReleaseReferences(json));

  Map<String, dynamic> toJson() => _$ReleaseResponseToJson(this);
}
