// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationCountResponse _$NotificationCountResponseFromJson(
  Map<String, dynamic> json,
) => NotificationCountResponse(
  code: (json['code'] as num).toInt(),
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotificationCountResponseToJson(
  NotificationCountResponse instance,
) => <String, dynamic>{'code': instance.code, 'count': instance.count};

ProfileCommentNotification<T> _$ProfileCommentNotificationFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ProfileCommentNotification<T>(
  type: $enumDecodeNullable(_$ProfileNotificationTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isNew: json['is_new'] as bool?,
  isPushed: json['is_pushed'] as bool?,
  comment: _$nullableGenericFromJson(json['comment'], fromJsonT),
  parentComment: _$nullableGenericFromJson(json['parent_comment'], fromJsonT),
);

Map<String, dynamic> _$ProfileCommentNotificationToJson<T>(
  ProfileCommentNotification<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'type': _$ProfileNotificationTypeEnumMap[instance.type],
  'id': instance.id,
  'timestamp': instance.timestamp,
  'is_new': instance.isNew,
  'is_pushed': instance.isPushed,
  'comment': _$nullableGenericToJson(instance.comment, toJsonT),
  'parent_comment': _$nullableGenericToJson(instance.parentComment, toJsonT),
};

const _$ProfileNotificationTypeEnumMap = {
  ProfileNotificationType.friend: 'friend',
  ProfileNotificationType.episode: 'episode',
  ProfileNotificationType.releaseComment: 'releaseComment',
  ProfileNotificationType.collectionComment: 'collectionComment',
  ProfileNotificationType.myCollection: 'myCollection',
  ProfileNotificationType.article: 'article',
  ProfileNotificationType.articleComment: 'articleComment',
  ProfileNotificationType.myArticle: 'myArticle',
  ProfileNotificationType.relatedRelease: 'relatedRelease',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

ProfileFriendNotification _$ProfileFriendNotificationFromJson(
  Map<String, dynamic> json,
) => ProfileFriendNotification(
  type: $enumDecodeNullable(_$ProfileNotificationTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isNew: json['is_new'] as bool?,
  isPushed: json['is_pushed'] as bool?,
  profile: json['profile'] == null
      ? null
      : Profile.fromJson(json['profile'] as Map<String, dynamic>),
  status: $enumDecodeNullable(
    _$ProfileFriendNotificationStatusEnumMap,
    json['status'],
  ),
  byProfile: json['by_profile'] == null
      ? null
      : ProfileSlim.fromJson(json['by_profile'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileFriendNotificationToJson(
  ProfileFriendNotification instance,
) => <String, dynamic>{
  'type': _$ProfileNotificationTypeEnumMap[instance.type],
  'id': instance.id,
  'timestamp': instance.timestamp,
  'is_new': instance.isNew,
  'is_pushed': instance.isPushed,
  'profile': instance.profile?.toJson(),
  'status': _$ProfileFriendNotificationStatusEnumMap[instance.status],
  'by_profile': instance.byProfile?.toJson(),
};

const _$ProfileFriendNotificationStatusEnumMap = {
  ProfileFriendNotificationStatus.request: 'REQUEST',
  ProfileFriendNotificationStatus.accept: 'ACCEPT',
};

ProfileArticleNotification _$ProfileArticleNotificationFromJson(
  Map<String, dynamic> json,
) => ProfileArticleNotification(
  type: $enumDecodeNullable(_$ProfileNotificationTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isNew: json['is_new'] as bool?,
  isPushed: json['is_pushed'] as bool?,
  jsonId: (json['@id'] as num?)?.toInt(),
  article: (json['article'] as num?)?.toInt(),
  profile: json['profile'] == null
      ? null
      : Profile.fromJson(json['profile'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileArticleNotificationToJson(
  ProfileArticleNotification instance,
) => <String, dynamic>{
  'type': _$ProfileNotificationTypeEnumMap[instance.type],
  'id': instance.id,
  'timestamp': instance.timestamp,
  'is_new': instance.isNew,
  'is_pushed': instance.isPushed,
  '@id': instance.jsonId,
  'article': instance.article,
  'profile': instance.profile?.toJson(),
};

ProfileRelatedReleaseNotification _$ProfileRelatedReleaseNotificationFromJson(
  Map<String, dynamic> json,
) => ProfileRelatedReleaseNotification(
  type: $enumDecodeNullable(_$ProfileNotificationTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isNew: json['is_new'] as bool?,
  isPushed: json['is_pushed'] as bool?,
  jsonId: (json['@id'] as num?)?.toInt(),
  release: json['release'] == null
      ? null
      : EntityReference<Release>.fromJson(
          json['release'] as Object,
          (value) => Release.fromJson(value as Map<String, dynamic>),
        ),
);

Map<String, dynamic> _$ProfileRelatedReleaseNotificationToJson(
  ProfileRelatedReleaseNotification instance,
) => <String, dynamic>{
  'type': _$ProfileNotificationTypeEnumMap[instance.type],
  'id': instance.id,
  'timestamp': instance.timestamp,
  'is_new': instance.isNew,
  'is_pushed': instance.isPushed,
  '@id': instance.jsonId,
  'release': instance.release?.toJson((value) => value.toJson()),
};

ProfileEpisodeNotification _$ProfileEpisodeNotificationFromJson(
  Map<String, dynamic> json,
) => ProfileEpisodeNotification(
  type: $enumDecodeNullable(_$ProfileNotificationTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isNew: json['is_new'] as bool?,
  isPushed: json['is_pushed'] as bool?,
  episode: json['episode'] == null
      ? null
      : EpisodeCompact.fromJson(json['episode'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileEpisodeNotificationToJson(
  ProfileEpisodeNotification instance,
) => <String, dynamic>{
  'type': _$ProfileNotificationTypeEnumMap[instance.type],
  'id': instance.id,
  'timestamp': instance.timestamp,
  'is_new': instance.isNew,
  'is_pushed': instance.isPushed,
  'episode': instance.episode?.toJson(),
};

ProfileTypeNotificationPreference _$ProfileTypeNotificationPreferenceFromJson(
  Map<String, dynamic> json,
) => ProfileTypeNotificationPreference(
  type: json['type'] == null
      ? null
      : Dubber.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileTypeNotificationPreferenceToJson(
  ProfileTypeNotificationPreference instance,
) => <String, dynamic>{'type': instance.type?.toJson()};

ProfileStatusNotificationPreference
_$ProfileStatusNotificationPreferenceFromJson(Map<String, dynamic> json) =>
    ProfileStatusNotificationPreference(
      status: $enumDecodeNullable(
        _$ProfileStatusNotificationPreferenceStatusEnumMap,
        json['status'],
      ),
    );

Map<String, dynamic> _$ProfileStatusNotificationPreferenceToJson(
  ProfileStatusNotificationPreference instance,
) => <String, dynamic>{
  'status': _$ProfileStatusNotificationPreferenceStatusEnumMap[instance.status],
};

const _$ProfileStatusNotificationPreferenceStatusEnumMap = {
  ProfileStatusNotificationPreferenceStatus.favoriteStatus: 'FAVORITE_STATUS',
  ProfileStatusNotificationPreferenceStatus.statusWatching: 'STATUS_WATCHING',
  ProfileStatusNotificationPreferenceStatus.statusPlan: 'STATUS_PLAN',
  ProfileStatusNotificationPreferenceStatus.statusCompleted: 'STATUS_COMPLETED',
  ProfileStatusNotificationPreferenceStatus.statusHoldOn: 'STATUS_HOLD_ON',
  ProfileStatusNotificationPreferenceStatus.statusDropped: 'STATUS_DROPPED',
};

ReleaseTypeNotificationEditRequest _$ReleaseTypeNotificationEditRequestFromJson(
  Map<String, dynamic> json,
) => ReleaseTypeNotificationEditRequest(
  releaseId: (json['release_id'] as num).toInt(),
  profileReleaseTypeNotificationPreferences:
      (json['profile_release_type_notification_preferences'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
);

Map<String, dynamic> _$ReleaseTypeNotificationEditRequestToJson(
  ReleaseTypeNotificationEditRequest instance,
) => <String, dynamic>{
  'release_id': instance.releaseId,
  'profile_release_type_notification_preferences':
      instance.profileReleaseTypeNotificationPreferences,
};

StatusNotificationEditRequest _$StatusNotificationEditRequestFromJson(
  Map<String, dynamic> json,
) => StatusNotificationEditRequest(
  profileStatusNotificationPreferences:
      (json['profileStatusNotificationPreferences'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
);

Map<String, dynamic> _$StatusNotificationEditRequestToJson(
  StatusNotificationEditRequest instance,
) => <String, dynamic>{
  'profileStatusNotificationPreferences':
      instance.profileStatusNotificationPreferences,
};

ProfileTypeNotificationEditRequest _$ProfileTypeNotificationEditRequestFromJson(
  Map<String, dynamic> json,
) => ProfileTypeNotificationEditRequest(
  profileTypeNotificationPreferences:
      (json['profileTypeNotificationPreferences'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
);

Map<String, dynamic> _$ProfileTypeNotificationEditRequestToJson(
  ProfileTypeNotificationEditRequest instance,
) => <String, dynamic>{
  'profileTypeNotificationPreferences':
      instance.profileTypeNotificationPreferences,
};

NotificationPreferenceResponse _$NotificationPreferenceResponseFromJson(
  Map<String, dynamic> json,
) => NotificationPreferenceResponse(
  code: (json['code'] as num).toInt(),
  profileStatusNotificationPreferences:
      (json['profileStatusNotificationPreferences'] as List<dynamic>?)
          ?.map(
            (e) => ProfileStatusNotificationPreference.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  profileTypeNotificationPreferences:
      (json['profileTypeNotificationPreferences'] as List<dynamic>?)
          ?.map(
            (e) => ProfileTypeNotificationPreference.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
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
);

Map<String, dynamic> _$NotificationPreferenceResponseToJson(
  NotificationPreferenceResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'profileStatusNotificationPreferences': instance
      .profileStatusNotificationPreferences
      ?.map((e) => e.toJson())
      .toList(),
  'profileTypeNotificationPreferences': instance
      .profileTypeNotificationPreferences
      ?.map((e) => e.toJson())
      .toList(),
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
};

ReleaseTypeNotificationResponse _$ReleaseTypeNotificationResponseFromJson(
  Map<String, dynamic> json,
) => ReleaseTypeNotificationResponse(
  code: (json['code'] as num).toInt(),
  profileReleaseTypeNotificationPreferences:
      (json['profile_release_type_notification_preferences'] as List<dynamic>?)
          ?.map(
            (e) => ProfileReleaseTypeNotificationPreference.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$ReleaseTypeNotificationResponseToJson(
  ReleaseTypeNotificationResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'profile_release_type_notification_preferences': instance
      .profileReleaseTypeNotificationPreferences
      ?.map((e) => e.toJson())
      .toList(),
};
