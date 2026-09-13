import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class CollectionMyApi {
  const CollectionMyApi(this._http);
  final AnixartHttpClient _http;

  Future<CollectionCreateEditResponse> create(
    CollectionCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<CollectionCreateEditResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/collectionMy/create",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in CollectionCreateEditResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          CollectionCreateEditResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<CollectionCreateEditResponse> edit(
    int collectionId,
    CollectionCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<CollectionCreateEditResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/collectionMy/edit/${collectionId}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in CollectionCreateEditResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          CollectionCreateEditResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<CollectionEditImageResponse> editImage(
    int collectionId,
    List<int> image, {
    String? name,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<CollectionEditImageResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/collectionMy/editImage/${collectionId}",
        auth: const AnixartAuth(),
        body: ImageBody(
          name: name ?? "image.jpg",
          file: image,
          field: "image",
          fields: {"name": "image"},
        ),
        resultEnum: {
          for (final e in CollectionEditImageResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          CollectionEditImageResponse.fromJson(value as Map<String, dynamic>),
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
        path: "/collectionMy/delete/${collectionId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in CollectionDeleteResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> releaseAdd(
    int collectionId,
    int releaseId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collectionMy/release/add/${collectionId}",
        auth: const AnixartAuth(),
        query: {"release_id": releaseId},
        resultEnum: {
          for (final e in ReleaseAddCollectionResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> releases(
    int collectionId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collectionMy/${collectionId}/releases",
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
