import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileReleaseVoteApi {
  const ProfileReleaseVoteApi(this._http);

  final AnixartHttpClient _http;

  Future<PageableResponse<Release>> allReleaseUnvoted({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/vote/release/unvoted/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> allReleaseVoted(
    int profileId, {
    int page = 0,
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/vote/release/voted/$profileId/$page',
        auth: const AnixartAuth(),
        query: {'sort': sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> lastReleaseUnvoted({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/vote/release/unvoted/last',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }
}
