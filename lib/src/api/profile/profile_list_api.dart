import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileListApi {
  const ProfileListApi(this._http);

  final AnixartHttpClient _http;

  Future<ApiResponse> add(
    int releaseId,
    BookmarkType status, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/list/add/${status.value}/$releaseId',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> delete(
    int releaseId,
    BookmarkType status, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/list/delete/${status.value}/$releaseId',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> get(
    BookmarkType status, {
    int page = 0,
    BookmarkSortType? sort,
    int? filterAnnounce,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/list/all/${status.value}/$page',
        auth: const AnixartAuth(),
        query: {'sort': sort?.value, 'filter_announce': filterAnnounce},
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> getByProfile(
    int profileId,
    BookmarkType status, {
    int page = 0,
    BookmarkSortType? sort,
    int? filterAnnounce,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/list/all/$profileId/${status.value}/$page',
        auth: const AnixartAuth(),
        query: {'sort': sort?.value, 'filter_announce': filterAnnounce},
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
