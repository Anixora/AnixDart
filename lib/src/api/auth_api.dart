import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class AuthApi {
  const AuthApi(this._http);
  final AnixartHttpClient _http;

  Future<CheckLoginResponse> checkLogin(
    String login, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<CheckLoginResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/checkLogin",
        body: UrlEncodedBody({"login": login}),
        resultEnum: {
          for (final e in CheckLoginResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          CheckLoginResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<FirebaseResponse> firebase({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<FirebaseResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/firebase",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          FirebaseResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ResendResponse> resend(
    ResendRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ResendResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/resend",
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {for (final e in ResendResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          ResendResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<RestoreResponse> restore(
    String data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<RestoreResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/restore",
        body: UrlEncodedBody({"data": data}),
        resultEnum: {for (final e in RestoreResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          RestoreResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<RestoreResendResponse> restoreResend(
    RestoreResendRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<RestoreResendResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/restore/resend",
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {
          for (final e in RestoreResendResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          RestoreResendResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<RestoreVerifyResponse> restoreVerify(
    RestoreVerifyRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<RestoreVerifyResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/restore/verify",
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {
          for (final e in RestoreVerifyResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          RestoreVerifyResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<SignInResponse> signIn(
    SignInRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<SignInResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/signIn",
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {for (final e in SignInResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          SignInResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<GoogleResponse> signInWithGoogle(
    String googleIdToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<GoogleResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/google",
        body: UrlEncodedBody({"googleIdToken": googleIdToken}),
        resultEnum: {for (final e in GoogleResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          GoogleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<TelegramResponse> signInWithTelegram(
    String telegramTokenId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<TelegramResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/telegram",
        body: UrlEncodedBody({"telegramIdToken": telegramTokenId}),
        resultEnum: {
          for (final e in TelegramResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          TelegramResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<VkResponse> signInWithVk(
    String vkAccessToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<VkResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/vk",
        body: UrlEncodedBody({"vkAccessToken": vkAccessToken}),
        resultEnum: {for (final e in VkResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) => VkResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<YandexResponse> signInWithYandex(
    String yandexAccessToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<YandexResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/yandex",
        body: UrlEncodedBody({"yandexAccessToken": yandexAccessToken}),
        resultEnum: {for (final e in YandexResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          YandexResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<SignUpResponse> signUp(
    SignUpRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<SignUpResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/signUp",
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {for (final e in SignUpResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          SignUpResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<GoogleResponse> signUpWithGoogle(
    OAuthSignUpRequest data,
    String googleIdToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<GoogleResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/google",
        body: UrlEncodedBody({
          ...data.toJson(),
          "googleIdToken": googleIdToken,
        }),
        resultEnum: {for (final e in GoogleResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          GoogleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<TelegramResponse> signUpWithTelegram(
    OAuthSignUpRequest data,
    String telegramIdToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<TelegramResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/telegram",
        body: UrlEncodedBody({
          ...data.toJson(),
          "telegramIdToken": telegramIdToken,
        }),
        resultEnum: {
          for (final e in TelegramResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          TelegramResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<VkResponse> signUpWithVk(
    OAuthSignUpRequest data,
    String vkAccessToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<VkResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/vk",
        body: UrlEncodedBody({
          ...data.toJson(),
          "vkAccessToken": vkAccessToken,
        }),
        resultEnum: {for (final e in VkResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) => VkResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<YandexResponse> signUpWithYandex(
    OAuthSignUpRequest data,
    String yandexAccessToken, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<YandexResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/yandex",
        body: UrlEncodedBody({
          ...data.toJson(),
          "yandexAccessToken": yandexAccessToken,
        }),
        resultEnum: {for (final e in YandexResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          YandexResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<VerifyResponse> verify(
    VerifyRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<VerifyResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/auth/verify",
        body: UrlEncodedBody({...data.toJson()}),
        resultEnum: {for (final e in VerifyResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          VerifyResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
