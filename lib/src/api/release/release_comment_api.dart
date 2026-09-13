import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ReleaseCommentApi {
  const ReleaseCommentApi(this._http);
  final AnixartHttpClient _http;

  Future<CommonCommentAddResponse<ReleaseComment>> add(
    int releaseId,
    CommonCommentAddRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<CommonCommentAddResponse<ReleaseComment>>(
          HttpRequest(
            method: HttpMethod.post,
            path: "/release/comment/add/${releaseId}",
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
          decoder: (value) => CommonCommentAddResponse<ReleaseComment>.fromJson(
            value as Map<String, dynamic>,
            (value) => ReleaseComment.fromJson(value as Map<String, dynamic>),
          ),
        );
    return response.data;
  }

  Future<ReleaseComment> get(
    int commentId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseComment>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/comment/${commentId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          ReleaseComment.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ReleaseComment>> all(
    int releaseId, {
    int page = 0,
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseComment>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/comment/all/${releaseId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<ReleaseComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ReleaseComment.fromJson(value as Map<String, dynamic>),
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
        path: "/release/comment/delete/${commentId}",
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
        path: "/release/comment/edit/${commentId}",
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

  Future<PageableResponse<ReleaseComment>> profileComments(
    int profileId, {
    int page = 0,
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseComment>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/comment/all/profile/${profileId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<ReleaseComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ReleaseComment.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<ReleaseComment>> replies(
    int commentId, {
    int page = 0,
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ReleaseComment>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/release/comment/replies/${commentId}/${page}",
        auth: const AnixartAuth(),
        query: {"sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<ReleaseComment>.fromJson(
        value as Map<String, dynamic>,
        (value) => ReleaseComment.fromJson(value as Map<String, dynamic>),
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
        path: "/release/comment/vote/${commentId}/${vote.value}",
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
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/release/comment/votes/${commentId}/${page}",
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
