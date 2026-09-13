import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ProfilePreferenceApi {
  const ProfilePreferenceApi(this._http);

  final AnixartHttpClient _http;

  Future<ProfilePreferenceResponse> avatarDelete({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfilePreferenceResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/avatar/delete',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfilePreferenceResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfilePreferenceResponse> avatarEdit(
    List<int> image,
    String name, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfilePreferenceResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/avatar/edit",
        auth: const AnixartAuth(),
        body: ImageBody(
          field: "image",
          file: image,
          name: name,
          fields: {"name": name},
        ),
        options: options,
      ),
      decoder: (value) =>
          ProfilePreferenceResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ChangeEmailResponse> changeEmail(
    ChangeEmailRequest data, {
    RequestOptions options = const RequestOptions(apiVersion: 2),
  }) async {
    final response = await _http.request<ChangeEmailResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/email/change",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {
          for (final e in ChangeEmailResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChangeEmailResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ChangeEmailResendResponse> changeEmailResend(
    ChangeEmailResendRequest data, {
    RequestOptions options = const RequestOptions(apiVersion: 2),
  }) async {
    final response = await _http.request<ChangeEmailResendResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/email/resend",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {
          for (final e in ChangeEmailResendResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChangeEmailResendResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> changeEmailVerify(
    ChangeEmailVerifyRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/profile/preference/email/verify",
        auth: const AnixartAuth(),
        query: {...data.toJson()},
        resultEnum: {
          for (final e in ChangeEmailVerifyResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ChangeLoginResponse> changeLogin(
    String login, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChangeLoginResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/login/change",
        auth: const AnixartAuth(),
        query: {"login": login},
        resultEnum: {
          for (final e in ChangeLoginResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChangeLoginResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<LoginInfoResponse> changeLoginInfo({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<LoginInfoResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: '/profile/preference/login/info',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          LoginInfoResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ChangePasswordResponse> changePassword(
    ChangePasswordRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChangePasswordResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/password/change",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({
          "current": data.currentPassword,
          "new": data.newPassword,
        }),
        resultEnum: {
          for (final e in ChangePasswordResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChangePasswordResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> episodeWidgetEdit(
    bool hidden, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/episode-widget/edit",
        auth: const AnixartAuth(),
        query: {"hidden": hidden},
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> googleBind(
    String idToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/google/bind",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({"idToken": idToken}),
        resultEnum: {
          for (final e in GoogleBindResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> googleUnbind({
    RequestOptions options = const RequestOptions(),
  }) async {
    return _apiPost(
      '/profile/preference/google/unbind',
      null,
      options,
      resultEnum: {
        for (final entry in GoogleUnbindResult.values)
          entry.value: entry.codeName,
      },
    );
  }

  Future<ProfilePreferenceResponse> my({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfilePreferenceResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/my',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfilePreferenceResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> pinSection(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    return _apiPost('/profile/preference/section/edit', {'id': id}, options);
  }

  Future<ApiResponse> privacyCountsEdit(
    PrivacyState state, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/privacy/counts/edit",
        auth: const AnixartAuth(),
        body: JsonBody({"permission": state.value}),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> privacyFriendRequestsEdit(
    PrivacyFriendRequestState state, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/privacy/friendRequests/edit",
        auth: const AnixartAuth(),
        body: JsonBody({"permission": state.value}),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> privacyIncognitoEdit({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/privacy/incognito/edit',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> privacySocialEdit(
    PrivacyState state, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/privacy/social/edit",
        auth: const AnixartAuth(),
        body: JsonBody({"permission": state.value}),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> privacyStatsEdit(
    PrivacyState state, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/privacy/stats/edit",
        auth: const AnixartAuth(),
        body: JsonBody({"permission": state.value}),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileSelectThemeResponse> selectTheme(
    int id, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileSelectThemeResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: '/profile/preference/themes/edit',
        auth: const AnixartAuth(),
        body: JsonBody({'id': id}),
        resultEnum: {
          for (final entry in ProfileSelectThemeResult.values)
            entry.value: entry.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ProfileSelectThemeResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ProfileSocialResponse> social({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ProfileSocialResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/profile/preference/social',
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ProfileSocialResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> socialPagesEdit(
    SocialRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    return _apiPost(
      '/profile/preference/social/edit',
      data.toJson(),
      options,
      resultEnum: {
        for (final entry in SocialEditResult.values)
          entry.value: entry.codeName,
      },
    );
  }

  Future<ApiResponse> statusEdit(
    String status, {
    RequestOptions options = const RequestOptions(),
  }) async {
    return _apiPost('/profile/preference/status/edit', {
      'status': status,
    }, options);
  }

  Future<ApiResponse> telegramBind(
    String idToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/telegram/bind",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({"idToken": idToken}),
        resultEnum: {
          for (final e in TelegramBindResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> telegramUnbind({
    RequestOptions options = const RequestOptions(),
  }) async {
    return _apiPost(
      '/profile/preference/telegram/unbind',
      null,
      options,
      resultEnum: {
        for (final entry in TelegramUnbindResult.values)
          entry.value: entry.codeName,
      },
    );
  }

  Future<ApiResponse> vkBind(
    String accessToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/vk/bind",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({"accessToken": accessToken}),
        resultEnum: {for (final e in VkBindResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> vkUnbind({
    RequestOptions options = const RequestOptions(),
  }) async {
    return _apiPost(
      '/profile/preference/vk/unbind',
      null,
      options,
      resultEnum: {
        for (final entry in VkUnbindResult.values) entry.value: entry.codeName,
      },
    );
  }

  Future<ApiResponse> yandexBind(
    String accessToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/profile/preference/yandex/bind",
        auth: const AnixartAuth(),
        body: UrlEncodedBody({"accessToken": accessToken}),
        resultEnum: {
          for (final e in YandexBindResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> yandexUnbind({
    RequestOptions options = const RequestOptions(),
  }) async {
    return _apiPost(
      '/profile/preference/yandex/unbind',
      null,
      options,
      resultEnum: {
        for (final entry in YandexUnbindResult.values)
          entry.value: entry.codeName,
      },
    );
  }

  Future<ApiResponse> _apiPost(
    String path,
    Map<String, Object?>? body,
    RequestOptions options, {
    Map<int, String>? resultEnum,
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: path,
        auth: const AnixartAuth(),
        body: body == null ? null : JsonBody(body),
        resultEnum: resultEnum,
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
