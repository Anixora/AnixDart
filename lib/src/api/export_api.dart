import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class ExportApi {
  const ExportApi(this._http);
  final AnixartHttpClient _http;

  Future<BookmarksExportResponse> bookmarks(
    BookmarksExportRequest data, {
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<BookmarksExportResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/export/bookmarks",
        auth: const AnixartAuth(),
        query: {if (sort != null) "sort": sort},
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in BookmarkExportResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          BookmarksExportResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
