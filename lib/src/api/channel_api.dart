import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class ChannelApi {
  const ChannelApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<Article>> articles(
    int channelId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Article>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/${channelId}/article/all/${page}",
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

  Future<ChannelUploadCoverAvatarResponse> avatarUpload(
    int channelId,
    List<int> image, {
    String? name,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelUploadCoverAvatarResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/avatar/upload/${channelId}",
        auth: const AnixartAuth(),
        body: ImageBody(name: name ?? "image.jpg", file: image, field: "image"),
        resultEnum: {
          for (final e in ChannelUploadCoverAvatarResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ChannelUploadCoverAvatarResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );
    return response.data;
  }

  Future<ChannelBlockResponse> block(
    int channelId,
    int profileId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelBlockResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/${channelId}/block/${profileId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ChannelBlockResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChannelBlockResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ChannelBlockResponse> blockManage(
    int channelId,
    ChannelBlockManageRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelBlockResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/${channelId}/block/manage",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in ChannelBlockResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChannelBlockResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ChannelProfile>> blocks(
    int channelId, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ChannelProfile>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/${channelId}/block/all/${page}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<ChannelProfile>.fromJson(
        value as Map<String, dynamic>,
        (value) => ChannelProfile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ChannelResponse> blog(
    int profileId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/blog/${profileId}",
        auth: const AnixartAuth(),
        resultEnum: {for (final e in ChannelResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          ChannelResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ChannelResponse> get(
    int channelId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/${channelId}",
        auth: const AnixartAuth(),
        resultEnum: {for (final e in ChannelResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) =>
          ChannelResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Channel>> all(
    ChannelsFilterRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Channel>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/all/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Channel>.fromJson(
        value as Map<String, dynamic>,
        (value) => Channel.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ChannelUploadCoverAvatarResponse> coverDelete(
    int channelId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelUploadCoverAvatarResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/cover/delete/${channelId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ChannelUploadCoverAvatarResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ChannelUploadCoverAvatarResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );
    return response.data;
  }

  Future<ChannelUploadCoverAvatarResponse> coverUpload(
    int channelId,
    List<int> image, {
    String? name,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelUploadCoverAvatarResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/cover/upload/${channelId}",
        auth: const AnixartAuth(),
        body: ImageBody(name: name ?? "image.jpg", file: image, field: "image"),
        resultEnum: {
          for (final e in ChannelUploadCoverAvatarResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ChannelUploadCoverAvatarResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );
    return response.data;
  }

  Future<ChannelCreateEditResponse> create(
    ChannelCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelCreateEditResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/create",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in ChannelCreateEditResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChannelCreateEditResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<BlogCreateResponse> createBlog({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<BlogCreateResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/blog/create",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in BlogCreateResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          BlogCreateResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ChannelCreateEditResponse> edit(
    int channelId,
    ChannelCreateEditRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ChannelCreateEditResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/edit/${channelId}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in ChannelCreateEditResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          ChannelCreateEditResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<EditorAvailableResponse> editorAvaliable(
    int channelId, {
    bool isSuggestion = false,
    bool isEditMode = false,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<EditorAvailableResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/${channelId}/editor/available",
        auth: const AnixartAuth(),
        query: {"is_suggestion": isSuggestion, "is_edit_mode": isEditMode},
        resultEnum: {
          for (final e in EditorAvailableResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) =>
          EditorAvailableResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<EditorChannelsResponse> editorAvaliableChannels(
    bool onlySubscribed, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<EditorChannelsResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/editor/available/all",
        auth: const AnixartAuth(),
        query: {"only_subscribed": onlySubscribed},
        options: options,
      ),
      decoder: (value) =>
          EditorChannelsResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> mute(
    int channelId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/mute/${channelId}",
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

  Future<PageableResponse<Channel>> mutes({
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Channel>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/mute/all/${page}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => PageableResponse<Channel>.fromJson(
        value as Map<String, dynamic>,
        (value) => Channel.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> permissionManage(
    int channelId,
    ChannelPermissionManageRequest data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/${channelId}/permission/manage",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        resultEnum: {
          for (final e in ChannelPermissionManageResult.values)
            e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<ChannelProfile>> permissions(
    int channelId, {
    int page = 0,
    int? permission,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ChannelProfile>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/${channelId}/permission/all/${page}",
        auth: const AnixartAuth(),
        body: JsonBody({if (permission != null) "permission": permission}),
        options: options,
      ),
      decoder: (value) => PageableResponse<ChannelProfile>.fromJson(
        value as Map<String, dynamic>,
        (value) => ChannelProfile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Channel>> recommendations({
    int page = 0,
    bool isBlog = false,
    bool excludeSubscribed = false,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Channel>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/recommendations/${page}",
        auth: const AnixartAuth(),
        query: {"is_blog": isBlog, "exclude_subscribed": excludeSubscribed},
        options: options,
      ),
      decoder: (value) => PageableResponse<Channel>.fromJson(
        value as Map<String, dynamic>,
        (value) => Channel.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> subscribe(
    int channelId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/subscribe/${channelId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ChannelSubscribeResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<SubscriptionCountResponse> subscriptionCount({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<SubscriptionCountResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/subscription/count",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          SubscriptionCountResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Channel>> subscriptions({
    int page = 0,
    int? sort,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Channel>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/channel/subscription/all/${page}",
        auth: const AnixartAuth(),
        query: {if (sort != null) "sort": sort},
        options: options,
      ),
      decoder: (value) => PageableResponse<Channel>.fromJson(
        value as Map<String, dynamic>,
        (value) => Channel.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ApiResponse> unmute(
    int channelId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/unmute/${channelId}",
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

  Future<ApiResponse> unsubscribe(
    int channelId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/channel/unsubscribe/${channelId}",
        auth: const AnixartAuth(),
        resultEnum: {
          for (final e in ChannelUnsubscribeResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
