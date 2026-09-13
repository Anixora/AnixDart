import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class FeedApi {
  const FeedApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<Article>> get({
    int page = 0,
    int? channelId,
    int date = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Article>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/feed/all/${page}",
        auth: const AnixartAuth(),
        query: {if (channelId != null) "channel_id": channelId, "date": date},
        options: options,
      ),
      decoder: (value) => PageableResponse<Article>.fromJson(
        value as Map<String, dynamic>,
        (value) => Article.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<LatestArticleResponse> latestArticle({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<LatestArticleResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/feed/latest",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          LatestArticleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Article>> latestArticles({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Article>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/feed/latest/all/${page}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Article>.fromJson(
        value as Map<String, dynamic>,
        (value) => Article.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }
}
