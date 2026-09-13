import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseCompact {
  const ReleaseCompact({required this.id, this.titleRu, this.image});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title_ru')
  final String? titleRu;

  @JsonKey(name: 'image')
  final String? image;

  factory ReleaseCompact.fromJson(Map<String, dynamic> json) =>
      _$ReleaseCompactFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseCommentCompact {
  const ReleaseCommentCompact({
    required this.id,
    this.profile,
    this.message,
    this.isSpoiler,
    this.release,
    this.embeddableId,
    this.embeddableTitle,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'profile')
  final ProfileSlim? profile;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'is_spoiler')
  final bool? isSpoiler;

  @JsonKey(name: 'release')
  final ReleaseCompact? release;

  @JsonKey(name: 'embeddableId')
  final int? embeddableId;

  @JsonKey(name: 'embeddableTitle')
  final String? embeddableTitle;

  factory ReleaseCommentCompact.fromJson(Map<String, dynamic> json) =>
      _$ReleaseCommentCompactFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseCommentCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class EpisodeCompact {
  const EpisodeCompact({this.name, this.release, this.source});

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'release')
  final ReleaseCompact? release;

  @JsonKey(name: 'source')
  final SourceCompact? source;

  factory EpisodeCompact.fromJson(Map<String, dynamic> json) =>
      _$EpisodeCompactFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SourceCompact {
  const SourceCompact({this.name, this.type});

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'type')
  final DubberCompact? type;

  factory SourceCompact.fromJson(Map<String, dynamic> json) =>
      _$SourceCompactFromJson(json);
  Map<String, dynamic> toJson() => _$SourceCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class DubberCompact {
  const DubberCompact({this.name});

  @JsonKey(name: 'name')
  final String? name;

  factory DubberCompact.fromJson(Map<String, dynamic> json) =>
      _$DubberCompactFromJson(json);
  Map<String, dynamic> toJson() => _$DubberCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideo {
  const ReleaseVideo({
    required this.id,
    this.release,
    this.profile,
    this.category,
    this.hosting,
    this.title,
    this.image,
    this.url,
    this.timestamp,
    this.playerUrl,
    this.isFavorite,
    this.favoritesCount,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'release')
  final EntityReference<Release>? release;

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'category')
  final ReleaseVideoCategory? category;

  @JsonKey(name: 'hosting')
  final ReleaseVideoHosting? hosting;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @JsonKey(name: 'player_url')
  final String? playerUrl;

  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;

  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  factory ReleaseVideo.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseStreamingPlatform {
  const ReleaseStreamingPlatform({
    required this.id,
    this.release,
    this.name,
    this.icon,
    this.url,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'release')
  final Release? release;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'icon')
  final String? icon;

  @JsonKey(name: 'url')
  final String? url;

  factory ReleaseStreamingPlatform.fromJson(Map<String, dynamic> json) =>
      _$ReleaseStreamingPlatformFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseStreamingPlatformToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideoCategory {
  const ReleaseVideoCategory({required this.id, this.name});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String? name;

  factory ReleaseVideoCategory.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoCategoryToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideoBlock {
  const ReleaseVideoBlock({this.videos, this.category});

  @JsonKey(name: 'videos')
  final List<ReleaseVideo>? videos;

  @JsonKey(name: 'category')
  final ReleaseVideoCategory? category;

  factory ReleaseVideoBlock.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Interesting {
  const Interesting({
    required this.id,
    this.title,
    this.description,
    this.image,
    this.type,
    this.action,
    this.isHidden,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'type')
  final int? type;

  @JsonKey(name: 'action')
  final String? action;

  @JsonKey(name: 'isHidden')
  final bool? isHidden;

  factory Interesting.fromJson(Map<String, dynamic> json) =>
      _$InterestingFromJson(json);
  Map<String, dynamic> toJson() => _$InterestingToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideoAppealRequest {
  const ReleaseVideoAppealRequest({
    required this.categoryId,
    required this.releaseId,
    required this.title,
    required this.url,
  });

  @JsonKey(name: 'categoryId')
  final int categoryId;

  @JsonKey(name: 'releaseId')
  final int releaseId;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'url')
  final String url;

  factory ReleaseVideoAppealRequest.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoAppealRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoAppealRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class FilterRequest {
  const FilterRequest({
    this.categoryId,
    this.country,
    this.endYear,
    this.episodeDurationFrom,
    this.episodeDurationTo,
    this.episodesFrom,
    this.episodesTo,
    this.genresMode,
    this.isGenresExcludeModeEnabled,
    this.season,
    this.source,
    this.startYear,
    this.statusId,
    this.studio,
    this.sort,
    this.genres,
    this.profileListExclusions,
    this.types,
    this.ageRatings,
  });

  @JsonKey(name: 'category_id', includeIfNull: false)
  final int? categoryId;

  @JsonKey(name: 'country', includeIfNull: false)
  final String? country;

  @JsonKey(name: 'end_year', includeIfNull: false)
  final int? endYear;

  @JsonKey(name: 'episode_duration_from', includeIfNull: false)
  final int? episodeDurationFrom;

  @JsonKey(name: 'episode_duration_to', includeIfNull: false)
  final int? episodeDurationTo;

  @JsonKey(name: 'episodes_from', includeIfNull: false)
  final int? episodesFrom;

  @JsonKey(name: 'episodes_to', includeIfNull: false)
  final int? episodesTo;

  @JsonKey(name: 'genres_mode', includeIfNull: false)
  final FilterGenresMode? genresMode;

  @JsonKey(name: 'is_genres_exclude_mode_enabled', includeIfNull: false)
  final bool? isGenresExcludeModeEnabled;

  @JsonKey(name: 'season', includeIfNull: false)
  final int? season;

  @JsonKey(name: 'source', includeIfNull: false)
  final String? source;

  @JsonKey(name: 'start_year', includeIfNull: false)
  final int? startYear;

  @JsonKey(name: 'status_id', includeIfNull: false)
  final int? statusId;

  @JsonKey(name: 'studio', includeIfNull: false)
  final String? studio;

  @JsonKey(name: 'sort', includeIfNull: false)
  final FilterSort? sort;

  @JsonKey(name: 'genres', includeIfNull: false)
  final List<String>? genres;

  @JsonKey(name: 'profile_list_exclusions', includeIfNull: false)
  final List<int>? profileListExclusions;

  @JsonKey(name: 'types', includeIfNull: false)
  final List<int>? types;

  @JsonKey(name: 'age_ratings', includeIfNull: false)
  final List<int>? ageRatings;

  factory FilterRequest.fromJson(Map<String, dynamic> json) =>
      _$FilterRequestFromJson(json);
  Map<String, dynamic> toJson() => _$FilterRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class EpisodeTargetResponse {
  const EpisodeTargetResponse({required this.code, this.episode});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'episode')
  final Episode? episode;

  factory EpisodeTargetResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeTargetResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeTargetResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class EpisodeResponse {
  const EpisodeResponse({required this.code, this.episodes});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'episodes')
  final List<Episode>? episodes;

  factory EpisodeResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class DubbersResponse {
  const DubbersResponse({required this.code, this.types});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'types')
  final List<Dubber>? types;

  factory DubbersResponse.fromJson(Map<String, dynamic> json) =>
      _$DubbersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DubbersResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class SourcesResponse {
  const SourcesResponse({required this.code, this.sources});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'sources')
  final List<Source>? sources;

  factory SourcesResponse.fromJson(Map<String, dynamic> json) =>
      _$SourcesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SourcesResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ScheduleResponse {
  const ScheduleResponse({
    required this.code,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'monday')
  final List<Release>? monday;

  @JsonKey(name: 'tuesday')
  final List<Release>? tuesday;

  @JsonKey(name: 'wednesday')
  final List<Release>? wednesday;

  @JsonKey(name: 'thursday')
  final List<Release>? thursday;

  @JsonKey(name: 'friday')
  final List<Release>? friday;

  @JsonKey(name: 'saturday')
  final List<Release>? saturday;

  @JsonKey(name: 'sunday')
  final List<Release>? sunday;

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideoResponse {
  const ReleaseVideoResponse({
    required this.code,
    this.blocks,
    this.canAppeal,
    this.lastVideos,
    this.release,
    this.streamingPlatforms,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'blocks')
  final List<ReleaseVideoBlock>? blocks;

  @JsonKey(name: 'can_appeal')
  final bool? canAppeal;

  @JsonKey(name: 'last_videos')
  final List<ReleaseVideo>? lastVideos;

  @JsonKey(name: 'release')
  final Release? release;

  @JsonKey(name: 'streaming_platforms')
  final ReleaseStreamingPlatform? streamingPlatforms;

  factory ReleaseVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideoCategoriesResponse {
  const ReleaseVideoCategoriesResponse({required this.code, this.categories});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'categories')
  final List<ReleaseVideoCategory>? categories;

  factory ReleaseVideoCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoCategoriesResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class TypeResponse {
  const TypeResponse({required this.code, this.types});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'types')
  final List<Dubber>? types;

  factory TypeResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TypeResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseVideoHosting {
  const ReleaseVideoHosting({required this.id, this.name, this.icon});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'icon')
  final String? icon;

  factory ReleaseVideoHosting.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVideoHostingFromJson(json);
  Map<String, dynamic> toJson() => _$ReleaseVideoHostingToJson(this);
}
