// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
  id: (json['id'] as num).toInt(),
  login: json['login'] as String?,
  avatar: json['avatar'] as String?,
  status: json['status'] as String?,
  badge: json['badge'] == null
      ? null
      : Badge.fromJson(json['badge'] as Map<String, dynamic>),
  history: (json['history'] as List<dynamic>?)
      ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
      .toList(),
  votes: (json['votes'] as List<dynamic>?)
      ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
      .toList(),
  roles: (json['roles'] as List<dynamic>?)
      ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
      .toList(),
  lastActivityTime: (json['last_activity_time'] as num?)?.toInt(),
  registerDate: (json['register_date'] as num?)?.toInt(),
  vkPage: json['vk_page'] as String?,
  tgPage: json['tg_page'] as String?,
  instPage: json['inst_page'] as String?,
  ttPage: json['tt_page'] as String?,
  discordPage: json['discord_page'] as String?,
  banExpires: (json['ban_expires'] as num?)?.toInt(),
  banReason: json['ban_reason'] as String?,
  privilegeLevel: $enumDecodeNullable(
    _$PrivilegeLevelEnumMap,
    json['privilege_level'],
  ),
  watchingCount: (json['watching_count'] as num?)?.toInt(),
  planCount: (json['plan_count'] as num?)?.toInt(),
  completedCount: (json['completed_count'] as num?)?.toInt(),
  holdOnCount: (json['hold_on_count'] as num?)?.toInt(),
  droppedCount: (json['dropped_count'] as num?)?.toInt(),
  favoriteCount: (json['favorite_count'] as num?)?.toInt(),
  commentCount: (json['comment_count'] as num?)?.toInt(),
  collectionCount: (json['collection_count'] as num?)?.toInt(),
  videoCount: (json['video_count'] as num?)?.toInt(),
  friendCount: (json['friend_count'] as num?)?.toInt(),
  subscriptionCount: (json['subscription_count'] as num?)?.toInt(),
  watchedEpisodeCount: (json['watched_episode_count'] as num?)?.toInt(),
  watchedTime: (json['watched_time'] as num?)?.toInt(),
  pinnedSectionId: (json['pinned_section_id'] as num?)?.toInt(),
  isPrivate: json['is_private'] as bool?,
  isSponsor: json['is_sponsor'] as bool?,
  isBanned: json['is_banned'] as bool?,
  isPermBanned: json['is_perm_banned'] as bool?,
  isDeleted: json['is_deleted'] as bool?,
  isDeletionRequested: json['is_deletion_requested'] as bool?,
  isBookmarksTransferred: json['is_bookmarks_transferred'] as bool?,
  isSponsorTransferred: json['is_sponsor_transferred'] as bool?,
  isVkBound: json['is_vk_bound'] as bool?,
  isGoogleBound: json['is_google_bound'] as bool?,
  isTelegramBound: json['is_telegram_bound'] as bool?,
  isYandexBound: json['is_yandex_bound'] as bool?,
  isIncognito: json['is_incognito'] as bool?,
  episodeChannelWidgetsHidden: json['episode_channel_widgets_hidden'] as bool?,
  isReleaseTypeNotificationsEnabled:
      json['is_release_type_notifications_enabled'] as bool?,
  isEpisodeNotificationsEnabled:
      json['is_episode_notifications_enabled'] as bool?,
  isFirstEpisodeNotificationEnabled:
      json['is_first_episode_notification_enabled'] as bool?,
  isRelatedReleaseNotificationsEnabled:
      json['is_related_release_notifications_enabled'] as bool?,
  isReportProcessNotificationsEnabled:
      json['is_report_process_notifications_enabled'] as bool?,
  isCommentNotificationsEnabled:
      json['is_comment_notifications_enabled'] as bool?,
  isMyCollectionCommentNotificationsEnabled:
      json['is_my_collection_comment_notifications_enabled'] as bool?,
  isArticleNotificationsEnabled:
      json['is_article_notifications_enabled'] as bool?,
  isMyArticleCommentNotificationsEnabled:
      json['is_my_article_comment_notifications_enabled'] as bool?,
  isVerified: json['is_verified'] as bool?,
  friendsPreview: (json['friends_preview'] as List<dynamic>?)
      ?.map((e) => Profile.fromJson(e as Map<String, dynamic>))
      .toList(),
  collectionsPreview: (json['collections_preview'] as List<dynamic>?)
      ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
      .toList(),
  commentsPreview: (json['comments_preview'] as List<dynamic>?)
      ?.map((e) => CommentPreview.fromJson(e as Map<String, dynamic>))
      .toList(),
  releaseVideosPreview: (json['release_videos_preview'] as List<dynamic>?)
      ?.map((e) => ReleaseVideo.fromJson(e as Map<String, dynamic>))
      .toList(),
  watchDynamics: (json['watch_dynamics'] as List<dynamic>?)
      ?.map((e) => WatchDynamics.fromJson(e as Map<String, dynamic>))
      .toList(),
  friendStatus: $enumDecodeNullable(
    _$FriendStatusEnumMap,
    json['friend_status'],
  ),
  ratingScore: (json['rating_score'] as num?)?.toInt(),
  preferredGenres: (json['preferred_genres'] as List<dynamic>?)
      ?.map((e) => PreferredType.fromJson(e as Map<String, dynamic>))
      .toList(),
  preferredAudiences: (json['preferred_audiences'] as List<dynamic>?)
      ?.map((e) => PreferredType.fromJson(e as Map<String, dynamic>))
      .toList(),
  preferredThemes: (json['preferred_themes'] as List<dynamic>?)
      ?.map((e) => PreferredType.fromJson(e as Map<String, dynamic>))
      .toList(),
  themeEnabled: json['theme_enabled'] as bool?,
  themeGradientStartColor: json['theme_gradient_start_color'] as String?,
  themeGradientEndColor: json['theme_gradient_end_color'] as String?,
  themeGradientAngle: json['theme_gradient_angle'] as String?,
  themeIconResName: json['theme_icon_res_name'] as String?,
  themeIconUrl: json['theme_icon_url'] as String?,
  themeIconColor: json['theme_icon_color'] as String?,
  themeIconAlpha: (json['theme_icon_alpha'] as num?)?.toDouble(),
  themeIconDensity: json['theme_icon_density'] as String?,
  themeIconSize: json['theme_icon_size'] as String?,
  themeAnimationEnabled: json['theme_animation_enabled'] as bool?,
  themeAnimationSpeed: json['theme_animation_speed'] as String?,
  themeBackgroundUrl: json['theme_background_url'] as String?,
  themeBackgroundMode: json['theme_background_mode'] as String?,
  themeBackgroundAlpha: (json['theme_background_alpha'] as num?)?.toDouble(),
  deletionRequestedAt: (json['deletion_requested_at'] as num?)?.toInt(),
  deletionDeleteAt: (json['deletion_delete_at'] as num?)?.toInt(),
  isBlocked: json['is_blocked'] as bool?,
  isMeBlocked: json['is_me_blocked'] as bool?,
  isStatsHidden: json['is_stats_hidden'] as bool?,
  isCountsHidden: json['is_counts_hidden'] as bool?,
  isSocialHidden: json['is_social_hidden'] as bool?,
  isFriendRequestsDisallowed: json['is_friend_requests_disallowed'] as bool?,
  isOnline: json['is_online'] as bool?,
);

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
  'id': instance.id,
  'login': instance.login,
  'avatar': instance.avatar,
  'status': instance.status,
  'badge': instance.badge?.toJson(),
  'history': instance.history?.map((e) => e.toJson()).toList(),
  'votes': instance.votes?.map((e) => e.toJson()).toList(),
  'roles': instance.roles?.map((e) => e.toJson()).toList(),
  'last_activity_time': instance.lastActivityTime,
  'register_date': instance.registerDate,
  'vk_page': instance.vkPage,
  'tg_page': instance.tgPage,
  'inst_page': instance.instPage,
  'tt_page': instance.ttPage,
  'discord_page': instance.discordPage,
  'ban_expires': instance.banExpires,
  'ban_reason': instance.banReason,
  'privilege_level': _$PrivilegeLevelEnumMap[instance.privilegeLevel],
  'watching_count': instance.watchingCount,
  'plan_count': instance.planCount,
  'completed_count': instance.completedCount,
  'hold_on_count': instance.holdOnCount,
  'dropped_count': instance.droppedCount,
  'favorite_count': instance.favoriteCount,
  'comment_count': instance.commentCount,
  'collection_count': instance.collectionCount,
  'video_count': instance.videoCount,
  'friend_count': instance.friendCount,
  'subscription_count': instance.subscriptionCount,
  'watched_episode_count': instance.watchedEpisodeCount,
  'watched_time': instance.watchedTime,
  'pinned_section_id': instance.pinnedSectionId,
  'is_private': instance.isPrivate,
  'is_sponsor': instance.isSponsor,
  'is_banned': instance.isBanned,
  'is_perm_banned': instance.isPermBanned,
  'is_deleted': instance.isDeleted,
  'is_deletion_requested': instance.isDeletionRequested,
  'is_bookmarks_transferred': instance.isBookmarksTransferred,
  'is_sponsor_transferred': instance.isSponsorTransferred,
  'is_vk_bound': instance.isVkBound,
  'is_google_bound': instance.isGoogleBound,
  'is_telegram_bound': instance.isTelegramBound,
  'is_yandex_bound': instance.isYandexBound,
  'is_incognito': instance.isIncognito,
  'episode_channel_widgets_hidden': instance.episodeChannelWidgetsHidden,
  'is_release_type_notifications_enabled':
      instance.isReleaseTypeNotificationsEnabled,
  'is_episode_notifications_enabled': instance.isEpisodeNotificationsEnabled,
  'is_first_episode_notification_enabled':
      instance.isFirstEpisodeNotificationEnabled,
  'is_related_release_notifications_enabled':
      instance.isRelatedReleaseNotificationsEnabled,
  'is_report_process_notifications_enabled':
      instance.isReportProcessNotificationsEnabled,
  'is_comment_notifications_enabled': instance.isCommentNotificationsEnabled,
  'is_my_collection_comment_notifications_enabled':
      instance.isMyCollectionCommentNotificationsEnabled,
  'is_article_notifications_enabled': instance.isArticleNotificationsEnabled,
  'is_my_article_comment_notifications_enabled':
      instance.isMyArticleCommentNotificationsEnabled,
  'is_verified': instance.isVerified,
  'friends_preview': instance.friendsPreview?.map((e) => e.toJson()).toList(),
  'collections_preview': instance.collectionsPreview
      ?.map((e) => e.toJson())
      .toList(),
  'comments_preview': instance.commentsPreview?.map((e) => e.toJson()).toList(),
  'release_videos_preview': instance.releaseVideosPreview
      ?.map((e) => e.toJson())
      .toList(),
  'watch_dynamics': instance.watchDynamics?.map((e) => e.toJson()).toList(),
  'friend_status': _$FriendStatusEnumMap[instance.friendStatus],
  'rating_score': instance.ratingScore,
  'preferred_genres': instance.preferredGenres?.map((e) => e.toJson()).toList(),
  'preferred_audiences': instance.preferredAudiences
      ?.map((e) => e.toJson())
      .toList(),
  'preferred_themes': instance.preferredThemes?.map((e) => e.toJson()).toList(),
  'theme_enabled': instance.themeEnabled,
  'theme_gradient_start_color': instance.themeGradientStartColor,
  'theme_gradient_end_color': instance.themeGradientEndColor,
  'theme_gradient_angle': instance.themeGradientAngle,
  'theme_icon_res_name': instance.themeIconResName,
  'theme_icon_url': instance.themeIconUrl,
  'theme_icon_color': instance.themeIconColor,
  'theme_icon_alpha': instance.themeIconAlpha,
  'theme_icon_density': instance.themeIconDensity,
  'theme_icon_size': instance.themeIconSize,
  'theme_animation_enabled': instance.themeAnimationEnabled,
  'theme_animation_speed': instance.themeAnimationSpeed,
  'theme_background_url': instance.themeBackgroundUrl,
  'theme_background_mode': instance.themeBackgroundMode,
  'theme_background_alpha': instance.themeBackgroundAlpha,
  'deletion_requested_at': instance.deletionRequestedAt,
  'deletion_delete_at': instance.deletionDeleteAt,
  'is_blocked': instance.isBlocked,
  'is_me_blocked': instance.isMeBlocked,
  'is_stats_hidden': instance.isStatsHidden,
  'is_counts_hidden': instance.isCountsHidden,
  'is_social_hidden': instance.isSocialHidden,
  'is_friend_requests_disallowed': instance.isFriendRequestsDisallowed,
  'is_online': instance.isOnline,
};

