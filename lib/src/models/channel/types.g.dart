// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  cover: json['cover'] as String?,
  avatar: json['avatar'] as String?,
  permission: (json['permission'] as num?)?.toInt(),
  articleCount: (json['article_count'] as num?)?.toInt(),
  subscriberCount: (json['subscriber_count'] as num?)?.toInt(),
  creationDate: (json['creation_date'] as num?)?.toInt(),
  lastUpdateDate: (json['last_update_date'] as num?)?.toInt(),
  isBlog: json['is_blog'] as bool?,
  isCommentingEnabled: json['is_commenting_enabled'] as bool?,
  isArticleSuggestionEnabled: json['is_article_suggestion_enabled'] as bool?,
  isEpisodeChannelWidgetEnabled:
      json['is_episode_channel_widget_enabled'] as bool?,
  episodeChannelWidgetSort: $enumDecodeNullable(
    _$ChannelWidgetSortEnumMap,
    json['episode_channel_widget_sort'],
  ),
  episodeChannelWidgetPopularityPeriod: $enumDecodeNullable(
    _$ChannelWidgetPopularityPeriodEnumMap,
    json['episode_channel_widget_popularity_period'],
  ),
  episodeChannelWidgetArticleCount:
      (json['episode_channel_widget_article_count'] as num?)?.toInt(),
  isLinkedToType: json['is_linked_to_type'] as bool?,
  recentArticleCount: (json['recent_article_count'] as num?)?.toInt(),
  isVerified: json['is_verified'] as bool?,
  isDeleted: json['is_deleted'] as bool?,
  blogProfileId: (json['blog_profile_id'] as num?)?.toInt(),
  isSubscribed: json['is_subscribed'] as bool?,
  isMuted: json['is_muted'] as bool?,
  isBlocked: json['is_blocked'] as bool?,
  blockReason: json['block_reason'] as String?,
  blockExpireDate: (json['block_expire_date'] as num?)?.toInt(),
  isPermBlocked: json['is_perm_blocked'] as bool?,
  isCreator: json['is_creator'] as bool?,
  isAdministratorOrHigher: json['is_administrator_or_higher'] as bool?,
);

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'cover': instance.cover,
  'avatar': instance.avatar,
  'permission': instance.permission,
  'article_count': instance.articleCount,
  'subscriber_count': instance.subscriberCount,
  'creation_date': instance.creationDate,
  'last_update_date': instance.lastUpdateDate,
  'is_blog': instance.isBlog,
  'is_commenting_enabled': instance.isCommentingEnabled,
  'is_article_suggestion_enabled': instance.isArticleSuggestionEnabled,
  'is_episode_channel_widget_enabled': instance.isEpisodeChannelWidgetEnabled,
  'episode_channel_widget_sort':
      _$ChannelWidgetSortEnumMap[instance.episodeChannelWidgetSort],
  'episode_channel_widget_popularity_period':
      _$ChannelWidgetPopularityPeriodEnumMap[instance
          .episodeChannelWidgetPopularityPeriod],
  'episode_channel_widget_article_count':
      instance.episodeChannelWidgetArticleCount,
  'is_linked_to_type': instance.isLinkedToType,
  'recent_article_count': instance.recentArticleCount,
  'is_verified': instance.isVerified,
  'is_deleted': instance.isDeleted,
  'blog_profile_id': instance.blogProfileId,
  'is_subscribed': instance.isSubscribed,
  'is_muted': instance.isMuted,
  'is_blocked': instance.isBlocked,
  'block_reason': instance.blockReason,
  'block_expire_date': instance.blockExpireDate,
  'is_perm_blocked': instance.isPermBlocked,
  'is_creator': instance.isCreator,
  'is_administrator_or_higher': instance.isAdministratorOrHigher,
};

const _$ChannelWidgetSortEnumMap = {
  ChannelWidgetSort.chronology: 0,
  ChannelWidgetSort.popularity: 1,
};

const _$ChannelWidgetPopularityPeriodEnumMap = {
  ChannelWidgetPopularityPeriod.hours24: 0,
  ChannelWidgetPopularityPeriod.days3: 1,
  ChannelWidgetPopularityPeriod.days7: 2,
};

