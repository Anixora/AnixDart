import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfileFriendsApi {
  const ProfileFriendsApi(this._http);

  final AnixartHttpClient _http;

  Future<PageableResponse<Profile>> get(
    int id, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/friend/all/$id/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Profile>.fromJson(
        value as Map<String, dynamic>,
        (value) => Profile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Profile>> recommendations({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/friend/recommendations',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Profile>.fromJson(
        value as Map<String, dynamic>,
        (value) => Profile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> hide(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/friend/request/hide/$id',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<FriendStatusResponse> remove(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<FriendStatusResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/friend/request/remove/${id}",
        auth: const AnixartAuth(),
        successCodes: [0, 2, 3],
        resultEnum: {
          for (final e in RemoveFriendRequestResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          FriendStatusResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<FriendStatusResponse> send(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<FriendStatusResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/friend/request/send/${id}",
        auth: const AnixartAuth(),
        successCodes: [0, 2, 3],
        resultEnum: {
          for (final e in SendFriendRequestResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          FriendStatusResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Profile>> requests(
    String type, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    _validateRequestType(type);
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/friend/requests/$type/$page',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Profile>.fromJson(
        value as Map<String, dynamic>,
        (value) => Profile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Profile>> requestsLast(
    String type, {
    int count = 5,
    RequestOptions options = const RequestOptions(),
  }) async {
    _validateRequestType(type);
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/friend/requests/$type/last',
        auth: const AnixartAuth(),
        query: {'count': count},
        options: options,
      ),
      decoder: (value) => PageableResponse<Profile>.fromJson(
        value as Map<String, dynamic>,
        (value) => Profile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  void _validateRequestType(String type) {
    if (type != 'in' && type != 'out') {
      throw ArgumentError.value(type, 'type', "Expected 'in' or 'out'");
    }
  }
}
