import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class DiscoverApi {
  const DiscoverApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<ReleaseComment>> commentsWeek({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseComment>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/discover/comments",
        options: options,
      ),
      decoder: (value) => PageableResponse<ReleaseComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ReleaseComment.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> discussing({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/discover/discussing",
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

  Future<PageableResponse<Interesting>> interesting({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Interesting>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/discover/interesting",
        options: options,
      ),
      decoder: (value) => PageableResponse<Interesting>.fromJson(
        value as Map<String, dynamic>,
        (value) => Interesting.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> recommendations({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/discover/recommendations/${page}",
        auth: const AnixartAuth(),
        query: {"previous_page": page == 0 ? 0 : page - 1},
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> watching({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/discover/watching/${page}",
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
