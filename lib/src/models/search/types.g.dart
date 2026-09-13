// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticlesSearchRequest _$ArticlesSearchRequestFromJson(
  Map<String, dynamic> json,
) => ArticlesSearchRequest(
  channelId: (json['channel_id'] as num).toInt(),
  query: json['query'] as String,
);

Map<String, dynamic> _$ArticlesSearchRequestToJson(
  ArticlesSearchRequest instance,
) => <String, dynamic>{
  'channel_id': instance.channelId,
  'query': instance.query,
};

ChannelsSearchRequest _$ChannelsSearchRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsSearchRequest(
  query: json['query'] as String?,
  permission: (json['permission'] as num?)?.toInt(),
  isBlog: json['is_blog'] as bool?,
  isSubscribed: json['is_subscribed'] as bool?,
);

Map<String, dynamic> _$ChannelsSearchRequestToJson(
  ChannelsSearchRequest instance,
) => <String, dynamic>{
  'query': ?instance.query,
  'permission': ?instance.permission,
  'is_blog': ?instance.isBlog,
  'is_subscribed': ?instance.isSubscribed,
};

SearchRequest _$SearchRequestFromJson(Map<String, dynamic> json) =>
    SearchRequest(
      query: json['query'] as String,
      searchBy: (json['searchBy'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchRequestToJson(SearchRequest instance) =>
    <String, dynamic>{'query': instance.query, 'searchBy': ?instance.searchBy};

ReleaseSearchResponse _$ReleaseSearchResponseFromJson(
  Map<String, dynamic> json,
) => ReleaseSearchResponse(
  code: (json['code'] as num).toInt(),
  related: json['related'] == null
      ? null
      : Related.fromJson(json['related'] as Map<String, dynamic>),
  releases: (json['releases'] as List<dynamic>?)
      ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ReleaseSearchResponseToJson(
  ReleaseSearchResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'related': instance.related?.toJson(),
  'releases': instance.releases?.map((e) => e.toJson()).toList(),
};

FeedSearchResponse _$FeedSearchResponseFromJson(Map<String, dynamic> json) =>
    FeedSearchResponse(
      code: (json['code'] as num).toInt(),
      tags: json['tags'] == null
          ? null
          : PageableResponse<String>.fromJson(
              json['tags'] as Map<String, dynamic>,
              (value) => value as String,
            ),
      channels: json['channels'] == null
          ? null
          : PageableResponse<Channel>.fromJson(
              json['channels'] as Map<String, dynamic>,
              (value) => Channel.fromJson(value as Map<String, dynamic>),
            ),
      blogs: json['blogs'] == null
          ? null
          : PageableResponse<Channel>.fromJson(
              json['blogs'] as Map<String, dynamic>,
              (value) => Channel.fromJson(value as Map<String, dynamic>),
            ),
      articles: json['articles'] == null
          ? null
          : PageableResponse<Article>.fromJson(
              json['articles'] as Map<String, dynamic>,
              (value) => Article.fromJson(value as Map<String, dynamic>),
            ),
    );

Map<String, dynamic> _$FeedSearchResponseToJson(FeedSearchResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'tags': instance.tags?.toJson((value) => value),
      'channels': instance.channels?.toJson((value) => value.toJson()),
      'blogs': instance.blogs?.toJson((value) => value.toJson()),
      'articles': instance.articles?.toJson((value) => value.toJson()),
    };
