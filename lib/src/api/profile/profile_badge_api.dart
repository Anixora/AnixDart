import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileBadgeApi {
  const ProfileBadgeApi(this._http);

  final AnixartHttpClient _http;

  Future<PageableResponse<Badge>> all({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Badge>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/badge/all/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Badge>.fromJson(
        value as Map<String, dynamic>,
        (value) => Badge.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> edit(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/badge/edit/$id',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> remove({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/badge/remove',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
