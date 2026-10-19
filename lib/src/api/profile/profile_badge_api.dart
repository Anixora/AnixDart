import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileBadgeApi {
  const ProfileBadgeApi(this._http);

  final AnixartHttpClient _http;

  @Deprecated('Используйте list() или section() для Anixart 10.5')
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

  Future<ProfileBadgeResponse> edit(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileBadgeResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/badge/edit/$id',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfileBadgeResponse.fromJson(value as Map<String, dynamic>),
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

  Future<ProfileBadgeSectionsResponse> list(
    int profileId, {
    String? recent,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileBadgeSectionsResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/$profileId/badge/list',
        auth: const AnixartAuth(),
        query: {'recent': recent},
        options: options,
      ),
      decoder: (value) =>
          ProfileBadgeSectionsResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileBadgePageableResponse> section(
    int profileId,
    int categoryId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileBadgePageableResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/$profileId/badge/list/$categoryId/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfileBadgePageableResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileBadgeShowcaseResponse> pinToShowcase(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileBadgeShowcaseResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: '/profile/preference/badge/showcase/pin/$id',
        auth: const AnixartAuth(required: true),
        resultEnum: {
          for (final e in ProfileBadgeShowcaseResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ProfileBadgeShowcaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileBadgeShowcaseResponse> unpinFromShowcase(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileBadgeShowcaseResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: '/profile/preference/badge/showcase/unpin/$id',
        auth: const AnixartAuth(required: true),
        resultEnum: {
          for (final e in ProfileBadgeShowcaseResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ProfileBadgeShowcaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileBadgeShowcaseResponse> reorderShowcase(
    List<int> ids, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileBadgeShowcaseResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: '/profile/preference/badge/showcase/reorder',
        auth: const AnixartAuth(required: true),
        body: JsonBody(ReorderBadgeShowcaseRequest(ids: ids).toJson()),
        resultEnum: {
          for (final e in ProfileBadgeShowcaseResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ProfileBadgeShowcaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
