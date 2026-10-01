import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Channel {
  const Channel({
    required this.id,
    required this.title,
    required this.description,
    this.cover,
    this.avatar,
    required this.permission,
    required this.articleCount,
    required this.subscriberCount,
    required this.creationDate,
    required this.lastUpdateDate,
    required this.isBlog,
    required this.isCommentingEnabled,
    required this.isArticleSuggestionEnabled,
    required this.isEpisodeChannelWidgetEnabled,
    required this.episodeChannelWidgetSort,
    required this.episodeChannelWidgetPopularityPeriod,
    required this.episodeChannelWidgetArticleCount,
    required this.isLinkedToType,
    required this.recentArticleCount,
    required this.isVerified,
    required this.isDeleted,
    this.blogProfileId,
    required this.isSubscribed,
    required this.isMuted,
    required this.isBlocked,
    this.blockReason,
    this.blockExpireDate,
    required this.isPermBlocked,
    required this.isCreator,
    required this.isAdministratorOrHigher,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'cover')
  final String? cover;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'permission')
  final int permission;

  @JsonKey(name: 'article_count')
  final int articleCount;

  @JsonKey(name: 'subscriber_count')
  final int subscriberCount;

  @JsonKey(name: 'creation_date')
  final int creationDate;

  @JsonKey(name: 'last_update_date')
  final int lastUpdateDate;

  @JsonKey(name: 'is_blog')
  final bool isBlog;

  @JsonKey(name: 'is_commenting_enabled')
  final bool isCommentingEnabled;

  @JsonKey(name: 'is_article_suggestion_enabled')
  final bool isArticleSuggestionEnabled;

  @JsonKey(name: 'is_episode_channel_widget_enabled')
  final bool isEpisodeChannelWidgetEnabled;

  @JsonKey(name: 'episode_channel_widget_sort')
  final ChannelWidgetSort episodeChannelWidgetSort;

  @JsonKey(name: 'episode_channel_widget_popularity_period')
  final ChannelWidgetPopularityPeriod episodeChannelWidgetPopularityPeriod;

  @JsonKey(name: 'episode_channel_widget_article_count')
  final int episodeChannelWidgetArticleCount;

  @JsonKey(name: 'is_linked_to_type')
  final bool isLinkedToType;

  @JsonKey(name: 'recent_article_count')
  final int recentArticleCount;

  @JsonKey(name: 'is_verified')
  final bool isVerified;

  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  @JsonKey(name: 'blog_profile_id')
  final int? blogProfileId;

  @JsonKey(name: 'is_subscribed')
  final bool isSubscribed;

  @JsonKey(name: 'is_muted')
  final bool isMuted;

  @JsonKey(name: 'is_blocked')
  final bool isBlocked;

  @JsonKey(name: 'block_reason')
  final String? blockReason;

  @JsonKey(name: 'block_expire_date')
  final int? blockExpireDate;

  @JsonKey(name: 'is_perm_blocked')
  final bool isPermBlocked;

  @JsonKey(name: 'is_creator')
  final bool isCreator;

  @JsonKey(name: 'is_administrator_or_higher')
  final bool isAdministratorOrHigher;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelCompact {
  const ChannelCompact({
    required this.id,
    required this.title,
    required this.description,
    this.cover,
    this.avatar,
    required this.isBlog,
    required this.isCommentingEnabled,
    required this.isDeleted,
    this.blogProfileId,
    required this.permission,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'cover')
  final String? cover;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'is_blog')
  final bool isBlog;

  @JsonKey(name: 'is_commenting_enabled')
  final bool isCommentingEnabled;

  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  @JsonKey(name: 'blog_profile_id')
  final int? blogProfileId;

  @JsonKey(name: 'permission')
  final int permission;

  factory ChannelCompact.fromJson(Map<String, dynamic> json) =>
      _$ChannelCompactFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelProfile {
  const ChannelProfile({
    this.badgeId,
    this.badgeName,
    this.badgeType,
    this.badgeUrl,
    required this.banExpires,
    required this.banReason,
    required this.id,
    required this.isBanned,
    required this.isSponsor,
    required this.isVerified,
    required this.privilegeLevel,
    required this.login,
    required this.avatar,
    required this.channelId,
    required this.permission,
    required this.permissionCreationDate,
    required this.isBlocked,
    required this.isPermBlocked,
    this.blockReason,
    this.blockExpireDate,
  });

  @JsonKey(name: 'badge_id')
  final int? badgeId;

  @JsonKey(name: 'badge_name')
  final String? badgeName;

  @JsonKey(name: 'badge_type')
  final int? badgeType;

  @JsonKey(name: 'badge_url')
  final String? badgeUrl;

  @JsonKey(name: 'ban_expires')
  final int banExpires;

  @JsonKey(name: 'ban_reason')
  final String banReason;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'is_banned')
  final bool isBanned;

  @JsonKey(name: 'is_sponsor')
  final bool isSponsor;

  @JsonKey(name: 'is_verified')
  final bool isVerified;

  @JsonKey(name: 'privilege_level')
  final int privilegeLevel;

  @JsonKey(name: 'login')
  final String login;

  @JsonKey(name: 'avatar')
  final String avatar;

  @JsonKey(name: 'channel_id')
  final int channelId;

  @JsonKey(name: 'permission')
  final ChannelProfilePermission permission;

  @JsonKey(name: 'permission_creation_date')
  final int permissionCreationDate;

  @JsonKey(name: 'is_blocked')
  final bool isBlocked;

  @JsonKey(name: 'is_perm_blocked')
  final bool isPermBlocked;

  @JsonKey(name: 'block_reason')
  final String? blockReason;

  @JsonKey(name: 'block_expire_date')
  final int? blockExpireDate;

  factory ChannelProfile.fromJson(Map<String, dynamic> json) =>
      _$ChannelProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelProfileToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelBlock {
  const ChannelBlock({
    required this.addedDate,
    required this.expireDate,
    this.reason,
    required this.isPermBlocked,
    required this.isReasonShowingEnabled,
  });

  @JsonKey(name: 'added_date')
  final int addedDate;

  @JsonKey(name: 'expire_date')
  final int expireDate;

  @JsonKey(name: 'reason')
  final String? reason;

  @JsonKey(name: 'is_perm_blocked')
  final bool isPermBlocked;

  @JsonKey(name: 'is_reason_showing_enabled')
  final bool isReasonShowingEnabled;

  factory ChannelBlock.fromJson(Map<String, dynamic> json) =>
      _$ChannelBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class EditorChannel {
  const EditorChannel({
    required this.id,
    required this.title,
    this.avatar,
    required this.subscriberCount,
    required this.isBlog,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'subscriber_count')
  final int subscriberCount;

  @JsonKey(name: 'is_blog')
  final bool isBlog;

  factory EditorChannel.fromJson(Map<String, dynamic> json) =>
      _$EditorChannelFromJson(json);
  Map<String, dynamic> toJson() => _$EditorChannelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelBlockManageRequest {
  const ChannelBlockManageRequest({
    required this.targetProfileId,
    required this.isBlocked,
    required this.reason,
    required this.expireDate,
    required this.isReasonShowingEnabled,
    required this.isPermBlocked,
  });

  @JsonKey(name: 'target_profile_id')
  final int targetProfileId;

  @JsonKey(name: 'is_blocked')
  final bool isBlocked;

  @JsonKey(name: 'reason')
  final String? reason;

  @JsonKey(name: 'expire_date')
  final int? expireDate;

  @JsonKey(name: 'is_reason_showing_enabled')
  final bool isReasonShowingEnabled;

  @JsonKey(name: 'is_perm_blocked')
  final bool isPermBlocked;

  factory ChannelBlockManageRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelBlockManageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelBlockManageRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelsFilterRequest {
  const ChannelsFilterRequest({
    this.permission,
    this.isBlog,
    this.isSubscribed,
    required this.sort,
  });

  @JsonKey(name: 'permission', includeIfNull: false)
  final int? permission;

  @JsonKey(name: 'is_blog', includeIfNull: false)
  final bool? isBlog;

  @JsonKey(name: 'is_subscribed', includeIfNull: false)
  final bool? isSubscribed;

  @JsonKey(name: 'sort')
  final ChannelsFilterSort? sort;

  factory ChannelsFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFilterRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelsFilterRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelCreateEditRequest {
  const ChannelCreateEditRequest({
    required this.title,
    required this.description,
    required this.isCommentingEnabled,
    required this.isArticleSuggestionEnabled,
    required this.isEpisodeChannelWidgetEnabled,
    required this.episodeChannelWidgetSort,
    required this.episodeChannelWidgetPopularityPeriod,
    required this.episodeChannelWidgetArticleCount,
  });

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'is_commenting_enabled')
  final bool isCommentingEnabled;

  @JsonKey(name: 'is_article_suggestion_enabled')
  final bool isArticleSuggestionEnabled;

  @JsonKey(name: 'is_episode_channel_widget_enabled')
  final bool? isEpisodeChannelWidgetEnabled;

  @JsonKey(name: 'episode_channel_widget_sort')
  final ChannelWidgetSort? episodeChannelWidgetSort;

  @JsonKey(name: 'episode_channel_widget_popularity_period')
  final ChannelWidgetPopularityPeriod? episodeChannelWidgetPopularityPeriod;

  @JsonKey(name: 'episode_channel_widget_article_count')
  final int? episodeChannelWidgetArticleCount;

  factory ChannelCreateEditRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelCreateEditRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelCreateEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelPermissionManageRequest {
  const ChannelPermissionManageRequest({
    required this.targetProfileId,
    this.permission,
  });

  @JsonKey(name: 'target_profile_id')
  final int targetProfileId;

  @JsonKey(name: 'permission', includeIfNull: false)
  final int? permission;

  factory ChannelPermissionManageRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelPermissionManageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelPermissionManageRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class TypeChannelResponse {
  const TypeChannelResponse({
    required this.code,
    this.channel,
    required this.articles,
    required this.areWidgetsHiddenGlobally,
    required this.isHiddenByUser,
    required this.isWidgetEligible,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'channel')
  final Channel? channel;

  @JsonKey(name: 'articles')
  final List<Article> articles;

  @JsonKey(name: 'are_widgets_hidden_globally')
  final bool areWidgetsHiddenGlobally;

  @JsonKey(name: 'is_hidden_by_user')
  final bool isHiddenByUser;

  @JsonKey(name: 'is_widget_eligible')
  final bool isWidgetEligible;

  factory TypeChannelResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeChannelResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TypeChannelResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelUploadCoverAvatarResponse {
  const ChannelUploadCoverAvatarResponse({required this.code, this.url});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'url')
  final String? url;

  factory ChannelUploadCoverAvatarResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ChannelUploadCoverAvatarResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ChannelUploadCoverAvatarResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelBlockResponse {
  const ChannelBlockResponse({required this.code, this.channelBlock});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'channel_block')
  final ChannelBlock? channelBlock;

  factory ChannelBlockResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelBlockResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelBlockResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelResponse {
  const ChannelResponse({
    required this.code,
    this.channel,
    required this.suggestionCount,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'channel')
  final Channel? channel;

  @JsonKey(name: 'suggestion_count')
  final int suggestionCount;

  factory ChannelResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChannelCreateEditResponse {
  const ChannelCreateEditResponse({required this.code, this.channel});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'channel')
  final Channel? channel;

  factory ChannelCreateEditResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelCreateEditResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelCreateEditResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class BlogCreateResponse {
  const BlogCreateResponse({required this.code, this.channel});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'channel')
  final Channel? channel;

  factory BlogCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$BlogCreateResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BlogCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class EditorAvailableResponse {
  const EditorAvailableResponse({required this.code, this.mediaUploadToken});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'media_upload_token')
  final String? mediaUploadToken;

  factory EditorAvailableResponse.fromJson(Map<String, dynamic> json) =>
      _$EditorAvailableResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EditorAvailableResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class EditorChannelsResponse {
  const EditorChannelsResponse({required this.code, required this.channels});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'channels')
  final List<EditorChannel> channels;

  factory EditorChannelsResponse.fromJson(Map<String, dynamic> json) =>
      _$EditorChannelsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EditorChannelsResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SubscriptionCountResponse {
  const SubscriptionCountResponse({
    required this.code,
    required this.subscriptionCount,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'subscription_count')
  final int subscriptionCount;

  factory SubscriptionCountResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCountResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionCountResponseToJson(this);
}