ChannelCompact _$ChannelCompactFromJson(Map<String, dynamic> json) =>
    ChannelCompact(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      cover: json['cover'] as String?,
      avatar: json['avatar'] as String?,
      isBlog: json['is_blog'] as bool?,
      isCommentingEnabled: json['is_commenting_enabled'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      blogProfileId: (json['blog_profile_id'] as num?)?.toInt(),
      permission: (json['permission'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChannelCompactToJson(ChannelCompact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'cover': instance.cover,
      'avatar': instance.avatar,
      'is_blog': instance.isBlog,
      'is_commenting_enabled': instance.isCommentingEnabled,
      'is_deleted': instance.isDeleted,
      'blog_profile_id': instance.blogProfileId,
      'permission': instance.permission,
    };

ChannelProfile _$ChannelProfileFromJson(Map<String, dynamic> json) =>
    ChannelProfile(
      badgeId: (json['badge_id'] as num?)?.toInt(),
      badgeName: json['badge_name'] as String?,
      badgeType: (json['badge_type'] as num?)?.toInt(),
      badgeUrl: json['badge_url'] as String?,
      banExpires: (json['ban_expires'] as num?)?.toInt(),
      banReason: json['ban_reason'] as String?,
      id: (json['id'] as num).toInt(),
      isBanned: json['is_banned'] as bool?,
      isSponsor: json['is_sponsor'] as bool?,
      isVerified: json['is_verified'] as bool?,
      privilegeLevel: (json['privilege_level'] as num?)?.toInt(),
      login: json['login'] as String?,
      avatar: json['avatar'] as String?,
      channelId: (json['channel_id'] as num?)?.toInt(),
      permission: $enumDecodeNullable(
        _$ChannelProfilePermissionEnumMap,
        json['permission'],
      ),
      permissionCreationDate: (json['permission_creation_date'] as num?)
          ?.toInt(),
      isBlocked: json['is_blocked'] as bool?,
      isPermBlocked: json['is_perm_blocked'] as bool?,
      blockReason: json['block_reason'] as String?,
      blockExpireDate: (json['block_expire_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChannelProfileToJson(ChannelProfile instance) =>
    <String, dynamic>{
      'badge_id': instance.badgeId,
      'badge_name': instance.badgeName,
      'badge_type': instance.badgeType,
      'badge_url': instance.badgeUrl,
      'ban_expires': instance.banExpires,
      'ban_reason': instance.banReason,
      'id': instance.id,
      'is_banned': instance.isBanned,
      'is_sponsor': instance.isSponsor,
      'is_verified': instance.isVerified,
      'privilege_level': instance.privilegeLevel,
      'login': instance.login,
      'avatar': instance.avatar,
      'channel_id': instance.channelId,
      'permission': _$ChannelProfilePermissionEnumMap[instance.permission],
      'permission_creation_date': instance.permissionCreationDate,
      'is_blocked': instance.isBlocked,
      'is_perm_blocked': instance.isPermBlocked,
      'block_reason': instance.blockReason,
      'block_expire_date': instance.blockExpireDate,
    };

const _$ChannelProfilePermissionEnumMap = {
  ChannelProfilePermission.member: 0,
  ChannelProfilePermission.administrator: 1,
  ChannelProfilePermission.creator: 2,
};

ChannelBlock _$ChannelBlockFromJson(Map<String, dynamic> json) => ChannelBlock(
  addedDate: (json['added_date'] as num?)?.toInt(),
  expireDate: (json['expire_date'] as num?)?.toInt(),
  reason: json['reason'] as String?,
  isPermBlocked: json['is_perm_blocked'] as bool?,
  isReasonShowingEnabled: json['is_reason_showing_enabled'] as bool?,
);

Map<String, dynamic> _$ChannelBlockToJson(ChannelBlock instance) =>
    <String, dynamic>{
      'added_date': instance.addedDate,
      'expire_date': instance.expireDate,
      'reason': instance.reason,
      'is_perm_blocked': instance.isPermBlocked,
      'is_reason_showing_enabled': instance.isReasonShowingEnabled,
    };

EditorChannel _$EditorChannelFromJson(Map<String, dynamic> json) =>
    EditorChannel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      avatar: json['avatar'] as String?,
      subscriberCount: (json['subscriber_count'] as num?)?.toInt(),
      isBlog: json['is_blog'] as bool?,
    );

Map<String, dynamic> _$EditorChannelToJson(EditorChannel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'avatar': instance.avatar,
      'subscriber_count': instance.subscriberCount,
      'is_blog': instance.isBlog,
    };

ChannelBlockManageRequest _$ChannelBlockManageRequestFromJson(
  Map<String, dynamic> json,
) => ChannelBlockManageRequest(
  targetProfileId: (json['target_profile_id'] as num).toInt(),
  isBlocked: json['is_blocked'] as bool,
  reason: json['reason'] as String?,
  expireDate: (json['expire_date'] as num?)?.toInt(),
  isReasonShowingEnabled: json['is_reason_showing_enabled'] as bool,
  isPermBlocked: json['is_perm_blocked'] as bool,
);

Map<String, dynamic> _$ChannelBlockManageRequestToJson(
  ChannelBlockManageRequest instance,
) => <String, dynamic>{
  'target_profile_id': instance.targetProfileId,
  'is_blocked': instance.isBlocked,
  'reason': instance.reason,
  'expire_date': instance.expireDate,
  'is_reason_showing_enabled': instance.isReasonShowingEnabled,
  'is_perm_blocked': instance.isPermBlocked,
};

ChannelsFilterRequest _$ChannelsFilterRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsFilterRequest(
  permission: (json['permission'] as num?)?.toInt(),
  isBlog: json['is_blog'] as bool?,
  isSubscribed: json['is_subscribed'] as bool?,
  sort: $enumDecodeNullable(_$ChannelsFilterSortEnumMap, json['sort']),
);

Map<String, dynamic> _$ChannelsFilterRequestToJson(
  ChannelsFilterRequest instance,
) => <String, dynamic>{
  'permission': ?instance.permission,
  'is_blog': ?instance.isBlog,
  'is_subscribed': ?instance.isSubscribed,
  'sort': _$ChannelsFilterSortEnumMap[instance.sort],
};

const _$ChannelsFilterSortEnumMap = {
  ChannelsFilterSort.none: 0,
  ChannelsFilterSort.subscriberCount: 1,
};

ChannelCreateEditRequest _$ChannelCreateEditRequestFromJson(
  Map<String, dynamic> json,
) => ChannelCreateEditRequest(
  title: json['title'] as String,
  description: json['description'] as String,
  isCommentingEnabled: json['is_commenting_enabled'] as bool,
  isArticleSuggestionEnabled: json['is_article_suggestion_enabled'] as bool,
  isEpisodeChannelWidgetEnabled:
      json['is_episode_channel_widget_enabled'] as bool?,
  episodeChannelWidgetSort: $enumDecodeNullable(
    _$ChannelWidgetSortEnumMap,
    json['episode_channel_widget_sort'],
  ),
  episodeChannelWidgetPopularityPeriod: $enumDecodeNullable(
    _$ChannelWidgetPopularityPeriodEnumMap,
    json['episode_channel_widget_popularity_period'],
  ),
  episodeChannelWidgetArticleCount:
      (json['episode_channel_widget_article_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChannelCreateEditRequestToJson(
  ChannelCreateEditRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'is_commenting_enabled': instance.isCommentingEnabled,
  'is_article_suggestion_enabled': instance.isArticleSuggestionEnabled,
  'is_episode_channel_widget_enabled': instance.isEpisodeChannelWidgetEnabled,
  'episode_channel_widget_sort':
      _$ChannelWidgetSortEnumMap[instance.episodeChannelWidgetSort],
  'episode_channel_widget_popularity_period':
      _$ChannelWidgetPopularityPeriodEnumMap[instance
          .episodeChannelWidgetPopularityPeriod],
  'episode_channel_widget_article_count':
      instance.episodeChannelWidgetArticleCount,
};

ChannelPermissionManageRequest _$ChannelPermissionManageRequestFromJson(
  Map<String, dynamic> json,
) => ChannelPermissionManageRequest(
  targetProfileId: (json['target_profile_id'] as num).toInt(),
  permission: (json['permission'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChannelPermissionManageRequestToJson(
  ChannelPermissionManageRequest instance,
) => <String, dynamic>{
  'target_profile_id': instance.targetProfileId,
  'permission': ?instance.permission,
};

TypeChannelResponse _$TypeChannelResponseFromJson(Map<String, dynamic> json) =>
    TypeChannelResponse(
      code: (json['code'] as num).toInt(),
      channel: json['channel'] == null
          ? null
          : Channel.fromJson(json['channel'] as Map<String, dynamic>),
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      areWidgetsHiddenGlobally: json['are_widgets_hidden_globally'] as bool?,
      isHiddenByUser: json['is_hidden_by_user'] as bool?,
      isWidgetEligible: json['is_widget_eligible'] as bool?,
    );

Map<String, dynamic> _$TypeChannelResponseToJson(
  TypeChannelResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'channel': instance.channel?.toJson(),
  'articles': instance.articles?.map((e) => e.toJson()).toList(),
  'are_widgets_hidden_globally': instance.areWidgetsHiddenGlobally,
  'is_hidden_by_user': instance.isHiddenByUser,
  'is_widget_eligible': instance.isWidgetEligible,
};

ChannelUploadCoverAvatarResponse _$ChannelUploadCoverAvatarResponseFromJson(
  Map<String, dynamic> json,
) => ChannelUploadCoverAvatarResponse(
  code: (json['code'] as num).toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$ChannelUploadCoverAvatarResponseToJson(
  ChannelUploadCoverAvatarResponse instance,
) => <String, dynamic>{'code': instance.code, 'url': instance.url};

ChannelBlockResponse _$ChannelBlockResponseFromJson(
  Map<String, dynamic> json,
) => ChannelBlockResponse(
  code: (json['code'] as num).toInt(),
  channelBlock: json['channel_block'] == null
      ? null
      : ChannelBlock.fromJson(json['channel_block'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChannelBlockResponseToJson(
  ChannelBlockResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'channel_block': instance.channelBlock?.toJson(),
};

ChannelResponse _$ChannelResponseFromJson(Map<String, dynamic> json) =>
    ChannelResponse(
      code: (json['code'] as num).toInt(),
      channel: json['channel'] == null
          ? null
          : Channel.fromJson(json['channel'] as Map<String, dynamic>),
      suggestionCount: (json['suggestion_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChannelResponseToJson(ChannelResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'channel': instance.channel?.toJson(),
      'suggestion_count': instance.suggestionCount,
    };

ChannelCreateEditResponse _$ChannelCreateEditResponseFromJson(
  Map<String, dynamic> json,
) => ChannelCreateEditResponse(
  code: (json['code'] as num).toInt(),
  channel: json['channel'] == null
      ? null
      : Channel.fromJson(json['channel'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChannelCreateEditResponseToJson(
  ChannelCreateEditResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'channel': instance.channel?.toJson(),
};

BlogCreateResponse _$BlogCreateResponseFromJson(Map<String, dynamic> json) =>
    BlogCreateResponse(
      code: (json['code'] as num).toInt(),
      channel: json['channel'] == null
          ? null
          : Channel.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogCreateResponseToJson(BlogCreateResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'channel': instance.channel?.toJson(),
    };

EditorAvailableResponse _$EditorAvailableResponseFromJson(
  Map<String, dynamic> json,
) => EditorAvailableResponse(
  code: (json['code'] as num).toInt(),
  mediaUploadToken: json['media_upload_token'] as String?,
);

Map<String, dynamic> _$EditorAvailableResponseToJson(
  EditorAvailableResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'media_upload_token': instance.mediaUploadToken,
};

EditorChannelsResponse _$EditorChannelsResponseFromJson(
  Map<String, dynamic> json,
) => EditorChannelsResponse(
  code: (json['code'] as num).toInt(),
  channels: (json['channels'] as List<dynamic>?)
      ?.map((e) => EditorChannel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$EditorChannelsResponseToJson(
  EditorChannelsResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'channels': instance.channels?.map((e) => e.toJson()).toList(),
};

SubscriptionCountResponse _$SubscriptionCountResponseFromJson(
  Map<String, dynamic> json,
) => SubscriptionCountResponse(
  code: (json['code'] as num).toInt(),
  subscriptionCount: (json['subscription_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$SubscriptionCountResponseToJson(
  SubscriptionCountResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'subscription_count': instance.subscriptionCount,
};
