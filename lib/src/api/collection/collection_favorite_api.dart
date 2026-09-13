import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class CollectionFavoriteApi {
  const CollectionFavoriteApi(this._http);
  final AnixartHttpClient _http;

  Future<ApiResponse> add(
    int collectionId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collectionFavorite/add/${collectionId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in FavoriteCollectionAddResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Collection>> get({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Collection>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collectionFavorite/all/${page}",
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

  Future<ApiResponse> delete(
    int collectionId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collectionFavorite/delete/${collectionId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in FavoriteCollectionDeleteResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
