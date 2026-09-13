import '../models.dart';

sealed class ReleaseSearchResult {
  const ReleaseSearchResult();
  int get code;
  factory ReleaseSearchResult.fromJson(Map<String, dynamic> json) =>
      json.containsKey('content') || json.containsKey('total_page_count')
      ? LegacyReleaseSearchResult(
          PageableResponse<Release>.fromJson(
            json,
            (value) => Release.fromJson(value as Map<String, dynamic>),
          ),
        )
      : CurrentReleaseSearchResult(ReleaseSearchResponse.fromJson(json));
  Map<String, dynamic> toJson();
}

final class CurrentReleaseSearchResult extends ReleaseSearchResult {
  const CurrentReleaseSearchResult(this.response);
  final ReleaseSearchResponse response;
  @override
  int get code => response.code;
  @override
  Map<String, dynamic> toJson() => response.toJson();
}

final class LegacyReleaseSearchResult extends ReleaseSearchResult {
  const LegacyReleaseSearchResult(this.response);
  final PageableResponse<Release> response;
  @override
  int get code => response.code;
  @override
  Map<String, dynamic> toJson() => response.toJson((value) => value.toJson());
}
