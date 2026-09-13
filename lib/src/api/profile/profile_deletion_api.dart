import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileDeletionApi {
  const ProfileDeletionApi(this._http);

  final AnixartHttpClient _http;

  Map<int, String> get _resultEnum => {
    for (final entry in ProfileDeletionResult.values)
      entry.value: entry.codeName,
  };

  Future<ProfileDeletionResponse> cancel({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileDeletionResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: '/profile/deletion/cancel',
        auth: const AnixartAuth(),
        resultEnum: _resultEnum,
        options: options,
      ),
      decoder: (value) =>
          ProfileDeletionResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileDeletionResponse> request(
    String password, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileDeletionResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/deletion/request",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({"password": password}),
        resultEnum: {
          for (final e in ProfileDeletionResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ProfileDeletionResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileDeletionResponse> status({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileDeletionResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/deletion/status',
        auth: const AnixartAuth(),
        resultEnum: _resultEnum,
        options: options,
      ),
      decoder: (value) =>
          ProfileDeletionResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
