import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ReleaseVideoApi {
  const ReleaseVideoApi(this._http);
  final AnixartHttpClient _http;

  Future<ReleaseVideoResponse> get(
    int releaseId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseVideoResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/video/release/${releaseId}",
        resultEnum: {
          for (final e in ReleaseVideoResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ReleaseVideoResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ReleaseVideo>> all(
    int releaseId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseVideo>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/video/release/${releaseId}/${page}",
        options: options,
      ),
      decoder: (value) => PageableResponse<ReleaseVideo>.fromJson(
        value as Map<String, dynamic>,
        (value) => ReleaseVideo.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<ReleaseVideo>> profileVideo(
    int profileId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseVideo>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/video/profile/${profileId}/${page}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<ReleaseVideo>.fromJson(
        value as Map<String, dynamic>,
        (value) => ReleaseVideo.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<ReleaseVideo>> category(
    int releaseId,
    int categoryId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseVideo>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/video/release/${releaseId}/category/${categoryId}/${page}",
        options: options,
      ),
      decoder: (value) => PageableResponse<ReleaseVideo>.fromJson(
        value as Map<String, dynamic>,
        (value) => ReleaseVideo.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ReleaseVideoCategoriesResponse> categories({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseVideoCategoriesResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/video/release/categories",
        options: options,
      ),
      decoder: (value) => ReleaseVideoCategoriesResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );
    return response.data;
  }
}
