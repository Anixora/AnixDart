import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class EpisodeApi {
  const EpisodeApi(this._http);
  final AnixartHttpClient _http;

  Future<EpisodeTargetResponse> target(
    int releaseId,
    int sourceId,
    int position, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<EpisodeTargetResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/episode/target/${releaseId}/${sourceId}/${position}",
        options: options,
      ),
      decoder: (value) =>
          EpisodeTargetResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<EpisodeResponse> episodes(
    int releaseId,
    int dubberId,
    int sourceId, {
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<EpisodeResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/episode/${releaseId}/${dubberId}/${sourceId}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) =>
          EpisodeResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<SourcesResponse> sources(
    int releaseId,
    int dubberId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<SourcesResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/episode/${releaseId}/${dubberId}",
        options: options,
      ),
      decoder: (value) =>
          SourcesResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<DubbersResponse> types(
    int releaseId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<DubbersResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/episode/${releaseId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          DubbersResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> unwatch(
    int releaseId,
    int sourceId, {
    int? position,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path:
            "/episode/unwatch/${releaseId}/${sourceId}${position != null ? "/${position}" : ""}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> watch(
    int releaseId,
    int sourceId, {
    int? position,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path:
            "/episode/watch/${releaseId}/${sourceId}${position != null ? "/${position}" : ""}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<EpisodeUpdate>> updates(
    int releaseId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<EpisodeUpdate>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/episode/updates/${releaseId}/${page}",
        options: options,
      ),
      decoder: (value) => PageableResponse<EpisodeUpdate>.fromJson(
        value as Map<String, dynamic>,
        (value) => EpisodeUpdate.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }
}
