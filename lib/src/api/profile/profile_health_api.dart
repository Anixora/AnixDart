import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileHealthApi {
  const ProfileHealthApi(this._http);

  final AnixartHttpClient _http;

  Future<List<ProfileEnforcement>> account({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<List<ProfileEnforcement>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/health/enforcement/account/all/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => (value as List<dynamic>)
          .map(
            (entry) =>
                ProfileEnforcement.fromJson(entry as Map<String, dynamic>),
          )
          .toList(growable: false),
    );
    return response.data;
  }

  Future<ApiResponse> appeal(
    int enforcementId,
    String message, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: '/profile/health/enforcement/$enforcementId/appeal',
        auth: const AnixartAuth(),
        body: JsonBody({'message': message}),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<List<ProfileEnforcement>> content({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<List<ProfileEnforcement>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/health/enforcement/content/all/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => (value as List<dynamic>)
          .map(
            (entry) =>
                ProfileEnforcement.fromJson(entry as Map<String, dynamic>),
          )
          .toList(growable: false),
    );
    return response.data;
  }

  Future<ProfileEnforcementResponse> enforcement(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileEnforcementResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/health/enforcement/$id',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfileEnforcementResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileHealthStatusResponse> status({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileHealthStatusResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/health/status',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfileHealthStatusResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
