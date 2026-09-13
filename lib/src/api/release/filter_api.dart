import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class FilterApi {
  const FilterApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<Release>> get(
    FilterRequest data, {
    int page = 0,
    bool? extendedMode,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/filter/${page}",
        auth: const AnixartAuth(),
        query: {"extended_mode": extendedMode},
        body: JsonBody(data.toJson()),
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
