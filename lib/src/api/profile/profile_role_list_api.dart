import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileRoleListApi {
  const ProfileRoleListApi(this._http);

  final AnixartHttpClient _http;

  Future<PageableResponse<ProfileRole>> all(
    int roleId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ProfileRole>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/role/all/$page/$roleId',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<ProfileRole>.fromJson(
        value as Map<String, dynamic>,
        (value) => ProfileRole.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }
}
