import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ReleaseApi {
  const ReleaseApi(this._http);
  final AnixartHttpClient _http;

  Future<ReleaseResponse> get(
    int releaseId, {
    bool extendedMode = true,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/${releaseId}",
        auth: const AnixartAuth(),
        query: {"extended_mode": extendedMode},
        options: options,
      ),
      decoder: (value) =>
          ReleaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ReleaseResponse> random({
    bool extendedMode = true,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/random",
        auth: const AnixartAuth(),
        query: {"extended_mode": extendedMode},
        options: options,
      ),
      decoder: (value) =>
          ReleaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ReleaseResponse> randomCollection(
    int collectionId, {
    bool extendedMode = true,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/collection/${collectionId}/random",
        auth: const AnixartAuth(),
        query: {"extended_mode": extendedMode},
        options: options,
      ),
      decoder: (value) =>
          ReleaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ReleaseResponse> randomFavorite({
    bool extendedMode = true,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/random/favorite",
        auth: const AnixartAuth(),
        query: {"extended_mode": extendedMode},
        options: options,
      ),
      decoder: (value) =>
          ReleaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ReleaseResponse> randomProfileList(
    int profileId,
    BookmarkType status, {
    bool? extendedMode,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/random/profile/list/${profileId}/${status.value}",
        auth: const AnixartAuth(),
        query: {"extended_mode": extendedMode},
        options: options,
      ),
      decoder: (value) =>
          ReleaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> addVote(
    int releaseId,
    ReleaseVote vote, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/vote/add/${releaseId}/${vote.value}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> deleteVote(
    int releaseId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/vote/delete/${releaseId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
