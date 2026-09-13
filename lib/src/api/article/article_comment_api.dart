import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ArticleCommentApi {
  const ArticleCommentApi(this._http);
  final AnixartHttpClient _http;

  Future<CommonCommentAddResponse<ArticleComment>> add(
    int articleId,
    CommonCommentAddRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<CommonCommentAddResponse<ArticleComment>>(
          HttpRequest(
            method: HttpMethod.post,
            path: "/article/comment/add/${articleId}",
            auth: const AnixartAuth(),
            body: JsonBody({
              "parentCommentId": data.parentCommentId ?? null,
              "replyToProfileId": data.replyToProfileId ?? null,
              ...data.toJson(),
            }),
            resultEnum: {
              for (final e in CommentAddResult.values) e.value: e.codeName,
            },
            options: options,
          ),
          decoder: (value) => CommonCommentAddResponse<ArticleComment>.fromJson(
            value as Map<String, dynamic>,
            (value) => ArticleComment.fromJson(value as Map<String, dynamic>),
          ),
        );
    return response.data;
  }

  Future<ArticleComment> get(
    int commentId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ArticleComment>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/comment/${commentId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ArticleComment.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ArticleComment>> all(
    int articleId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ArticleComment>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/comment/all/${articleId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<ArticleComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ArticleComment.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<ArticleComment>> popular(
    int articleId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ArticleComment>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/comment/all/${articleId}/popular",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<ArticleComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ArticleComment.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> delete(
    int commentId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/comment/delete/${commentId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in CommentDeleteResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> edit(
    int commentId,
    CommonCommentEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/comment/edit/${commentId}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in CommentEditResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ArticleComment>> profileComments(
    int profileId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ArticleComment>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/comment/all/profile/${profileId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<ArticleComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ArticleComment.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<ArticleComment>> replies(
    int commentId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ArticleComment>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/comment/replies/${commentId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<ArticleComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ArticleComment.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> vote(
    int commentId,
    VoteType vote, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/article/comment/vote/${commentId}/${vote.value}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Profile>> votes(
    int commentId, {
    int page = 0,
    int sort = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/article/comment/votes/${commentId}/${page}",
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
}
