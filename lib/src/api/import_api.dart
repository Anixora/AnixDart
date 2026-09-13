import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class ImportApi {
  const ImportApi(this._http);
  final AnixartHttpClient _http;

  Future<ApiResponse> bookmarks(
    BookmarksImportRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/import/bookmarks",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in BookmarksImportResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> status({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/import/status",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in BookmarksImportResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