const _$PrivilegeLevelEnumMap = {
  PrivilegeLevel.none: 0,
  PrivilegeLevel.member: 1,
  PrivilegeLevel.releaser: 2,
  PrivilegeLevel.moderator: 3,
  PrivilegeLevel.administrator: 4,
  PrivilegeLevel.developer: 5,
};

const _$FriendStatusEnumMap = {
  FriendStatus.pendingFirstSecond: 0,
  FriendStatus.pendingSecondFirst: 1,
  FriendStatus.friend: 2,
};

ProfileSlim _$ProfileSlimFromJson(Map<String, dynamic> json) => ProfileSlim(
  id: (json['id'] as num).toInt(),
  login: json['login'] as String?,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$ProfileSlimToJson(ProfileSlim instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar': instance.avatar,
    };

ProfileToken _$ProfileTokenFromJson(Map<String, dynamic> json) => ProfileToken(
  id: (json['id'] as num).toInt(),
  token: json['token'] as String?,
);

Map<String, dynamic> _$ProfileTokenToJson(ProfileToken instance) =>
    <String, dynamic>{'id': instance.id, 'token': instance.token};

CommentPreview _$CommentPreviewFromJson(Map<String, dynamic> json) =>
    CommentPreview(
      id: (json['id'] as num).toInt(),
      message: json['message'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      vote: (json['vote'] as num?)?.toInt(),
      profile: json['profile'] == null
          ? null
          : ProfileCompact.fromJson(json['profile'] as Map<String, dynamic>),
      parentCommentId: (json['parent_comment_id'] as num?)?.toInt(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
      likesCount: (json['likes_count'] as num?)?.toInt(),
      isSpoiler: json['is_spoiler'] as bool?,
      isEdited: json['is_edited'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      isReply: json['is_reply'] as bool?,
      replyCount: (json['reply_count'] as num?)?.toInt(),
      canLike: json['can_like'] as bool?,
      release: json['release'] == null
          ? null
          : Release.fromJson(json['release'] as Map<String, dynamic>),
      postedAtEpisode: (json['posted_at_episode'] as num?)?.toInt(),
      commentType: json['commentType'] as String? ?? "release",
    );

Map<String, dynamic> _$CommentPreviewToJson(CommentPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'type': instance.type,
      'vote': instance.vote,
      'profile': instance.profile?.toJson(),
      'parent_comment_id': instance.parentCommentId,
      'vote_count': instance.voteCount,
      'likes_count': instance.likesCount,
      'is_spoiler': instance.isSpoiler,
      'is_edited': instance.isEdited,
      'is_deleted': instance.isDeleted,
      'is_reply': instance.isReply,
      'reply_count': instance.replyCount,
      'can_like': instance.canLike,
      'release': instance.release?.toJson(),
      'posted_at_episode': instance.postedAtEpisode,
      'commentType': instance.commentType,
    };

PreferredType _$PreferredTypeFromJson(Map<String, dynamic> json) =>
    PreferredType(
      name: json['name'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PreferredTypeToJson(PreferredType instance) =>
    <String, dynamic>{'name': instance.name, 'percentage': instance.percentage};

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  color: json['color'] as String?,
);

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': instance.color,
};

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  timestamp: (json['timestamp'] as num?)?.toInt(),
  type: (json['type'] as num?)?.toInt(),
  imageUrl: json['image_url'] as String?,
);

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'timestamp': instance.timestamp,
  'type': instance.type,
  'image_url': instance.imageUrl,
};

WatchDynamics _$WatchDynamicsFromJson(Map<String, dynamic> json) =>
    WatchDynamics(
      id: (json['id'] as num).toInt(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
      day: (json['day'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WatchDynamicsToJson(WatchDynamics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp,
      'day': instance.day,
      'count': instance.count,
    };

ChangeLogin _$ChangeLoginFromJson(Map<String, dynamic> json) => ChangeLogin(
  id: (json['id'] as num).toInt(),
  newLogin: json['newLogin'] as String?,
  timestamp: (json['timestamp'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChangeLoginToJson(ChangeLogin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'newLogin': instance.newLogin,
      'timestamp': instance.timestamp,
    };

ProfileEnforcement _$ProfileEnforcementFromJson(
  Map<String, dynamic> json,
) => ProfileEnforcement(
  type: $enumDecodeNullable(_$EnforcementTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
  reason: json['reason'] as String?,
  creationTimestamp: (json['creation_timestamp'] as num?)?.toInt(),
  appealType: $enumDecodeNullable(_$AppealTypeEnumMap, json['appeal_type']),
  appealStatus: $enumDecodeNullable(
    _$AppealStatusEnumMap,
    json['appeal_status'],
  ),
  appealSubmitTimestamp: (json['appeal_submit_timestamp'] as num?)?.toInt(),
  appealExpiresTimestamp: (json['appeal_expires_timestamp'] as num?)?.toInt(),
  appealProcessMessage: json['appeal_process_message'] as String?,
  appealProcessTimestamp: (json['appeal_process_timestamp'] as num?)?.toInt(),
  revocationTimestamp: (json['revocation_timestamp'] as num?)?.toInt(),
  isRevoked: json['is_revoked'] as bool?,
);

Map<String, dynamic> _$ProfileEnforcementToJson(ProfileEnforcement instance) =>
    <String, dynamic>{
      'type': _$EnforcementTypeEnumMap[instance.type],
      'id': instance.id,
      'reason': instance.reason,
      'creation_timestamp': instance.creationTimestamp,
      'appeal_type': _$AppealTypeEnumMap[instance.appealType],
      'appeal_status': _$AppealStatusEnumMap[instance.appealStatus],
      'appeal_submit_timestamp': instance.appealSubmitTimestamp,
      'appeal_expires_timestamp': instance.appealExpiresTimestamp,
      'appeal_process_message': instance.appealProcessMessage,
      'appeal_process_timestamp': instance.appealProcessTimestamp,
      'revocation_timestamp': instance.revocationTimestamp,
      'is_revoked': instance.isRevoked,
    };

const _$EnforcementTypeEnumMap = {
  EnforcementType.profileBan: 'profile_ban',
  EnforcementType.channelSuspension: 'channel_suspension',
  EnforcementType.channelMute: 'channel_mute',
  EnforcementType.collectionEdit: 'collection_edit',
  EnforcementType.articleEdit: 'article_edit',
  EnforcementType.releaseCommentEdit: 'release_comment_edit',
  EnforcementType.collectionCommentEdit: 'collection_comment_edit',
  EnforcementType.articleCommentEdit: 'article_comment_edit',
};

const _$AppealTypeEnumMap = {
  AppealType.unknown: 'UNKNOWN',
  AppealType.notAvailable: 'NOT_AVAILABLE',
  AppealType.message: 'MESSAGE',
  AppealType.adjustment: 'ADJUSTMENT',
};

const _$AppealStatusEnumMap = {
  AppealStatus.unknown: 'UNKNOWN',
  AppealStatus.notSubmitted: 'NOT_SUBMITTED',
  AppealStatus.submitted: 'SUBMITTED',
  AppealStatus.accepted: 'ACCEPTED',
  AppealStatus.rejected: 'REJECTED',
};

ProfileRole _$ProfileRoleFromJson(Map<String, dynamic> json) => ProfileRole(
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
  isOnline: json['is_online'] as bool?,
  roles: (json['roles'] as List<dynamic>?)
      ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProfileRoleToJson(ProfileRole instance) =>
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
      'is_online': instance.isOnline,
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
    };

AvailableTheme _$AvailableThemeFromJson(Map<String, dynamic> json) =>
    AvailableTheme(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AvailableThemeToJson(AvailableTheme instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

Theme _$ThemeFromJson(Map<String, dynamic> json) => Theme(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  themeEnabled: json['theme_enabled'] as bool?,
  themeGradientStartColor: json['theme_gradient_start_color'] as String?,
  themeGradientEndColor: json['theme_gradient_end_color'] as String?,
  themeGradientAngle: json['theme_gradient_angle'] as String?,
  themeIconResName: json['theme_icon_res_name'] as String?,
  themeIconUrl: json['theme_icon_url'] as String?,
  themeIconColor: json['theme_icon_color'] as String?,
  themeIconAlpha: (json['theme_icon_alpha'] as num?)?.toDouble(),
  themeIconDensity: json['theme_icon_density'] as String?,
  themeIconSize: json['theme_icon_size'] as String?,
  themeAnimationEnabled: json['theme_animation_enabled'] as bool?,
  themeAnimationSpeed: json['theme_animation_speed'] as String?,
  themeBackgroundUrl: json['theme_background_url'] as String?,
  themeBackgroundMode: json['theme_background_mode'] as String?,
  themeBackgroundAlpha: (json['theme_background_alpha'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ThemeToJson(Theme instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'theme_enabled': instance.themeEnabled,
  'theme_gradient_start_color': instance.themeGradientStartColor,
  'theme_gradient_end_color': instance.themeGradientEndColor,
  'theme_gradient_angle': instance.themeGradientAngle,
  'theme_icon_res_name': instance.themeIconResName,
  'theme_icon_url': instance.themeIconUrl,
  'theme_icon_color': instance.themeIconColor,
  'theme_icon_alpha': instance.themeIconAlpha,
  'theme_icon_density': instance.themeIconDensity,
  'theme_icon_size': instance.themeIconSize,
  'theme_animation_enabled': instance.themeAnimationEnabled,
  'theme_animation_speed': instance.themeAnimationSpeed,
  'theme_background_url': instance.themeBackgroundUrl,
  'theme_background_mode': instance.themeBackgroundMode,
  'theme_background_alpha': instance.themeBackgroundAlpha,
};

BookmarksExportRequest _$BookmarksExportRequestFromJson(
  Map<String, dynamic> json,
) => BookmarksExportRequest(
  bookmarksExportProfileLists:
      (json['bookmarksExportProfileLists'] as List<dynamic>)
          .map((e) => $enumDecode(_$BookmarkTypeEnumMap, e))
          .toList(),
);

Map<String, dynamic> _$BookmarksExportRequestToJson(
  BookmarksExportRequest instance,
) => <String, dynamic>{
  'bookmarksExportProfileLists': instance.bookmarksExportProfileLists
      .map((e) => _$BookmarkTypeEnumMap[e]!)
      .toList(),
};

const _$BookmarkTypeEnumMap = {
  BookmarkType.watching: 1,
  BookmarkType.inPlans: 2,
  BookmarkType.completed: 3,
  BookmarkType.holdOn: 4,
  BookmarkType.dropped: 5,
};

BookmarksImportRequest _$BookmarksImportRequestFromJson(
  Map<String, dynamic> json,
) => BookmarksImportRequest(
  selectedImporterName: json['selected_importer_name'] as String,
  watching: (json['watching'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  plans: (json['plans'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  completed: (json['completed'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  dropped: (json['dropped'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  holdOn: (json['holdOn'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$BookmarksImportRequestToJson(
  BookmarksImportRequest instance,
) => <String, dynamic>{
  'selected_importer_name': instance.selectedImporterName,
  'watching': instance.watching,
  'plans': instance.plans,
  'completed': instance.completed,
  'dropped': instance.dropped,
  'holdOn': instance.holdOn,
};

ProfileInfoResponse _$ProfileInfoResponseFromJson(Map<String, dynamic> json) =>
    ProfileInfoResponse(
      code: (json['code'] as num).toInt(),
      channelId: (json['channel_id'] as num?)?.toInt(),
      privilegeLevel: $enumDecodeNullable(
        _$PrivilegeLevelEnumMap,
        json['privilege_level'],
      ),
      ratingScore: (json['rating_score'] as num?)?.toInt(),
      sponsorshipExpires: (json['sponsorship_expires'] as num?)?.toInt(),
      isPermBanned: json['is_perm_banned'] as bool?,
      isSponsor: json['is_sponsor'] as bool?,
    );

Map<String, dynamic> _$ProfileInfoResponseToJson(
  ProfileInfoResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'channel_id': instance.channelId,
  'privilege_level': _$PrivilegeLevelEnumMap[instance.privilegeLevel],
  'rating_score': instance.ratingScore,
  'sponsorship_expires': instance.sponsorshipExpires,
  'is_perm_banned': instance.isPermBanned,
  'is_sponsor': instance.isSponsor,
};

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      code: (json['code'] as num).toInt(),
      isMyProfile: json['is_my_profile'] as bool?,
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'is_my_profile': instance.isMyProfile,
      'profile': instance.profile?.toJson(),
    };

FriendStatusResponse _$FriendStatusResponseFromJson(
  Map<String, dynamic> json,
) => FriendStatusResponse(
  code: (json['code'] as num).toInt(),
  friendStatus: $enumDecodeNullable(
    _$FriendStatusEnumMap,
    json['friend_status'],
  ),
);

Map<String, dynamic> _$FriendStatusResponseToJson(
  FriendStatusResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'friend_status': _$FriendStatusEnumMap[instance.friendStatus],
};

ProfileEnforcementResponse _$ProfileEnforcementResponseFromJson(
  Map<String, dynamic> json,
) => ProfileEnforcementResponse(
  code: (json['code'] as num).toInt(),
  enforcement: json['enforcement'] == null
      ? null
      : ProfileEnforcement.fromJson(
          json['enforcement'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ProfileEnforcementResponseToJson(
  ProfileEnforcementResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'enforcement': instance.enforcement?.toJson(),
};

ProfileHealthStatusResponse _$ProfileHealthStatusResponseFromJson(
  Map<String, dynamic> json,
) => ProfileHealthStatusResponse(
  code: (json['code'] as num).toInt(),
  banCount: (json['ban_count'] as num?)?.toInt(),
  banFor3MonthCount: (json['ban_for_3_month_count'] as num?)?.toInt(),
  lastBanTimestamp: (json['last_ban_timestamp'] as num?)?.toInt(),
  lastBanExpires: (json['last_ban_expires'] as num?)?.toInt(),
  blogSuspensionExpires: (json['blog_suspension_expires'] as num?)?.toInt(),
  blogMuteExpires: (json['blog_mute_expires'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProfileHealthStatusResponseToJson(
  ProfileHealthStatusResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'ban_count': instance.banCount,
  'ban_for_3_month_count': instance.banFor3MonthCount,
  'last_ban_timestamp': instance.lastBanTimestamp,
  'last_ban_expires': instance.lastBanExpires,
  'blog_suspension_expires': instance.blogSuspensionExpires,
  'blog_mute_expires': instance.blogMuteExpires,
};

ProfileDeletionResponse _$ProfileDeletionResponseFromJson(
  Map<String, dynamic> json,
) => ProfileDeletionResponse(
  code: (json['code'] as num).toInt(),
  deleteAt: (json['delete_at'] as num?)?.toInt(),
  requestedAt: (json['requested_at'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProfileDeletionResponseToJson(
  ProfileDeletionResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'delete_at': instance.deleteAt,
  'requested_at': instance.requestedAt,
};

ProfilePreferenceResponse _$ProfilePreferenceResponseFromJson(
  Map<String, dynamic> json,
) => ProfilePreferenceResponse(
  code: (json['code'] as num).toInt(),
  availableThemes: (json['available_themes'] as List<dynamic>?)
      ?.map((e) => AvailableTheme.fromJson(e as Map<String, dynamic>))
      .toList(),
  avatar: json['avatar'] as String?,
  badge: json['badge'] == null
      ? null
      : Badge.fromJson(json['badge'] as Map<String, dynamic>),
  banChangeAvatarExpires: (json['ban_change_avatar_expires'] as num?)?.toInt(),
  banChangeLoginExpires: (json['ban_change_login_expires'] as num?)?.toInt(),
  channelId: (json['channel_id'] as num?)?.toInt(),
  emailHint: json['email_hint'] as String?,
  episodeChannelWidgetsHidden: json['episode_channel_widgets_hidden'] as bool?,
  pinnedSectionId: (json['pinned_section_id'] as num?)?.toInt(),
  privacyCounts: (json['privacy_counts'] as num?)?.toInt(),
  privacyFriendRequests: (json['privacy_friend_requests'] as num?)?.toInt(),
  privacySocial: (json['privacy_social'] as num?)?.toInt(),
  privacyStats: (json['privacy_stats'] as num?)?.toInt(),
  selectedThemeId: (json['selected_theme_id'] as num?)?.toInt(),
  status: json['status'] as String?,
  tgPage: json['tgPage'] as String?,
  vkPage: json['vkPage'] as String?,
  isChangeAvatarBanned: json['is_change_avatar_banned'] as bool?,
  isChangeLoginBanned: json['is_change_login_banned'] as bool?,
  isGoogleBound: json['is_google_bound'] as bool?,
  isIncognito: json['is_incognito'] as bool?,
  isLoginChanged: json['is_login_changed'] as bool?,
  isTelegramBound: json['is_telegram_bound'] as bool?,
  isVkBound: json['is_vk_bound'] as bool?,
  isYandexBound: json['is_yandex_bound'] as bool?,
);

Map<String, dynamic> _$ProfilePreferenceResponseToJson(
  ProfilePreferenceResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'available_themes': instance.availableThemes?.map((e) => e.toJson()).toList(),
  'avatar': instance.avatar,
  'badge': instance.badge?.toJson(),
  'ban_change_avatar_expires': instance.banChangeAvatarExpires,
  'ban_change_login_expires': instance.banChangeLoginExpires,
  'channel_id': instance.channelId,
  'email_hint': instance.emailHint,
  'episode_channel_widgets_hidden': instance.episodeChannelWidgetsHidden,
  'pinned_section_id': instance.pinnedSectionId,
  'privacy_counts': instance.privacyCounts,
  'privacy_friend_requests': instance.privacyFriendRequests,
  'privacy_social': instance.privacySocial,
  'privacy_stats': instance.privacyStats,
  'selected_theme_id': instance.selectedThemeId,
  'status': instance.status,
  'tgPage': instance.tgPage,
  'vkPage': instance.vkPage,
  'is_change_avatar_banned': instance.isChangeAvatarBanned,
  'is_change_login_banned': instance.isChangeLoginBanned,
  'is_google_bound': instance.isGoogleBound,
  'is_incognito': instance.isIncognito,
  'is_login_changed': instance.isLoginChanged,
  'is_telegram_bound': instance.isTelegramBound,
  'is_vk_bound': instance.isVkBound,
  'is_yandex_bound': instance.isYandexBound,
};

BookmarksExportResponse _$BookmarksExportResponseFromJson(
  Map<String, dynamic> json,
) => BookmarksExportResponse(
  code: (json['code'] as num).toInt(),
  releases: (json['releases'] as List<dynamic>?)
      ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BookmarksExportResponseToJson(
  BookmarksExportResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'releases': instance.releases?.map((e) => e.toJson()).toList(),
};
