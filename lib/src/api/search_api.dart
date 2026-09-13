import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class SearchApi {
  const SearchApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<Article>> articles(
    ArticlesSearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Article>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/articles/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Article>.fromJson(
        value as Map<String, dynamic>,
        (value) => Article.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Channel>> channels(
    ChannelsSearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Channel>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/channels/${page}",
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

  Future<PageableResponse<ChannelProfile>> channelSubscribers(
    int channelId,
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<ChannelProfile>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/channel/${channelId}/subscribers/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<ChannelProfile>.fromJson(
        value as Map<String, dynamic>,
        (value) => ChannelProfile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Collection>> collections(
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Collection>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/collections/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Collection>.fromJson(
        value as Map<String, dynamic>,
        (value) => Collection.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Collection>> favoriteCollections(
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Collection>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/favoriteCollections/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Collection>.fromJson(
        value as Map<String, dynamic>,
        (value) => Collection.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> favorites(
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/favorites/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<FeedSearchResponse> feed(
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<FeedSearchResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/feed/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) =>
          FeedSearchResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> history(
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/history/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Collection>> profileCollections(
    int profileId,
    SearchRequest data, {
    int page = 0,
    int? releaseId,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Collection>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/profileCollections/${profileId}/${page}",
        auth: const AnixartAuth(),
        query: {"release_id": releaseId},
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Collection>.fromJson(
        value as Map<String, dynamic>,
        (value) => Collection.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Release>> profileList(
    BookmarkType status,
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Release>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/profile/list/${status.value}/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Release>.fromJson(
        value as Map<String, dynamic>,
        (value) => Release.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<PageableResponse<Profile>> profiles(
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<PageableResponse<Profile>>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/profiles/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: options,
      ),
      decoder: (value) => PageableResponse<Profile>.fromJson(
        value as Map<String, dynamic>,
        (value) => Profile.fromJson(value as Map<String, dynamic>),
      ),
    );
    return response.data;
  }

  Future<ReleaseSearchResult> releases(
    SearchRequest data, {
    int page = 0,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ReleaseSearchResult>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/search/releases/${page}",
        auth: const AnixartAuth(),
        body: JsonBody(data.toJson()),
        options: RequestOptions(
          timeout: options.timeout,
          cancelToken: options.cancelToken,
          throwOnAnixartError: options.throwOnAnixartError,
          apiVersion: options.apiVersion ?? 2,
        ),
      ),
      decoder: (value) =>
          ReleaseSearchResult.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
