// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Release _$ReleaseFromJson(Map<String, dynamic> json) => Release(
  id: (json['id'] as num).toInt(),
  ageRating: (json['age_rating'] as num?)?.toInt(),
  airedOnDate: (json['aired_on_date'] as num?)?.toInt(),
  author: json['author'] as String?,
  broadcast: (json['broadcast'] as num?)?.toInt(),
  canTorlookSearch: json['can_torlook_search'] as bool?,
  canVideoAppeal: json['can_video_appeal'] as bool?,
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Object),
  collectionCount: (json['collection_count'] as num?)?.toInt(),
  commentCount: (json['comment_count'] as num?)?.toInt(),
  commentPerDayCount: (json['comment_per_day_count'] as num?)?.toInt(),
  comments: (json['comments'] as List<dynamic>?)
      ?.map((e) => ReleaseComment.fromJson(e as Map<String, dynamic>))
      .toList(),
  completedCount: (json['completed_count'] as num?)?.toInt(),
  country: json['country'] as String?,
  description: json['description'] as String?,
  director: json['director'] as String?,
  droppedCount: (json['dropped_count'] as num?)?.toInt(),
  duration: (json['duration'] as num?)?.toInt(),
  episodeLastUpdate: json['episode_last_update'] == null
      ? null
      : EpisodeUpdate.fromJson(
          json['episode_last_update'] as Map<String, dynamic>,
        ),
  episodesTotal: (json['episodes_total'] as num?)?.toInt(),
  episodesReleased: (json['episodes_released'] as num?)?.toInt(),
  favoriteCount: (json['favorite_count'] as num?)?.toInt(),
  genres: json['genres'] as String?,
  grade: (json['grade'] as num?)?.toDouble(),
  holdOnCount: (json['hold_on_count'] as num?)?.toInt(),
  image: json['image'] as String?,
  isAdult: json['is_adult'] as bool?,
  isDeleted: json['is_deleted'] as bool?,
  isFavorite: json['is_favorite'] as bool?,
  isPlayDisabled: json['is_play_disabled'] as bool?,
  isReleaseTypeNotificationsEnabled:
      json['is_release_type_notifications_enabled'] as bool?,
  isRuBlocked: json['is_ru_blocked'] as bool?,
  isTppDisabled: json['is_tpp_disabled'] as bool?,
  isViewBlocked: json['is_view_blocked'] as bool?,
  isViewed: json['is_viewed'] as bool?,
  lastViewEpisode: json['last_view_episode'] == null
      ? null
      : Episode.fromJson(json['last_view_episode'] as Map<String, dynamic>),
  lastViewTimestamp: (json['last_view_timestamp'] as num?)?.toInt(),
  note: json['note'] as String?,
  noteBackgroundColorDark: json['note_background_color_dark'] as String?,
  noteBackgroundColorLight: json['note_background_color_light'] as String?,
  noteTextColorDark: json['note_text_color_dark'] as String?,
  noteTextColorLight: json['note_text_color_light'] as String?,
  planCount: (json['plan_count'] as num?)?.toInt(),
  profileListStatus: (json['profile_list_status'] as num?)?.toInt(),
  profileReleaseTypeNotificationPreferenceCount:
      (json['profile_release_type_notification_preference_count'] as num?)
          ?.toInt(),
  profileReleaseTypeNotificationPreferences:
      (json['profile_release_type_notification_preferences'] as List<dynamic>?)
          ?.map(
            (e) => ProfileReleaseTypeNotificationPreference.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  rating: (json['rating'] as num?)?.toDouble(),
  recommendedReleases: (json['recommended_releases'] as List<dynamic>?)
      ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
      .toList(),
  related: json['related'] == null
      ? null
      : Related.fromJson(json['related'] as Map<String, dynamic>),
  relatedCount: (json['related_count'] as num?)?.toInt(),
  relatedReleases: (json['related_releases'] as List<dynamic>?)
      ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
      .toList(),
  releaseDate: json['release_date'] as String?,
  screenshotImages: (json['screenshot_images'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  season: (json['season'] as num?)?.toInt(),
  source: json['source'] as String?,
  status: json['status'] == null
      ? null
      : ReleaseStatusInfo.fromJson(json['status'] as Map<String, dynamic>),
  statusId: (json['status_id'] as num?)?.toInt(),
  studio: json['studio'] as String?,
  titleOriginal: json['title_original'] as String?,
  titleRu: json['title_ru'] as String,
  titleAlt: json['title_alt'] as String?,
  translators: json['translators'] as String?,
  videoBanners: (json['video_banners'] as List<dynamic>?)
      ?.map((e) => ReleaseVideoBanner.fromJson(e as Map<String, dynamic>))
      .toList(),
  vote1Count: (json['vote_1_count'] as num?)?.toInt(),
  vote2Count: (json['vote_2_count'] as num?)?.toInt(),
  vote3Count: (json['vote_3_count'] as num?)?.toInt(),
  vote4Count: (json['vote_4_count'] as num?)?.toInt(),
  vote5Count: (json['vote_5_count'] as num?)?.toInt(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  votedAt: (json['voted_at'] as num?)?.toInt(),
  watchingCount: (json['watching_count'] as num?)?.toInt(),
  year: json['year'] as String?,
  creationDate: (json['creation_date'] as num?)?.toInt(),
  lastUpdateDate: (json['last_update_date'] as num?)?.toInt(),
  yourVote: (json['your_vote'] as num?)?.toInt(),
  myVote: (json['my_vote'] as num?)?.toInt(),
  favoritesCount: (json['favorites_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$ReleaseToJson(Release instance) => <String, dynamic>{
  'id': instance.id,
  'age_rating': instance.ageRating,
  'aired_on_date': instance.airedOnDate,
  'author': instance.author,
  'broadcast': instance.broadcast,
  'can_torlook_search': instance.canTorlookSearch,
  'can_video_appeal': instance.canVideoAppeal,
  'category': instance.category?.toJson(),
  'collection_count': instance.collectionCount,
  'comment_count': instance.commentCount,
  'comment_per_day_count': instance.commentPerDayCount,
  'comments': instance.comments?.map((e) => e.toJson()).toList(),
  'completed_count': instance.completedCount,
  'country': instance.country,
  'description': instance.description,
  'director': instance.director,
  'dropped_count': instance.droppedCount,
  'duration': instance.duration,
  'episode_last_update': instance.episodeLastUpdate?.toJson(),
  'episodes_total': instance.episodesTotal,
  'episodes_released': instance.episodesReleased,
  'favorite_count': instance.favoriteCount,
  'genres': instance.genres,
  'grade': instance.grade,
  'hold_on_count': instance.holdOnCount,
  'image': instance.image,
  'is_adult': instance.isAdult,
  'is_deleted': instance.isDeleted,
  'is_favorite': instance.isFavorite,
  'is_play_disabled': instance.isPlayDisabled,
  'is_release_type_notifications_enabled':
      instance.isReleaseTypeNotificationsEnabled,
  'is_ru_blocked': instance.isRuBlocked,
  'is_tpp_disabled': instance.isTppDisabled,
  'is_view_blocked': instance.isViewBlocked,
  'is_viewed': instance.isViewed,
  'last_view_episode': instance.lastViewEpisode?.toJson(),
  'last_view_timestamp': instance.lastViewTimestamp,
  'note': instance.note,
  'note_background_color_dark': instance.noteBackgroundColorDark,
  'note_background_color_light': instance.noteBackgroundColorLight,
  'note_text_color_dark': instance.noteTextColorDark,
  'note_text_color_light': instance.noteTextColorLight,
  'plan_count': instance.planCount,
  'profile_list_status': instance.profileListStatus,
  'profile_release_type_notification_preference_count':
      instance.profileReleaseTypeNotificationPreferenceCount,
  'profile_release_type_notification_preferences': instance
      .profileReleaseTypeNotificationPreferences
      ?.map((e) => e.toJson())
      .toList(),
  'rating': instance.rating,
  'recommended_releases': instance.recommendedReleases
      ?.map((e) => e.toJson())
      .toList(),
  'related': instance.related?.toJson(),
  'related_count': instance.relatedCount,
  'related_releases': instance.relatedReleases?.map((e) => e.toJson()).toList(),
  'release_date': instance.releaseDate,
  'screenshot_images': instance.screenshotImages,
  'season': instance.season,
  'source': instance.source,
  'status': instance.status?.toJson(),
  'status_id': instance.statusId,
  'studio': instance.studio,
  'title_original': instance.titleOriginal,
  'title_ru': instance.titleRu,
  'title_alt': instance.titleAlt,
  'translators': instance.translators,
  'video_banners': instance.videoBanners?.map((e) => e.toJson()).toList(),
  'vote_1_count': instance.vote1Count,
  'vote_2_count': instance.vote2Count,
  'vote_3_count': instance.vote3Count,
  'vote_4_count': instance.vote4Count,
  'vote_5_count': instance.vote5Count,
  'vote_count': instance.voteCount,
  'voted_at': instance.votedAt,
  'watching_count': instance.watchingCount,
  'year': instance.year,
  'creation_date': instance.creationDate,
  'last_update_date': instance.lastUpdateDate,
  'your_vote': instance.yourVote,
  'my_vote': instance.myVote,
  'favorites_count': instance.favoritesCount,
};

EpisodeUpdate _$EpisodeUpdateFromJson(Map<String, dynamic> json) =>
    EpisodeUpdate(
      lastEpisodeTypeUpdateName: json['lastEpisodeTypeUpdateName'] as String?,
      lastEpisodeSourceUpdateId: (json['last_episode_source_update_id'] as num?)
          ?.toInt(),
      lastEpisodeSourceUpdateName:
          json['last_episode_source_update_name'] as String?,
      lastEpisodeTypeUpdateId: (json['last_episode_type_update_id'] as num?)
          ?.toInt(),
      lastEpisodeUpdateDate: (json['last_episode_update_date'] as num?)
          ?.toInt(),
      lastEpisodeUpdateName: json['last_episode_update_name'] as String?,
    );

Map<String, dynamic> _$EpisodeUpdateToJson(EpisodeUpdate instance) =>
    <String, dynamic>{
      'lastEpisodeTypeUpdateName': instance.lastEpisodeTypeUpdateName,
      'last_episode_source_update_id': instance.lastEpisodeSourceUpdateId,
      'last_episode_source_update_name': instance.lastEpisodeSourceUpdateName,
      'last_episode_type_update_id': instance.lastEpisodeTypeUpdateId,
      'last_episode_update_date': instance.lastEpisodeUpdateDate,
      'last_episode_update_name': instance.lastEpisodeUpdateName,
    };

ReleaseStatusInfo _$ReleaseStatusInfoFromJson(Map<String, dynamic> json) =>
    ReleaseStatusInfo(
      id: $enumDecode(_$ReleaseStatusEnumMap, json['id']),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ReleaseStatusInfoToJson(ReleaseStatusInfo instance) =>
    <String, dynamic>{
      'id': _$ReleaseStatusEnumMap[instance.id]!,
      'name': instance.name,
    };

const _$ReleaseStatusEnumMap = {
  ReleaseStatus.unknown: 0,
  ReleaseStatus.finished: 1,
  ReleaseStatus.airing: 2,
  ReleaseStatus.announced: 3,
};

ReleaseComment _$ReleaseCommentFromJson(Map<String, dynamic> json) =>
    ReleaseComment(
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
    );

Map<String, dynamic> _$ReleaseCommentToJson(ReleaseComment instance) =>
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
    };

Episode _$EpisodeFromJson(Map<String, dynamic> json) => Episode(
  id: (json['id'] as num).toInt(),
  addedDate: (json['added_date'] as num?)?.toInt(),
  position: (json['position'] as num?)?.toInt(),
  quality: (json['quality'] as num?)?.toInt(),
  playbackPosition: (json['playback_position'] as num?)?.toInt(),
  release: json['release'] == null
      ? null
      : Release.fromJson(json['release'] as Map<String, dynamic>),
  releaseId: (json['release_id'] as num?)?.toInt(),
  source: json['source'] == null
      ? null
      : Source.fromJson(json['source'] as Map<String, dynamic>),
  sourceId: (json['source_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  url: json['url'] as String?,
  iframe: json['iframe'] as bool?,
  isFiller: json['is_filler'] as bool?,
  isWatched: json['is_watched'] as bool?,
);

Map<String, dynamic> _$EpisodeToJson(Episode instance) => <String, dynamic>{
  'id': instance.id,
  'added_date': instance.addedDate,
  'position': instance.position,
  'quality': instance.quality,
  'playback_position': instance.playbackPosition,
  'release': instance.release?.toJson(),
  'release_id': instance.releaseId,
  'source': instance.source?.toJson(),
  'source_id': instance.sourceId,
  'name': instance.name,
  'url': instance.url,
  'iframe': instance.iframe,
  'is_filler': instance.isFiller,
  'is_watched': instance.isWatched,
};

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
  episodesCount: (json['episodes_count'] as num?)?.toInt(),
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  quality: (json['quality'] as num?)?.toInt(),
  type: json['type'] == null
      ? null
      : Dubber.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
  'episodes_count': instance.episodesCount,
  'id': instance.id,
  'name': instance.name,
  'quality': instance.quality,
  'type': instance.type?.toJson(),
};

ProfileReleaseTypeNotificationPreference
_$ProfileReleaseTypeNotificationPreferenceFromJson(Map<String, dynamic> json) =>
    ProfileReleaseTypeNotificationPreference(
      type: json['type'] == null
          ? null
          : Dubber.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileReleaseTypeNotificationPreferenceToJson(
  ProfileReleaseTypeNotificationPreference instance,
) => <String, dynamic>{'type': instance.type?.toJson()};

Dubber _$DubberFromJson(Map<String, dynamic> json) => Dubber(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  workers: json['workers'] as String?,
  isSub: json['is_sub'] as bool?,
  pinned: json['pinned'] as bool?,
  episodesCount: (json['episodes_count'] as num?)?.toInt(),
  quality: (json['quality'] as num?)?.toInt(),
  viewCount: (json['view_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$DubberToJson(Dubber instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
  'workers': instance.workers,
  'is_sub': instance.isSub,
  'pinned': instance.pinned,
  'episodes_count': instance.episodesCount,
  'quality': instance.quality,
  'view_count': instance.viewCount,
};

ReleaseVideoBanner _$ReleaseVideoBannerFromJson(Map<String, dynamic> json) =>
    ReleaseVideoBanner(
      name: json['name'] as String?,
      image: json['image'] as String?,
      value: json['value'] as String?,
      actionId: (json['action_id'] as num?)?.toInt(),
      isNew: json['is_new'] as bool?,
    );

Map<String, dynamic> _$ReleaseVideoBannerToJson(ReleaseVideoBanner instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'value': instance.value,
      'action_id': instance.actionId,
      'is_new': instance.isNew,
    };

Related _$RelatedFromJson(Map<String, dynamic> json) => Related(
  description: json['description'] as String?,
  id: (json['id'] as num).toInt(),
  image: json['image'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: json['name'] as String?,
  nameRu: json['name_ru'] as String?,
  releaseCount: (json['release_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$RelatedToJson(Related instance) => <String, dynamic>{
  'description': instance.description,
  'id': instance.id,
  'image': instance.image,
  'images': instance.images,
  'name': instance.name,
  'name_ru': instance.nameRu,
  'release_count': instance.releaseCount,
};

ProfileCompact _$ProfileCompactFromJson(Map<String, dynamic> json) =>
    ProfileCompact(
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
      login: json['login'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$ProfileCompactToJson(ProfileCompact instance) =>
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
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: $enumDecode(_$ReleaseCategoryEnumMap, json['id']),
  name: json['name'] as String?,
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': _$ReleaseCategoryEnumMap[instance.id]!,
  'name': instance.name,
};

const _$ReleaseCategoryEnumMap = {
  ReleaseCategory.unknown: 0,
  ReleaseCategory.series: 1,
  ReleaseCategory.movie: 2,
  ReleaseCategory.ova: 3,
  ReleaseCategory.special: 6,
};
