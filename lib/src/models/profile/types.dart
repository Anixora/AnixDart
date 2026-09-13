import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Profile {
  const Profile({
    required this.id,
    this.login,
    this.avatar,
    this.status,
    this.badge,
    this.history,
    this.votes,
    this.roles,
    this.lastActivityTime,
    this.registerDate,
    this.vkPage,
    this.tgPage,
    this.instPage,
    this.ttPage,
    this.discordPage,
    this.banExpires,
    this.banReason,
    this.privilegeLevel,
    this.watchingCount,
    this.planCount,
    this.completedCount,
    this.holdOnCount,
    this.droppedCount,
    this.favoriteCount,
    this.commentCount,
    this.collectionCount,
    this.videoCount,
    this.friendCount,
    this.subscriptionCount,
    this.watchedEpisodeCount,
    this.watchedTime,
    this.pinnedSectionId,
    this.isPrivate,
    this.isSponsor,
    this.isBanned,
    this.isPermBanned,
    this.isDeleted,
    this.isDeletionRequested,
    this.isBookmarksTransferred,
    this.isSponsorTransferred,
    this.isVkBound,
    this.isGoogleBound,
    this.isTelegramBound,
    this.isYandexBound,
    this.isIncognito,
    this.episodeChannelWidgetsHidden,
    this.isReleaseTypeNotificationsEnabled,
    this.isEpisodeNotificationsEnabled,
    this.isFirstEpisodeNotificationEnabled,
    this.isRelatedReleaseNotificationsEnabled,
    this.isReportProcessNotificationsEnabled,
    this.isCommentNotificationsEnabled,
    this.isMyCollectionCommentNotificationsEnabled,
    this.isArticleNotificationsEnabled,
    this.isMyArticleCommentNotificationsEnabled,
    this.isVerified,
    this.friendsPreview,
    this.collectionsPreview,
    this.commentsPreview,
    this.releaseVideosPreview,
    this.watchDynamics,
    this.friendStatus,
    this.ratingScore,
    this.preferredGenres,
    this.preferredAudiences,
    this.preferredThemes,
    this.themeEnabled,
    this.themeGradientStartColor,
    this.themeGradientEndColor,
    this.themeGradientAngle,
    this.themeIconResName,
    this.themeIconUrl,
    this.themeIconColor,
    this.themeIconAlpha,
    this.themeIconDensity,
    this.themeIconSize,
    this.themeAnimationEnabled,
    this.themeAnimationSpeed,
    this.themeBackgroundUrl,
    this.themeBackgroundMode,
    this.themeBackgroundAlpha,
    this.deletionRequestedAt,
    this.deletionDeleteAt,
    this.isBlocked,
    this.isMeBlocked,
    this.isStatsHidden,
    this.isCountsHidden,
    this.isSocialHidden,
    this.isFriendRequestsDisallowed,
    this.isOnline,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'login')
  final String? login;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'badge')
  final Badge? badge;

  @JsonKey(name: 'history')
  final List<Release>? history;

  @JsonKey(name: 'votes')
  final List<Release>? votes;

  @JsonKey(name: 'roles')
  final List<Role>? roles;

  @JsonKey(name: 'last_activity_time')
  final int? lastActivityTime;

  @JsonKey(name: 'register_date')
  final int? registerDate;

  @JsonKey(name: 'vk_page')
  final String? vkPage;

  @JsonKey(name: 'tg_page')
  final String? tgPage;

  @JsonKey(name: 'inst_page')
  final String? instPage;

  @JsonKey(name: 'tt_page')
  final String? ttPage;

  @JsonKey(name: 'discord_page')
  final String? discordPage;

  @JsonKey(name: 'ban_expires')
  final int? banExpires;

  @JsonKey(name: 'ban_reason')
  final String? banReason;

  @JsonKey(name: 'privilege_level')
  final PrivilegeLevel? privilegeLevel;

  @JsonKey(name: 'watching_count')
  final int? watchingCount;

  @JsonKey(name: 'plan_count')
  final int? planCount;

  @JsonKey(name: 'completed_count')
  final int? completedCount;

  @JsonKey(name: 'hold_on_count')
  final int? holdOnCount;

  @JsonKey(name: 'dropped_count')
  final int? droppedCount;

  @JsonKey(name: 'favorite_count')
  final int? favoriteCount;

  @JsonKey(name: 'comment_count')
  final int? commentCount;

  @JsonKey(name: 'collection_count')
  final int? collectionCount;

  @JsonKey(name: 'video_count')
  final int? videoCount;

  @JsonKey(name: 'friend_count')
  final int? friendCount;

  @JsonKey(name: 'subscription_count')
  final int? subscriptionCount;

  @JsonKey(name: 'watched_episode_count')
  final int? watchedEpisodeCount;

  @JsonKey(name: 'watched_time')
  final int? watchedTime;

  @JsonKey(name: 'pinned_section_id')
  final int? pinnedSectionId;

  @JsonKey(name: 'is_private')
  final bool? isPrivate;

  @JsonKey(name: 'is_sponsor')
  final bool? isSponsor;

  @JsonKey(name: 'is_banned')
  final bool? isBanned;

  @JsonKey(name: 'is_perm_banned')
  final bool? isPermBanned;

  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;

  @JsonKey(name: 'is_deletion_requested')
  final bool? isDeletionRequested;

  @JsonKey(name: 'is_bookmarks_transferred')
  final bool? isBookmarksTransferred;

  @JsonKey(name: 'is_sponsor_transferred')
  final bool? isSponsorTransferred;

  @JsonKey(name: 'is_vk_bound')
  final bool? isVkBound;

  @JsonKey(name: 'is_google_bound')
  final bool? isGoogleBound;

  @JsonKey(name: 'is_telegram_bound')
  final bool? isTelegramBound;

  @JsonKey(name: 'is_yandex_bound')
  final bool? isYandexBound;

  @JsonKey(name: 'is_incognito')
  final bool? isIncognito;

  @JsonKey(name: 'episode_channel_widgets_hidden')
  final bool? episodeChannelWidgetsHidden;

  @JsonKey(name: 'is_release_type_notifications_enabled')
  final bool? isReleaseTypeNotificationsEnabled;

  @JsonKey(name: 'is_episode_notifications_enabled')
  final bool? isEpisodeNotificationsEnabled;

  @JsonKey(name: 'is_first_episode_notification_enabled')
  final bool? isFirstEpisodeNotificationEnabled;

  @JsonKey(name: 'is_related_release_notifications_enabled')
  final bool? isRelatedReleaseNotificationsEnabled;

  @JsonKey(name: 'is_report_process_notifications_enabled')
  final bool? isReportProcessNotificationsEnabled;

  @JsonKey(name: 'is_comment_notifications_enabled')
  final bool? isCommentNotificationsEnabled;

  @JsonKey(name: 'is_my_collection_comment_notifications_enabled')
  final bool? isMyCollectionCommentNotificationsEnabled;

  @JsonKey(name: 'is_article_notifications_enabled')
  final bool? isArticleNotificationsEnabled;

  @JsonKey(name: 'is_my_article_comment_notifications_enabled')
  final bool? isMyArticleCommentNotificationsEnabled;

  @JsonKey(name: 'is_verified')
  final bool? isVerified;

  @JsonKey(name: 'friends_preview')
  final List<Profile>? friendsPreview;

  @JsonKey(name: 'collections_preview')
  final List<Collection>? collectionsPreview;

  @JsonKey(name: 'comments_preview')
  final List<CommentPreview>? commentsPreview;

  @JsonKey(name: 'release_videos_preview')
  final List<ReleaseVideo>? releaseVideosPreview;

  @JsonKey(name: 'watch_dynamics')
  final List<WatchDynamics>? watchDynamics;

  @JsonKey(name: 'friend_status')
  final FriendStatus? friendStatus;

  @JsonKey(name: 'rating_score')
  final int? ratingScore;

  @JsonKey(name: 'preferred_genres')
  final List<PreferredType>? preferredGenres;

  @JsonKey(name: 'preferred_audiences')
  final List<PreferredType>? preferredAudiences;

  @JsonKey(name: 'preferred_themes')
  final List<PreferredType>? preferredThemes;

  @JsonKey(name: 'theme_enabled')
  final bool? themeEnabled;

  @JsonKey(name: 'theme_gradient_start_color')
  final String? themeGradientStartColor;

  @JsonKey(name: 'theme_gradient_end_color')
  final String? themeGradientEndColor;

  @JsonKey(name: 'theme_gradient_angle')
  final String? themeGradientAngle;

  @JsonKey(name: 'theme_icon_res_name')
  final String? themeIconResName;

  @JsonKey(name: 'theme_icon_url')
  final String? themeIconUrl;

  @JsonKey(name: 'theme_icon_color')
  final String? themeIconColor;

  @JsonKey(name: 'theme_icon_alpha')
  final double? themeIconAlpha;

  @JsonKey(name: 'theme_icon_density')
  final String? themeIconDensity;

  @JsonKey(name: 'theme_icon_size')
  final String? themeIconSize;

  @JsonKey(name: 'theme_animation_enabled')
  final bool? themeAnimationEnabled;

  @JsonKey(name: 'theme_animation_speed')
  final String? themeAnimationSpeed;

  @JsonKey(name: 'theme_background_url')
  final String? themeBackgroundUrl;

  @JsonKey(name: 'theme_background_mode')
  final String? themeBackgroundMode;

  @JsonKey(name: 'theme_background_alpha')
  final double? themeBackgroundAlpha;

  @JsonKey(name: 'deletion_requested_at')
  final int? deletionRequestedAt;

  @JsonKey(name: 'deletion_delete_at')
  final int? deletionDeleteAt;

  @JsonKey(name: 'is_blocked')
  final bool? isBlocked;

  @JsonKey(name: 'is_me_blocked')
  final bool? isMeBlocked;

  @JsonKey(name: 'is_stats_hidden')
  final bool? isStatsHidden;

  @JsonKey(name: 'is_counts_hidden')
  final bool? isCountsHidden;

  @JsonKey(name: 'is_social_hidden')
  final bool? isSocialHidden;

  @JsonKey(name: 'is_friend_requests_disallowed')
  final bool? isFriendRequestsDisallowed;

  @JsonKey(name: 'is_online')
  final bool? isOnline;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileSlim {
  const ProfileSlim({required this.id, this.login, this.avatar});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'login')
  final String? login;

  @JsonKey(name: 'avatar')
  final String? avatar;

  factory ProfileSlim.fromJson(Map<String, dynamic> json) =>
      _$ProfileSlimFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileSlimToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileToken {
  const ProfileToken({required this.id, this.token});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'token')
  final String? token;

  factory ProfileToken.fromJson(Map<String, dynamic> json) =>
      _$ProfileTokenFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileTokenToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CommentPreview {
  const CommentPreview({
    required this.id,
    this.message,
    this.timestamp,
    this.type,
    this.vote,
    this.profile,
    this.parentCommentId,
    this.voteCount,
    this.likesCount,
    this.isSpoiler,
    this.isEdited,
    this.isDeleted,
    this.isReply,
    this.replyCount,
    this.canLike,
    this.release,
    this.postedAtEpisode,
    this.commentType = "release",
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @JsonKey(name: 'type')
  final int? type;

  @JsonKey(name: 'vote')
  final int? vote;

  @JsonKey(name: 'profile')
  final ProfileCompact? profile;

  @JsonKey(name: 'parent_comment_id')
  final int? parentCommentId;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @JsonKey(name: 'likes_count')
  final int? likesCount;

  @JsonKey(name: 'is_spoiler')
  final bool? isSpoiler;

  @JsonKey(name: 'is_edited')
  final bool? isEdited;

  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;

  @JsonKey(name: 'is_reply')
  final bool? isReply;

  @JsonKey(name: 'reply_count')
  final int? replyCount;

  @JsonKey(name: 'can_like')
  final bool? canLike;

  @JsonKey(name: 'release')
  final Release? release;

  @JsonKey(name: 'posted_at_episode')
  final int? postedAtEpisode;

  @JsonKey(name: 'commentType')
  final String commentType;

  factory CommentPreview.fromJson(Map<String, dynamic> json) =>
      _$CommentPreviewFromJson(json);
  Map<String, dynamic> toJson() => _$CommentPreviewToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class PreferredType {
  const PreferredType({this.name, this.percentage});

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'percentage')
  final double? percentage;

  factory PreferredType.fromJson(Map<String, dynamic> json) =>
      _$PreferredTypeFromJson(json);
  Map<String, dynamic> toJson() => _$PreferredTypeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Role {
  const Role({required this.id, this.name, this.color});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'color')
  final String? color;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
  Map<String, dynamic> toJson() => _$RoleToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Badge {
  const Badge({
    required this.id,
    this.name,
    this.timestamp,
    this.type,
    this.imageUrl,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @JsonKey(name: 'type')
  final int? type;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class WatchDynamics {
  const WatchDynamics({required this.id, this.timestamp, this.day, this.count});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @JsonKey(name: 'day')
  final int? day;

  @JsonKey(name: 'count')
  final int? count;

  factory WatchDynamics.fromJson(Map<String, dynamic> json) =>
      _$WatchDynamicsFromJson(json);
  Map<String, dynamic> toJson() => _$WatchDynamicsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChangeLogin {
  const ChangeLogin({required this.id, this.newLogin, this.timestamp});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'newLogin')
  final String? newLogin;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  factory ChangeLogin.fromJson(Map<String, dynamic> json) =>
      _$ChangeLoginFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeLoginToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileEnforcement {
  const ProfileEnforcement({
    this.type,
    required this.id,
    this.reason,
    this.creationTimestamp,
    this.appealType,
    this.appealStatus,
    this.appealSubmitTimestamp,
    this.appealExpiresTimestamp,
    this.appealProcessMessage,
    this.appealProcessTimestamp,
    this.revocationTimestamp,
    this.isRevoked,
  });

  @JsonKey(name: 'type')
  final EnforcementType? type;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'reason')
  final String? reason;

  @JsonKey(name: 'creation_timestamp')
  final int? creationTimestamp;

  @JsonKey(name: 'appeal_type')
  final AppealType? appealType;

  @JsonKey(name: 'appeal_status')
  final AppealStatus? appealStatus;

  @JsonKey(name: 'appeal_submit_timestamp')
  final int? appealSubmitTimestamp;

  @JsonKey(name: 'appeal_expires_timestamp')
  final int? appealExpiresTimestamp;

  @JsonKey(name: 'appeal_process_message')
  final String? appealProcessMessage;

  @JsonKey(name: 'appeal_process_timestamp')
  final int? appealProcessTimestamp;

  @JsonKey(name: 'revocation_timestamp')
  final int? revocationTimestamp;

  @JsonKey(name: 'is_revoked')
  final bool? isRevoked;

  factory ProfileEnforcement.fromJson(Map<String, dynamic> json) =>
      _$ProfileEnforcementFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileEnforcementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileRole {
  const ProfileRole({
    this.badgeId,
    this.badgeName,
    this.badgeType,
    this.badgeUrl,
    this.banExpires,
    this.banReason,
    required this.id,
    this.isBanned,
    this.isSponsor,
    this.isVerified,
    this.privilegeLevel,
    this.login,
    this.avatar,
    this.isOnline,
    this.roles,
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
  final int? banExpires;

  @JsonKey(name: 'ban_reason')
  final String? banReason;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'is_banned')
  final bool? isBanned;

  @JsonKey(name: 'is_sponsor')
  final bool? isSponsor;

  @JsonKey(name: 'is_verified')
  final bool? isVerified;

  @JsonKey(name: 'privilege_level')
  final int? privilegeLevel;

  @JsonKey(name: 'login')
  final String? login;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'is_online')
  final bool? isOnline;

  @JsonKey(name: 'roles')
  final List<Role>? roles;

  factory ProfileRole.fromJson(Map<String, dynamic> json) =>
      _$ProfileRoleFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileRoleToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class AvailableTheme {
  const AvailableTheme({required this.id, this.name});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String? name;

  factory AvailableTheme.fromJson(Map<String, dynamic> json) =>
      _$AvailableThemeFromJson(json);
  Map<String, dynamic> toJson() => _$AvailableThemeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Theme {
  const Theme({
    required this.id,
    this.name,
    this.themeEnabled,
    this.themeGradientStartColor,
    this.themeGradientEndColor,
    this.themeGradientAngle,
    this.themeIconResName,
    this.themeIconUrl,
    this.themeIconColor,
    this.themeIconAlpha,
    this.themeIconDensity,
    this.themeIconSize,
    this.themeAnimationEnabled,
    this.themeAnimationSpeed,
    this.themeBackgroundUrl,
    this.themeBackgroundMode,
    this.themeBackgroundAlpha,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'theme_enabled')
  final bool? themeEnabled;

  @JsonKey(name: 'theme_gradient_start_color')
  final String? themeGradientStartColor;

  @JsonKey(name: 'theme_gradient_end_color')
  final String? themeGradientEndColor;

  @JsonKey(name: 'theme_gradient_angle')
  final String? themeGradientAngle;

  @JsonKey(name: 'theme_icon_res_name')
  final String? themeIconResName;

  @JsonKey(name: 'theme_icon_url')
  final String? themeIconUrl;

  @JsonKey(name: 'theme_icon_color')
  final String? themeIconColor;

  @JsonKey(name: 'theme_icon_alpha')
  final double? themeIconAlpha;

  @JsonKey(name: 'theme_icon_density')
  final String? themeIconDensity;

  @JsonKey(name: 'theme_icon_size')
  final String? themeIconSize;

  @JsonKey(name: 'theme_animation_enabled')
  final bool? themeAnimationEnabled;

  @JsonKey(name: 'theme_animation_speed')
  final String? themeAnimationSpeed;

  @JsonKey(name: 'theme_background_url')
  final String? themeBackgroundUrl;

  @JsonKey(name: 'theme_background_mode')
  final String? themeBackgroundMode;

  @JsonKey(name: 'theme_background_alpha')
  final double? themeBackgroundAlpha;

  factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);
  Map<String, dynamic> toJson() => _$ThemeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class BookmarksExportRequest {
  const BookmarksExportRequest({required this.bookmarksExportProfileLists});

  @JsonKey(name: 'bookmarksExportProfileLists')
  final List<BookmarkType> bookmarksExportProfileLists;

  factory BookmarksExportRequest.fromJson(Map<String, dynamic> json) =>
      _$BookmarksExportRequestFromJson(json);
  Map<String, dynamic> toJson() => _$BookmarksExportRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class BookmarksImportRequest {
  const BookmarksImportRequest({
    required this.selectedImporterName,
    required this.watching,
    required this.plans,
    required this.completed,
    required this.dropped,
    required this.holdOn,
  });

  @JsonKey(name: 'selected_importer_name')
  final String selectedImporterName;

  @JsonKey(name: 'watching')
  final List<int> watching;

  @JsonKey(name: 'plans')
  final List<int> plans;

  @JsonKey(name: 'completed')
  final List<int> completed;

  @JsonKey(name: 'dropped')
  final List<int> dropped;

  @JsonKey(name: 'holdOn')
  final List<int> holdOn;

  factory BookmarksImportRequest.fromJson(Map<String, dynamic> json) =>
      _$BookmarksImportRequestFromJson(json);
  Map<String, dynamic> toJson() => _$BookmarksImportRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileInfoResponse {
  const ProfileInfoResponse({
    required this.code,
    this.channelId,
    this.privilegeLevel,
    this.ratingScore,
    this.sponsorshipExpires,
    this.isPermBanned,
    this.isSponsor,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'channel_id')
  final int? channelId;

  @JsonKey(name: 'privilege_level')
  final PrivilegeLevel? privilegeLevel;

  @JsonKey(name: 'rating_score')
  final int? ratingScore;

  @JsonKey(name: 'sponsorship_expires')
  final int? sponsorshipExpires;

  @JsonKey(name: 'is_perm_banned')
  final bool? isPermBanned;

  @JsonKey(name: 'is_sponsor')
  final bool? isSponsor;

  factory ProfileInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileInfoResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileResponse {
  const ProfileResponse({required this.code, this.isMyProfile, this.profile});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'is_my_profile')
  final bool? isMyProfile;

  @JsonKey(name: 'profile')
  final Profile? profile;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class FriendStatusResponse {
  const FriendStatusResponse({required this.code, this.friendStatus});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'friend_status')
  final FriendStatus? friendStatus;

  factory FriendStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$FriendStatusResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FriendStatusResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileEnforcementResponse {
  const ProfileEnforcementResponse({required this.code, this.enforcement});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'enforcement')
  final ProfileEnforcement? enforcement;

  factory ProfileEnforcementResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileEnforcementResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileEnforcementResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileHealthStatusResponse {
  const ProfileHealthStatusResponse({
    required this.code,
    this.banCount,
    this.banFor3MonthCount,
    this.lastBanTimestamp,
    this.lastBanExpires,
    this.blogSuspensionExpires,
    this.blogMuteExpires,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'ban_count')
  final int? banCount;

  @JsonKey(name: 'ban_for_3_month_count')
  final int? banFor3MonthCount;

  @JsonKey(name: 'last_ban_timestamp')
  final int? lastBanTimestamp;

  @JsonKey(name: 'last_ban_expires')
  final int? lastBanExpires;

  @JsonKey(name: 'blog_suspension_expires')
  final int? blogSuspensionExpires;

  @JsonKey(name: 'blog_mute_expires')
  final int? blogMuteExpires;

  factory ProfileHealthStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileHealthStatusResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileHealthStatusResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileDeletionResponse {
  const ProfileDeletionResponse({
    required this.code,
    this.deleteAt,
    this.requestedAt,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'delete_at')
  final int? deleteAt;

  @JsonKey(name: 'requested_at')
  final int? requestedAt;

  factory ProfileDeletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDeletionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDeletionResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfilePreferenceResponse {
  const ProfilePreferenceResponse({
    required this.code,
    this.availableThemes,
    this.avatar,
    this.badge,
    this.banChangeAvatarExpires,
    this.banChangeLoginExpires,
    this.channelId,
    this.emailHint,
    this.episodeChannelWidgetsHidden,
    this.pinnedSectionId,
    this.privacyCounts,
    this.privacyFriendRequests,
    this.privacySocial,
    this.privacyStats,
    this.selectedThemeId,
    this.status,
    this.tgPage,
    this.vkPage,
    this.isChangeAvatarBanned,
    this.isChangeLoginBanned,
    this.isGoogleBound,
    this.isIncognito,
    this.isLoginChanged,
    this.isTelegramBound,
    this.isVkBound,
    this.isYandexBound,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'available_themes')
  final List<AvailableTheme>? availableThemes;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'badge')
  final Badge? badge;

  @JsonKey(name: 'ban_change_avatar_expires')
  final int? banChangeAvatarExpires;

  @JsonKey(name: 'ban_change_login_expires')
  final int? banChangeLoginExpires;

  @JsonKey(name: 'channel_id')
  final int? channelId;

  @JsonKey(name: 'email_hint')
  final String? emailHint;

  @JsonKey(name: 'episode_channel_widgets_hidden')
  final bool? episodeChannelWidgetsHidden;

  @JsonKey(name: 'pinned_section_id')
  final int? pinnedSectionId;

  @JsonKey(name: 'privacy_counts')
  final int? privacyCounts;

  @JsonKey(name: 'privacy_friend_requests')
  final int? privacyFriendRequests;

  @JsonKey(name: 'privacy_social')
  final int? privacySocial;

  @JsonKey(name: 'privacy_stats')
  final int? privacyStats;

  @JsonKey(name: 'selected_theme_id')
  final int? selectedThemeId;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'tgPage')
  final String? tgPage;

  @JsonKey(name: 'vkPage')
  final String? vkPage;

  @JsonKey(name: 'is_change_avatar_banned')
  final bool? isChangeAvatarBanned;

  @JsonKey(name: 'is_change_login_banned')
  final bool? isChangeLoginBanned;

  @JsonKey(name: 'is_google_bound')
  final bool? isGoogleBound;

  @JsonKey(name: 'is_incognito')
  final bool? isIncognito;

  @JsonKey(name: 'is_login_changed')
  final bool? isLoginChanged;

  @JsonKey(name: 'is_telegram_bound')
  final bool? isTelegramBound;

  @JsonKey(name: 'is_vk_bound')
  final bool? isVkBound;

  @JsonKey(name: 'is_yandex_bound')
  final bool? isYandexBound;

  factory ProfilePreferenceResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfilePreferenceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfilePreferenceResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class BookmarksExportResponse {
  const BookmarksExportResponse({required this.code, this.releases});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'releases')
  final List<Release>? releases;

  factory BookmarksExportResponse.fromJson(Map<String, dynamic> json) =>
      _$BookmarksExportResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BookmarksExportResponseToJson(this);
}
