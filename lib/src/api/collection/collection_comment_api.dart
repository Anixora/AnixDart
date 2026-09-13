import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class CollectionCommentApi {
  const CollectionCommentApi(this._http);
  final AnixartHttpClient _http;

  Future<CollectionComment> get(
    int commentId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<CollectionComment>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/comment/${commentId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          CollectionComment.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<CommonCommentAddResponse<CollectionComment>> add(
    int collectionId,
    CommonCommentAddRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<CommonCommentAddResponse<CollectionComment>>(
          HttpRequest(
            method: HttpMethod.post,
            path: "/collection/comment/add/${collectionId}",
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
          decoder: (value) =>
              CommonCommentAddResponse<CollectionComment>.fromJson(
                value as Map<String, dynamic>,
                (value) =>
                    CollectionComment.fromJson(value as Map<String, dynamic>),
              ),
        );
    return response.data;
  }

  Future<PageableResponse<CollectionComment>> all(
    int collectionId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<CollectionComment>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/comment/all/${collectionId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<CollectionComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => CollectionComment.fromJson(value as Map<String, dynamic>),
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
        path: "/collection/comment/delete/${commentId}",
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
        path: "/collection/comment/edit/${commentId}",
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

  Future<PageableResponse<CollectionComment>> profileComments(
    int profileId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<CollectionComment>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/collection/comment/all/profile/${profileId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<CollectionComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => CollectionComment.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<CollectionComment>> replies(
    int commentId,
    int sort, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<CollectionComment>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/collection/comment/replies/${commentId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<CollectionComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => CollectionComment.fromJson(value as Map<String, dynamic>),
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
        path: "/collection/comment/vote/${commentId}/${vote.value}",
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
        method: HttpMethod.get,
        path: "/collection/comment/votes/${commentId}/${page}",
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
