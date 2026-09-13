// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleaseCompact _$ReleaseCompactFromJson(Map<String, dynamic> json) =>
    ReleaseCompact(
      id: (json['id'] as num).toInt(),
      titleRu: json['title_ru'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ReleaseCompactToJson(ReleaseCompact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title_ru': instance.titleRu,
      'image': instance.image,
    };

ReleaseCommentCompact _$ReleaseCommentCompactFromJson(
  Map<String, dynamic> json,
) => ReleaseCommentCompact(
  id: (json['id'] as num).toInt(),
  profile: json['profile'] == null
      ? null
      : ProfileSlim.fromJson(json['profile'] as Map<String, dynamic>),
  message: json['message'] as String?,
  isSpoiler: json['is_spoiler'] as bool?,
  release: json['release'] == null
      ? null
      : ReleaseCompact.fromJson(json['release'] as Map<String, dynamic>),
  embeddableId: (json['embeddableId'] as num?)?.toInt(),
  embeddableTitle: json['embeddableTitle'] as String?,
);

Map<String, dynamic> _$ReleaseCommentCompactToJson(
  ReleaseCommentCompact instance,
) => <String, dynamic>{
  'id': instance.id,
  'profile': instance.profile?.toJson(),
  'message': instance.message,
  'is_spoiler': instance.isSpoiler,
  'release': instance.release?.toJson(),
  'embeddableId': instance.embeddableId,
  'embeddableTitle': instance.embeddableTitle,
};

EpisodeCompact _$EpisodeCompactFromJson(Map<String, dynamic> json) =>
    EpisodeCompact(
      name: json['name'] as String?,
      release: json['release'] == null
          ? null
          : ReleaseCompact.fromJson(json['release'] as Map<String, dynamic>),
      source: json['source'] == null
          ? null
          : SourceCompact.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpisodeCompactToJson(EpisodeCompact instance) =>
    <String, dynamic>{
      'name': instance.name,
      'release': instance.release?.toJson(),
      'source': instance.source?.toJson(),
    };

SourceCompact _$SourceCompactFromJson(Map<String, dynamic> json) =>
    SourceCompact(
      name: json['name'] as String?,
      type: json['type'] == null
          ? null
          : DubberCompact.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SourceCompactToJson(SourceCompact instance) =>
    <String, dynamic>{'name': instance.name, 'type': instance.type?.toJson()};

DubberCompact _$DubberCompactFromJson(Map<String, dynamic> json) =>
    DubberCompact(name: json['name'] as String?);

Map<String, dynamic> _$DubberCompactToJson(DubberCompact instance) =>
    <String, dynamic>{'name': instance.name};

ReleaseVideo _$ReleaseVideoFromJson(Map<String, dynamic> json) => ReleaseVideo(
  id: (json['id'] as num).toInt(),
  release: json['release'] == null
      ? null
      : EntityReference<Release>.fromJson(
          json['release'] as Object,
          (value) => Release.fromJson(value as Map<String, dynamic>),
        ),
  profile: json['profile'] == null
      ? null
      : Profile.fromJson(json['profile'] as Map<String, dynamic>),
  category: json['category'] == null
      ? null
      : ReleaseVideoCategory.fromJson(json['category'] as Map<String, dynamic>),
  hosting: json['hosting'] == null
      ? null
      : ReleaseVideoHosting.fromJson(json['hosting'] as Map<String, dynamic>),
  title: json['title'] as String?,
  image: json['image'] as String?,
  url: json['url'] as String?,
  timestamp: (json['timestamp'] as num?)?.toInt(),
  playerUrl: json['player_url'] as String?,
  isFavorite: json['is_favorite'] as bool?,
  favoritesCount: (json['favorites_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$ReleaseVideoToJson(ReleaseVideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'release': instance.release?.toJson((value) => value.toJson()),
      'profile': instance.profile?.toJson(),
      'category': instance.category?.toJson(),
      'hosting': instance.hosting?.toJson(),
      'title': instance.title,
      'image': instance.image,
      'url': instance.url,
      'timestamp': instance.timestamp,
      'player_url': instance.playerUrl,
      'is_favorite': instance.isFavorite,
      'favorites_count': instance.favoritesCount,
    };

ReleaseStreamingPlatform _$ReleaseStreamingPlatformFromJson(
  Map<String, dynamic> json,
) => ReleaseStreamingPlatform(
  id: (json['id'] as num).toInt(),
  release: json['release'] == null
      ? null
      : Release.fromJson(json['release'] as Map<String, dynamic>),
  name: json['name'] as String?,
  icon: json['icon'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$ReleaseStreamingPlatformToJson(
  ReleaseStreamingPlatform instance,
) => <String, dynamic>{
  'id': instance.id,
  'release': instance.release?.toJson(),
  'name': instance.name,
  'icon': instance.icon,
  'url': instance.url,
};

ReleaseVideoCategory _$ReleaseVideoCategoryFromJson(
  Map<String, dynamic> json,
) => ReleaseVideoCategory(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$ReleaseVideoCategoryToJson(
  ReleaseVideoCategory instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

ReleaseVideoBlock _$ReleaseVideoBlockFromJson(Map<String, dynamic> json) =>
    ReleaseVideoBlock(
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => ReleaseVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] == null
          ? null
          : ReleaseVideoCategory.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ReleaseVideoBlockToJson(ReleaseVideoBlock instance) =>
    <String, dynamic>{
      'videos': instance.videos?.map((e) => e.toJson()).toList(),
      'category': instance.category?.toJson(),
    };

Interesting _$InterestingFromJson(Map<String, dynamic> json) => Interesting(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  image: json['image'] as String?,
  type: (json['type'] as num?)?.toInt(),
  action: json['action'] as String?,
  isHidden: json['isHidden'] as bool?,
);

Map<String, dynamic> _$InterestingToJson(Interesting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'type': instance.type,
      'action': instance.action,
      'isHidden': instance.isHidden,
    };

ReleaseVideoAppealRequest _$ReleaseVideoAppealRequestFromJson(
  Map<String, dynamic> json,
) => ReleaseVideoAppealRequest(
  categoryId: (json['categoryId'] as num).toInt(),
  releaseId: (json['releaseId'] as num).toInt(),
  title: json['title'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$ReleaseVideoAppealRequestToJson(
  ReleaseVideoAppealRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'releaseId': instance.releaseId,
  'title': instance.title,
  'url': instance.url,
};

FilterRequest _$FilterRequestFromJson(
  Map<String, dynamic> json,
) => FilterRequest(
  categoryId: (json['category_id'] as num?)?.toInt(),
  country: json['country'] as String?,
  endYear: (json['end_year'] as num?)?.toInt(),
  episodeDurationFrom: (json['episode_duration_from'] as num?)?.toInt(),
  episodeDurationTo: (json['episode_duration_to'] as num?)?.toInt(),
  episodesFrom: (json['episodes_from'] as num?)?.toInt(),
  episodesTo: (json['episodes_to'] as num?)?.toInt(),
  genresMode: $enumDecodeNullable(
    _$FilterGenresModeEnumMap,
    json['genres_mode'],
  ),
  isGenresExcludeModeEnabled: json['is_genres_exclude_mode_enabled'] as bool?,
  season: (json['season'] as num?)?.toInt(),
  source: json['source'] as String?,
  startYear: (json['start_year'] as num?)?.toInt(),
  statusId: (json['status_id'] as num?)?.toInt(),
  studio: json['studio'] as String?,
  sort: $enumDecodeNullable(_$FilterSortEnumMap, json['sort']),
  genres: (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
  profileListExclusions: (json['profile_list_exclusions'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  types: (json['types'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  ageRatings: (json['age_ratings'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$FilterRequestToJson(FilterRequest instance) =>
    <String, dynamic>{
      'category_id': ?instance.categoryId,
      'country': ?instance.country,
      'end_year': ?instance.endYear,
      'episode_duration_from': ?instance.episodeDurationFrom,
      'episode_duration_to': ?instance.episodeDurationTo,
      'episodes_from': ?instance.episodesFrom,
      'episodes_to': ?instance.episodesTo,
      'genres_mode': ?_$FilterGenresModeEnumMap[instance.genresMode],
      'is_genres_exclude_mode_enabled': ?instance.isGenresExcludeModeEnabled,
      'season': ?instance.season,
      'source': ?instance.source,
      'start_year': ?instance.startYear,
      'status_id': ?instance.statusId,
      'studio': ?instance.studio,
      'sort': ?_$FilterSortEnumMap[instance.sort],
      'genres': ?instance.genres,
      'profile_list_exclusions': ?instance.profileListExclusions,
      'types': ?instance.types,
      'age_ratings': ?instance.ageRatings,
    };

const _$FilterGenresModeEnumMap = {
  FilterGenresMode.all: 0,
  FilterGenresMode.any: 1,
  FilterGenresMode.exclude: 2,
};

const _$FilterSortEnumMap = {
  FilterSort.dateUpdateDesc: 0,
  FilterSort.gradeDesc: 1,
  FilterSort.yearDesc: 2,
  FilterSort.popularDesc: 3,
  FilterSort.dateUpdateAsc: 4,
  FilterSort.gradeAsc: 5,
  FilterSort.yearAsc: 6,
  FilterSort.popularAsc: 7,
};

EpisodeTargetResponse _$EpisodeTargetResponseFromJson(
  Map<String, dynamic> json,
) => EpisodeTargetResponse(
  code: (json['code'] as num).toInt(),
  episode: json['episode'] == null
      ? null
      : Episode.fromJson(json['episode'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EpisodeTargetResponseToJson(
  EpisodeTargetResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'episode': instance.episode?.toJson(),
};

EpisodeResponse _$EpisodeResponseFromJson(Map<String, dynamic> json) =>
    EpisodeResponse(
      code: (json['code'] as num).toInt(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodeResponseToJson(EpisodeResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'episodes': instance.episodes?.map((e) => e.toJson()).toList(),
    };

DubbersResponse _$DubbersResponseFromJson(Map<String, dynamic> json) =>
    DubbersResponse(
      code: (json['code'] as num).toInt(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Dubber.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DubbersResponseToJson(DubbersResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'types': instance.types?.map((e) => e.toJson()).toList(),
    };

SourcesResponse _$SourcesResponseFromJson(Map<String, dynamic> json) =>
    SourcesResponse(
      code: (json['code'] as num).toInt(),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SourcesResponseToJson(SourcesResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sources': instance.sources?.map((e) => e.toJson()).toList(),
    };

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) =>
    ScheduleResponse(
      code: (json['code'] as num).toInt(),
      monday: (json['monday'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
      tuesday: (json['tuesday'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
      wednesday: (json['wednesday'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
      thursday: (json['thursday'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
      friday: (json['friday'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
      saturday: (json['saturday'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
      sunday: (json['sunday'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScheduleResponseToJson(ScheduleResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'monday': instance.monday?.map((e) => e.toJson()).toList(),
      'tuesday': instance.tuesday?.map((e) => e.toJson()).toList(),
      'wednesday': instance.wednesday?.map((e) => e.toJson()).toList(),
      'thursday': instance.thursday?.map((e) => e.toJson()).toList(),
      'friday': instance.friday?.map((e) => e.toJson()).toList(),
      'saturday': instance.saturday?.map((e) => e.toJson()).toList(),
      'sunday': instance.sunday?.map((e) => e.toJson()).toList(),
    };

ReleaseVideoResponse _$ReleaseVideoResponseFromJson(
  Map<String, dynamic> json,
) => ReleaseVideoResponse(
  code: (json['code'] as num).toInt(),
  blocks: (json['blocks'] as List<dynamic>?)
      ?.map((e) => ReleaseVideoBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  canAppeal: json['can_appeal'] as bool?,
  lastVideos: (json['last_videos'] as List<dynamic>?)
      ?.map((e) => ReleaseVideo.fromJson(e as Map<String, dynamic>))
      .toList(),
  release: json['release'] == null
      ? null
      : Release.fromJson(json['release'] as Map<String, dynamic>),
  streamingPlatforms: json['streaming_platforms'] == null
      ? null
      : ReleaseStreamingPlatform.fromJson(
          json['streaming_platforms'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ReleaseVideoResponseToJson(
  ReleaseVideoResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'blocks': instance.blocks?.map((e) => e.toJson()).toList(),
  'can_appeal': instance.canAppeal,
  'last_videos': instance.lastVideos?.map((e) => e.toJson()).toList(),
  'release': instance.release?.toJson(),
  'streaming_platforms': instance.streamingPlatforms?.toJson(),
};

ReleaseVideoCategoriesResponse _$ReleaseVideoCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => ReleaseVideoCategoriesResponse(
  code: (json['code'] as num).toInt(),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => ReleaseVideoCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ReleaseVideoCategoriesResponseToJson(
  ReleaseVideoCategoriesResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
};

TypeResponse _$TypeResponseFromJson(Map<String, dynamic> json) => TypeResponse(
  code: (json['code'] as num).toInt(),
  types: (json['types'] as List<dynamic>?)
      ?.map((e) => Dubber.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TypeResponseToJson(TypeResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'types': instance.types?.map((e) => e.toJson()).toList(),
    };

ReleaseVideoHosting _$ReleaseVideoHostingFromJson(Map<String, dynamic> json) =>
    ReleaseVideoHosting(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$ReleaseVideoHostingToJson(
  ReleaseVideoHosting instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon': instance.icon,
};
