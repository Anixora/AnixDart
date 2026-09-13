import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class RelatedApi {
  const RelatedApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<Release>> get(
    int relaredId, {
    int page = 0,
    RequestOptions options = const RequestOptions(apiVersion: 2),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/related/${relaredId}/${page}",
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
