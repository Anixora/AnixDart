import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class NotificationApi {
  const NotificationApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<CommonProfileNotification>> all({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<PageableResponse<CommonProfileNotification>>(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/all/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<CommonProfileNotification>.fromJson(
                value as Map<String, dynamic>,
                (value) => CommonProfileNotification.fromJson(
                  value as Map<String, dynamic>,
                ),
              ),
        );
    return response.data;
  }

  Future<PageableResponse<ProfileCommentNotification<ArticleCommentCompact>>>
  articleComments({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<
          PageableResponse<ProfileCommentNotification<ArticleCommentCompact>>
        >(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/article/comments/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<
                ProfileCommentNotification<ArticleCommentCompact>
              >.fromJson(
                value as Map<String, dynamic>,
                (value) =>
                    ProfileCommentNotification<ArticleCommentCompact>.fromJson(
                      value as Map<String, dynamic>,
                      (value) => ArticleCommentCompact.fromJson(
                        value as Map<String, dynamic>,
                      ),
                    ),
              ),
        );
    return response.data;
  }

  Future<PageableResponse<ProfileArticleNotification>> articles({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<PageableResponse<ProfileArticleNotification>>(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/articles/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<ProfileArticleNotification>.fromJson(
                value as Map<String, dynamic>,
                (value) => ProfileArticleNotification.fromJson(
                  value as Map<String, dynamic>,
                ),
              ),
        );
    return response.data;
  }

  Future<PageableResponse<ProfileCommentNotification<CollectionCommentCompact>>>
  collectionComments({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<
          PageableResponse<ProfileCommentNotification<CollectionCommentCompact>>
        >(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/collectionComments/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<
                ProfileCommentNotification<CollectionCommentCompact>
              >.fromJson(
                value as Map<String, dynamic>,
                (value) =>
                    ProfileCommentNotification<
                      CollectionCommentCompact
                    >.fromJson(
                      value as Map<String, dynamic>,
                      (value) => CollectionCommentCompact.fromJson(
                        value as Map<String, dynamic>,
                      ),
                    ),
              ),
        );
    return response.data;
  }

  Future<NotificationCountResponse> count({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<NotificationCountResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/notification/count",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          NotificationCountResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> deleteAll({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/notification/delete/all",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> delete(
    int notificationId,
    DeleteNotificationType type, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/notification/${type.value}/delete/${notificationId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ProfileEpisodeNotification>> episodes({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<PageableResponse<ProfileEpisodeNotification>>(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/episodes/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<ProfileEpisodeNotification>.fromJson(
                value as Map<String, dynamic>,
                (value) => ProfileEpisodeNotification.fromJson(
                  value as Map<String, dynamic>,
                ),
              ),
        );
    return response.data;
  }

  Future<PageableResponse<ProfileFriendNotification>> friends({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<PageableResponse<ProfileFriendNotification>>(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/friends/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<ProfileFriendNotification>.fromJson(
                value as Map<String, dynamic>,
                (value) => ProfileFriendNotification.fromJson(
                  value as Map<String, dynamic>,
                ),
              ),
        );
    return response.data;
  }

  Future<ApiResponse> read({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/notification/read",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ProfileRelatedReleaseNotification>> relatedReleases({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<PageableResponse<ProfileRelatedReleaseNotification>>(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/related/release/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<ProfileRelatedReleaseNotification>.fromJson(
                value as Map<String, dynamic>,
                (value) => ProfileRelatedReleaseNotification.fromJson(
                  value as Map<String, dynamic>,
                ),
              ),
        );
    return response.data;
  }

  Future<PageableResponse<ProfileCommentNotification<ReleaseCommentCompact>>>
  releaseComments({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<
          PageableResponse<ProfileCommentNotification<ReleaseCommentCompact>>
        >(
          HttpRequest(
            method: HttpMethod.get,
            path: "/notification/releaseComments/${page}",
            auth: const AnixartAuth(),
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<
                ProfileCommentNotification<ReleaseCommentCompact>
              >.fromJson(
                value as Map<String, dynamic>,
                (value) =>
                    ProfileCommentNotification<ReleaseCommentCompact>.fromJson(
                      value as Map<String, dynamic>,
                      (value) => ReleaseCommentCompact.fromJson(
                        value as Map<String, dynamic>,
                      ),
                    ),
              ),
        );
    return response.data;
  }
}
