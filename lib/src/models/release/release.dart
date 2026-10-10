import 'package:json_annotation/json_annotation.dart';
import 'enums.dart';
part 'release.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Release {
  const Release({
    required this.id,
    required this.ageRating,
    required this.airedOnDate,
    this.author,
    required this.broadcast,
    required this.canTorlookSearch,
    required this.canVideoAppeal,
    required this.category,
    required this.collectionCount,
    required this.commentCount,
    required this.commentPerDayCount,
    required this.comments,
    required this.completedCount,
    required this.country,
    required this.description,
    this.director,
    required this.droppedCount,
    required this.duration,
    this.episodeLastUpdate,
    this.episodesTotal,
    this.episodesReleased,
    this.favoriteCount,
    this.genres,
    required this.grade,
    required this.holdOnCount,
    required this.image,
    required this.isAdult,
    required this.isDeleted,
    required this.isFavorite,
    required this.isPlayDisabled,
    required this.isReleaseTypeNotificationsEnabled,
    this.isRuBlocked,
    required this.isTppDisabled,
    required this.isViewBlocked,
    required this.isViewed,
    this.lastViewEpisode,
    required this.lastViewTimestamp,
    this.note,
    this.noteBackgroundColorDark,
    this.noteBackgroundColorLight,
    this.noteTextColorDark,
    this.noteTextColorLight,
    required this.planCount,
    this.profileListStatus,
    required this.profileReleaseTypeNotificationPreferenceCount,
    this.profileReleaseTypeNotificationPreferences,
    required this.rating,
    required this.recommendedReleases,
    this.related,
    required this.relatedCount,
    required this.relatedReleases,
    this.releaseDate,
    required this.screenshotImages,
    required this.season,
    this.source,
    required this.status,
    required this.statusId,
    this.studio,
    required this.titleOriginal,
    required this.titleRu,
    this.titleAlt,
    this.translators,
    required this.videoBanners,
    required this.vote1Count,
    required this.vote2Count,
    required this.vote3Count,
    required this.vote4Count,
    required this.vote5Count,
    required this.voteCount,
    this.votedAt,
    required this.watchingCount,
    this.year,
    this.creationDate,
    this.lastUpdateDate,
    this.yourVote,
    this.myVote,
    required this.favoritesCount,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'age_rating')
  final int ageRating;

  @JsonKey(name: 'aired_on_date')
  final int airedOnDate;

  @JsonKey(name: 'author')
  final String? author;

  @JsonKey(name: 'broadcast')
  final int broadcast;

  @JsonKey(name: 'can_torlook_search')
  final bool canTorlookSearch;

  @JsonKey(name: 'can_video_appeal')
  final bool canVideoAppeal;

  @JsonKey(name: 'category')
  final Category category;

  @JsonKey(name: 'collection_count')
  final int collectionCount;

  @JsonKey(name: 'comment_count')
  final int commentCount;

  @JsonKey(name: 'comment_per_day_count')
  final int commentPerDayCount;

  @JsonKey(name: 'comments')
  final List<ReleaseComment> comments;

  @JsonKey(name: 'completed_count')
  final int completedCount;

  @JsonKey(name: 'country')
  final String country;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'director')
  final String? director;

  @JsonKey(name: 'dropped_count')
  final int droppedCount;

  @JsonKey(name: 'duration')
  final int duration;

  @JsonKey(name: 'episode_last_update')
  final EpisodeUpdate? episodeLastUpdate;

  @JsonKey(name: 'episodes_total')
  final int? episodesTotal;

  @JsonKey(name: 'episodes_released')
  final int? episodesReleased;

  @JsonKey(name: 'favorite_count')
  final int? favoriteCount;

  @JsonKey(name: 'genres')
  final String? genres;

  @JsonKey(name: 'grade')
  final double grade;

  @JsonKey(name: 'hold_on_count')
  final int holdOnCount;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'is_adult')
  final bool isAdult;

  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  @JsonKey(name: 'is_favorite')
  final bool isFavorite;

  @JsonKey(name: 'is_play_disabled')
  final bool isPlayDisabled;

  @JsonKey(name: 'is_release_type_notifications_enabled')
  final bool isReleaseTypeNotificationsEnabled;

  @JsonKey(name: 'is_ru_blocked')
  final bool? isRuBlocked;

  @JsonKey(name: 'is_tpp_disabled')
  final bool isTppDisabled;

  @JsonKey(name: 'is_view_blocked')
  final bool isViewBlocked;

  @JsonKey(name: 'is_viewed')
  final bool isViewed;

  @JsonKey(name: 'last_view_episode')
  final Episode? lastViewEpisode;

  @JsonKey(name: 'last_view_timestamp')
  final int lastViewTimestamp;

  @JsonKey(name: 'note')
  final String? note;

  @JsonKey(name: 'note_background_color_dark')
  final String? noteBackgroundColorDark;

  @JsonKey(name: 'note_background_color_light')
  final String? noteBackgroundColorLight;

  @JsonKey(name: 'note_text_color_dark')
  final String? noteTextColorDark;

  @JsonKey(name: 'note_text_color_light')
  final String? noteTextColorLight;

  @JsonKey(name: 'plan_count')
  final int planCount;

  @JsonKey(name: 'profile_list_status')
  final int? profileListStatus;

  @JsonKey(name: 'profile_release_type_notification_preference_count')
  final int profileReleaseTypeNotificationPreferenceCount;

  @JsonKey(name: 'profile_release_type_notification_preferences')
  final List<ProfileReleaseTypeNotificationPreference>?
  profileReleaseTypeNotificationPreferences;

  @JsonKey(name: 'rating')
  final double rating;

  @JsonKey(name: 'recommended_releases')
  final List<Release> recommendedReleases;

  @JsonKey(name: 'related')
  final Related? related;

  @JsonKey(name: 'related_count')
  final int relatedCount;

  @JsonKey(name: 'related_releases')
  final List<Release> relatedReleases;

  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @JsonKey(name: 'screenshot_images')
  final List<String> screenshotImages;

  @JsonKey(name: 'season')
  final int season;

  @JsonKey(name: 'source')
  final String? source;

  @JsonKey(name: 'status')
  final ReleaseStatusInfo status;

  @JsonKey(name: 'status_id')
  final int statusId;

  @JsonKey(name: 'studio')
  final String? studio;

  @JsonKey(name: 'title_original')
  final String titleOriginal;

  @JsonKey(name: 'title_ru')
  final String titleRu;

  @JsonKey(name: 'title_alt')
  final String? titleAlt;

  @JsonKey(name: 'translators')
  final String? translators;

  @JsonKey(name: 'video_banners')
  final List<ReleaseVideoBanner> videoBanners;

  @JsonKey(name: 'vote_1_count')
  final int vote1Count;

  @JsonKey(name: 'vote_2_count')
  final int vote2Count;

  @JsonKey(name: 'vote_3_count')
  final int vote3Count;

  @JsonKey(name: 'vote_4_count')
  final int vote4Count;

  @JsonKey(name: 'vote_5_count')
  final int vote5Count;

  @JsonKey(name: 'vote_count')
  final int voteCount;

  @JsonKey(name: 'voted_at')
  final int? votedAt;

  @JsonKey(name: 'watching_count')
  final int watchingCount;

  @JsonKey(name: 'year')
  final String? year;

  @JsonKey(name: 'creation_date')
  final int? creationDate;

  @JsonKey(name: 'last_update_date')
  final int? lastUpdateDate;

  @JsonKey(name: 'your_vote')
  final int? yourVote;

  @JsonKey(name: 'my_vote')
  final int? myVote;

  @JsonKey(name: 'favorites_count')
  final int favoritesCount;

  factory Release.fromJson(Map<String, dynamic> json) =>
      _$ReleaseFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class EpisodeUpdate {
  const EpisodeUpdate({
    required this.lastEpisodeTypeUpdateName,
    required this.lastEpisodeSourceUpdateId,
    required this.lastEpisodeSourceUpdateName,
    required this.lastEpisodeTypeUpdateId,
    required this.lastEpisodeUpdateDate,
    required this.lastEpisodeUpdateName,
  });

  @JsonKey(name: 'lastEpisodeTypeUpdateName')
  final String lastEpisodeTypeUpdateName;

  @JsonKey(name: 'last_episode_source_update_id')
  final int lastEpisodeSourceUpdateId;

  @JsonKey(name: 'last_episode_source_update_name')
  final String lastEpisodeSourceUpdateName;

  @JsonKey(name: 'last_episode_type_update_id')
  final int lastEpisodeTypeUpdateId;

  @JsonKey(name: 'last_episode_update_date')
  final int lastEpisodeUpdateDate;

  @JsonKey(name: 'last_episode_update_name')
  final String lastEpisodeUpdateName;

  factory EpisodeUpdate.fromJson(Map<String, dynamic> json) =>
      _$EpisodeUpdateFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeUpdateToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseStatusInfo {
  const ReleaseStatusInfo({required this.id, required this.name});

  @JsonKey(name: 'id')
  final ReleaseStatus id;

  @JsonKey(name: 'name')
  final String name;

  factory ReleaseStatusInfo.fromJson(Map<String, dynamic> json) =>
      _$ReleaseStatusInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseStatusInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseComment {
  const ReleaseComment({
    required this.id,
    required this.message,
    required this.timestamp,
    required this.type,
    required this.vote,
    required this.profile,
    this.parentCommentId,
    required this.voteCount,
    required this.likesCount,
    required this.isSpoiler,
    required this.isEdited,
    required this.isDeleted,
    required this.isReply,
    required this.replyCount,
    required this.canLike,
    required this.release,
    this.postedAtEpisode,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'timestamp')
  final int timestamp;

  @JsonKey(name: 'type')
  final int type;

  @JsonKey(name: 'vote')
  final int vote;

  @JsonKey(name: 'profile')
  final ProfileCompact profile;

  @JsonKey(name: 'parent_comment_id')
  final int? parentCommentId;

  @JsonKey(name: 'vote_count')
  final int voteCount;

  @JsonKey(name: 'likes_count')
  final int likesCount;

  @JsonKey(name: 'is_spoiler')
  final bool isSpoiler;

  @JsonKey(name: 'is_edited')
  final bool isEdited;

  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  @JsonKey(name: 'is_reply')
  final bool isReply;

  @JsonKey(name: 'reply_count')
  final int replyCount;

  @JsonKey(name: 'can_like')
  final bool canLike;

  @JsonKey(name: 'release')
  final Release release;

  @JsonKey(name: 'posted_at_episode')
  final int? postedAtEpisode;

  factory ReleaseComment.fromJson(Map<String, dynamic> json) =>
      _$ReleaseCommentFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseCommentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Episode {
  const Episode({
    required this.id,
    required this.addedDate,
    required this.position,
    required this.quality,
    required this.playbackPosition,
    required this.release,
    required this.releaseId,
    required this.source,
    required this.sourceId,
    required this.name,
    required this.url,
    required this.iframe,
    required this.isFiller,
    required this.isWatched,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'added_date')
  final int addedDate;

  @JsonKey(name: 'position')
  final int position;

  @JsonKey(name: 'quality')
  final int quality;

  @JsonKey(name: 'playback_position')
  final int playbackPosition;

  @JsonKey(name: 'release')
  final Release release;

  @JsonKey(name: 'release_id')
  final int releaseId;

  @JsonKey(name: 'source')
  final Source source;

  @JsonKey(name: 'source_id')
  final int sourceId;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'url')
  final String url;

  @JsonKey(name: 'iframe')
  final bool iframe;

  @JsonKey(name: 'is_filler')
  final bool isFiller;

  @JsonKey(name: 'is_watched')
  final bool isWatched;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Source {
  const Source({
    required this.episodesCount,
    required this.id,
    required this.name,
    required this.quality,
    required this.type,
  });

  @JsonKey(name: 'episodes_count')
  final int episodesCount;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'quality')
  final int quality;

  @JsonKey(name: 'type')
  final Dubber type;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileReleaseTypeNotificationPreference {
  const ProfileReleaseTypeNotificationPreference({required this.type});

  @JsonKey(name: 'type')
  final Dubber type;

  factory ProfileReleaseTypeNotificationPreference.fromJson(
    Map<String, dynamic> json,
  ) => _$ProfileReleaseTypeNotificationPreferenceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ProfileReleaseTypeNotificationPreferenceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Dubber {
  const Dubber({
    required this.id,
    required this.name,
    required this.icon,
    required this.workers,
    required this.isSub,
    required this.pinned,
    required this.episodesCount,
    required this.quality,
    required this.viewCount,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'icon')
  final String icon;

  @JsonKey(name: 'workers')
  final String workers;

  @JsonKey(name: 'is_sub')
  final bool isSub;

  @JsonKey(name: 'pinned')
  final bool pinned;

  @JsonKey(name: 'episodes_count')
  final int episodesCount;

  @JsonKey(name: 'quality')
  final int quality;

  @JsonKey(name: 'view_count')
  final int viewCount;

  factory Dubber.fromJson(Map<String, dynamic> json) => _$DubberFromJson(json);
  Map<String, dynamic> toJson() => _$DubberToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideoBanner {
  const ReleaseVideoBanner({
    required this.name,
    required this.image,
    required this.value,
    required this.actionId,
    required this.isNew,
  });

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'value')
  final String value;

  @JsonKey(name: 'action_id')
  final int actionId;

  @JsonKey(name: 'is_new')
  final bool isNew;

  factory ReleaseVideoBanner.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoBannerFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoBannerToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Related {
  const Related({
    this.description,
    required this.id,
    required this.image,
    this.images,
    required this.name,
    required this.nameRu,
    required this.releaseCount,
  });

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'images')
  final List<String>? images;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'name_ru')
  final String nameRu;

  @JsonKey(name: 'release_count')
  final int releaseCount;

  factory Related.fromJson(Map<String, dynamic> json) =>
      _$RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileCompact {
  const ProfileCompact({
    this.badgeId,
    this.badgeName,
    this.badgeType,
    this.badgeUrl,
    required this.banExpires,
    this.banReason,
    required this.id,
    required this.isBanned,
    required this.isSponsor,
    required this.isVerified,
    required this.privilegeLevel,
    required this.login,
    required this.avatar,
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
  final String? banReason;

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

  factory ProfileCompact.fromJson(Map<String, dynamic> json) =>
      _$ProfileCompactFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileCompactToJson(this);
}

/// В API категория приходит объектом; числовое представление SDK тоже поддерживается.
@JsonSerializable(explicitToJson: true)
final class Category {
  const Category({required this.id, this.name});
  final ReleaseCategory id;
  final String? name;
  factory Category.fromJson(Object json) => _$CategoryFromJson(
    json is num ? <String, dynamic>{'id': json} : json as Map<String, dynamic>,
  );
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
