import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class NotificationPreferenceApi {
  const NotificationPreferenceApi(this._http);
  final AnixartHttpClient _http;

  Future<ApiResponse> edit(
    NotificationPreferenceEditType type, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/preference/notification/${type.value}/edit",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<NotificationPreferenceResponse> my({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<NotificationPreferenceResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/preference/notification/my",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => NotificationPreferenceResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );
    return response.data;
  }

  Future<ApiResponse> editReleaseTypes(
    ReleaseTypeNotificationEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/notification/release/type/edit",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> editStatus(
    StatusNotificationEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/notification/status/edit",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> editType(
    ProfileTypeNotificationEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/notification/type/edit",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> releases({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/preference/notification/release/all/${page}",
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

  Future<ReleaseTypeNotificationResponse> releaseTypes(
    int releaseId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseTypeNotificationResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/preference/notification/release/type/${releaseId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ReleaseTypeNotificationResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );
    return response.data;
  }
}
