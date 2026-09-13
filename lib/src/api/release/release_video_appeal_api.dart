import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ReleaseVideoAppealApi {
  const ReleaseVideoAppealApi(this._http);
  final AnixartHttpClient _http;

  Future<ApiResponse> add(
    ReleaseVideoAppealRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/video/appeal/add",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in ReleaseVideoAppealResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ReleaseVideo>> get({
    PageSelector page = const PageSelector.last(),
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseVideo>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/video/appeal/profile/${page.value}",
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

  Future<ApiResponse> delete(
    int appealId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/video/appeal/delete/${appealId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ReleaseVideoAppealResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
