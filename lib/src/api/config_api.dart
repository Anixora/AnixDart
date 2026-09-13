import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class ConfigApi {
  const ConfigApi(this._http);
  final AnixartHttpClient _http;

  Future<AnixPlayerConfigResponse> anixPlayer({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<AnixPlayerConfigResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/config/anixplayer",
        options: options,
      ),
      decoder: (value) =>
          AnixPlayerConfigResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ToggleResponse> toggles(
    int versionCode, {
    bool? beta,
    bool? shouldUseMirrorUrls,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ToggleResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/config/toggles",
        auth: const AnixartAuth(),
        query: {
          "version_code": versionCode,
          "is_beta": beta ?? false,
          "is_api_alt": shouldUseMirrorUrls ?? false,
        },
        options: options,
      ),
      decoder: (value) =>
          ToggleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ConfigUrlsResponse> urls(
    int versionCode, {
    bool? beta,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ConfigUrlsResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/config/urls",
        auth: const AnixartAuth(),
        query: {"version_code": versionCode, "is_beta": beta ?? false},
        options: options,
      ),
      decoder: (value) =>
          ConfigUrlsResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
