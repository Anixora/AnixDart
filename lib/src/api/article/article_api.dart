import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ArticleApi {
  const ArticleApi(this._http);
  final AnixartHttpClient _http;

  String _generateTempFileName() {
    final timestamp = DateTime.now()
        .toUtc()
        .toIso8601String()
        .replaceAll(RegExp(r'[-T:.Z]'), '')
        .substring(0, 15);
    return 'temp_file_$timestamp.jpg';
  }

  Future<ArticleResponse> get(
    int articleId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/${articleId}",
        auth: const AnixartAuth(),
        resultEnum: {for (final e in ArticleResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          ArticleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ArticleResponse> create(
    int channelId,
    ArticleCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/create/${channelId}",
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
        path: "/article/delete/${articleId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ArticleDeleteResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ArticleResponse> edit(
    int articleId,
    ArticleCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/edit/${articleId}",
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

  Future<ApiResponse> editIsPinned(
    int articleId,
    bool isPinned, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/edit/pinned/${articleId}",
        auth: const AnixartAuth(),
        query: {"is_pinned": isPinned},
        resultEnum: {
          for (final e in ArticleEditPinnedResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> event(
    ArticleEventRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/event",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> mute(
    int articleId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/mute/${articleId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ArticleMuteResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Article>> reposts(
    int articleId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Article>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/reposts/${articleId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<Article>.fromJson(
        value as Map<String, dynamic>,
        (value) => Article.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> unmute(
    int articleId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/unmute/${articleId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ArticleMuteResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> vote(
    int articleId,
    VoteType vote, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/vote/${articleId}/${vote.value}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Profile>> votes(
    int articleId, {
    int page = 0,
    int sort = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/votes/${articleId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<Profile>.fromJson(
        value as Map<String, dynamic>,
        (value) => Profile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ArticleUploadFileResponse> uploadArticleImage(
    String mediaToken,
    List<int> file, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleUploadFileResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/content/upload",
        auth: BearerAuth(mediaToken),
        body: ImageBody(
          name: _generateTempFileName(),
          file: file,
          field: "file",
        ),
        customBaseUrl: "https://editor.anixsekai.com",
        options: options,
      ),
      decoder: (value) =>
          ArticleUploadFileResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ArticleEmbedResponse> generateEmbedData(
    EmbedType type,
    String mediaToken,
    String link, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleEmbedResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/embed/${type.value}",
        auth: BearerAuth(mediaToken),
        query: {"url": link},
        customBaseUrl: "https://editor.anixsekai.com",
        options: options,
      ),
      decoder: (value) => ArticleEmbedResponse.fromJson({
        ...value as Map<String, dynamic>,
        'url': link,
      }),
    );
    return response.data;
  }
}
