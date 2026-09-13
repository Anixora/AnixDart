import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticlesSearchRequest {
  const ArticlesSearchRequest({required this.channelId, required this.query});

  @JsonKey(name: 'channel_id')
  final int channelId;

  @JsonKey(name: 'query')
  final String query;

  factory ArticlesSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ArticlesSearchRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ArticlesSearchRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelsSearchRequest {
  const ChannelsSearchRequest({
    this.query,
    this.permission,
    this.isBlog,
    this.isSubscribed,
  });

  @JsonKey(name: 'query', includeIfNull: false)
  final String? query;

  @JsonKey(name: 'permission', includeIfNull: false)
  final int? permission;

  @JsonKey(name: 'is_blog', includeIfNull: false)
  final bool? isBlog;

  @JsonKey(name: 'is_subscribed', includeIfNull: false)
  final bool? isSubscribed;

  factory ChannelsSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsSearchRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelsSearchRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SearchRequest {
  const SearchRequest({required this.query, this.searchBy});

  @JsonKey(name: 'query')
  final String query;

  @JsonKey(name: 'searchBy', includeIfNull: false)
  final int? searchBy;

  factory SearchRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseSearchResponse {
  const ReleaseSearchResponse({
    required this.code,
    this.related,
    this.releases,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'related')
  final Related? related;

  @JsonKey(name: 'releases')
  final List<Release>? releases;

  factory ReleaseSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ReleaseSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class FeedSearchResponse {
  const FeedSearchResponse({
    required this.code,
    this.tags,
    this.channels,
    this.blogs,
    this.articles,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'tags')
  final PageableResponse<String>? tags;

  @JsonKey(name: 'channels')
  final PageableResponse<Channel>? channels;

  @JsonKey(name: 'blogs')
  final PageableResponse<Channel>? blogs;

  @JsonKey(name: 'articles')
  final PageableResponse<Article>? articles;

  factory FeedSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FeedSearchResponseToJson(this);
}
