import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class CollectionApi {
  const CollectionApi(this._http);
  final AnixartHttpClient _http;

  Future<CollectionResponse> get(
    int collectionId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<CollectionResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/${collectionId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in CollectionResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          CollectionResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Collection>> all(
    int where,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Collection>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/all/${page}",
        auth: const AnixartAuth(),
        query: {
          "previous_page": page == 0 ? 0 : page--,
          "where": where,
          "sort": sort,
        },
        options: options,
      ),
      decoder: (value) => PageableResponse<Collection>.fromJson(
        value as Map<String, dynamic>,
        (value) => Collection.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Collection>> profileCollections(
    int profileId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Collection>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/all/profile/${profileId}/${page}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Collection>.fromJson(
        value as Map<String, dynamic>,
        (value) => Collection.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Collection>> releaseCollections(
    int releaseId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Collection>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/all/release/${releaseId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<Collection>.fromJson(
        value as Map<String, dynamic>,
        (value) => Collection.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> releases(
    int collectionId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/${collectionId}/releases/${page}",
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
