import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ArticleSuggestionApi {
  const ArticleSuggestionApi(this._http);
  final AnixartHttpClient _http;

  Future<ArticleResponse> get(
    int articleId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/suggestion/${articleId}",
        auth: const AnixartAuth(),
        resultEnum: {for (final e in ArticleResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          ArticleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Article>> all(
    int channelId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Article>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/suggestion/all/${page}",
        auth: const AnixartAuth(),
        body: JsonBody({"channel_id": channelId}),
        options: options,
      ),
      decoder: (value) => PageableResponse<Article>.fromJson(
        value as Map<String, dynamic>,
        (value) => Article.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ArticleResponse> create(
    int channelId,
    ArticleSuggestionCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/suggestion/create/${channelId}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in ArticleCreateEditResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ArticleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> delete(
    int articleId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/suggestion/delete/${articleId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ArticleSuggestionDeleteResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ArticleResponse> edit(
    int articleId,
    ArticleSuggestionCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/suggestion/edit/${articleId}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in ArticleCreateEditResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ArticleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ArticleResponse> publish(
    int articleId,
    bool isSigned, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/suggestion/publish/${articleId}",
        auth: const AnixartAuth(),
        query: {"is_signed": isSigned},
        resultEnum: {
          for (final e in ArticleCreateEditResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ArticleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
