import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileApi {
  const ProfileApi(this._http);

  final AnixartHttpClient _http;

  Future<PageableResponse<ChangeLogin>> changeLoginHistory(
    int id, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ChangeLogin>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/login/history/all/$id/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<ChangeLogin>.fromJson(
        value as Map<String, dynamic>,
        (value) => ChangeLogin.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ProfileInfoResponse> info({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileInfoResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/info',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfileInfoResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileResponse> get(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/$id',
        auth: const AnixartAuth(),
        resultEnum: {
          for (final entry in ProfileResult.values) entry.value: entry.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ProfileResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> social(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/social/${id}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
