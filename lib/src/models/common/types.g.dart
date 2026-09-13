// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) =>
    ApiResponse(code: (json['code'] as num).toInt());

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{'code': instance.code};

PageableResponse<T> _$PageableResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => PageableResponse<T>(
  code: (json['code'] as num).toInt(),
  content: (json['content'] as List<dynamic>?)?.map(fromJsonT).toList(),
  totalCount: (json['total_count'] as num?)?.toInt(),
  totalPageCount: (json['total_page_count'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
);

Map<String, dynamic> _$PageableResponseToJson<T>(
  PageableResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'code': instance.code,
  'content': instance.content?.map(toJsonT).toList(),
  'total_count': instance.totalCount,
  'total_page_count': instance.totalPageCount,
  'current_page': instance.currentPage,
};

CommonComment<T> _$CommonCommentFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => CommonComment<T>(
  id: (json['id'] as num).toInt(),
  message: json['message'] as String?,
  timestamp: (json['timestamp'] as num?)?.toInt(),
  type: (json['type'] as num?)?.toInt(),
  vote: (json['vote'] as num?)?.toInt(),
  profile: _$nullableGenericFromJson(json['profile'], fromJsonT),
  parentCommentId: (json['parent_comment_id'] as num?)?.toInt(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  likesCount: (json['likes_count'] as num?)?.toInt(),
  isSpoiler: json['is_spoiler'] as bool?,
  isEdited: json['is_edited'] as bool?,
  isDeleted: json['is_deleted'] as bool?,
  isReply: json['is_reply'] as bool?,
  replyCount: (json['reply_count'] as num?)?.toInt(),
  canLike: json['can_like'] as bool?,
);

Map<String, dynamic> _$CommonCommentToJson<T>(
  CommonComment<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'id': instance.id,
  'message': instance.message,
  'timestamp': instance.timestamp,
  'type': instance.type,
  'vote': instance.vote,
  'profile': _$nullableGenericToJson(instance.profile, toJsonT),
  'parent_comment_id': instance.parentCommentId,
  'vote_count': instance.voteCount,
  'likes_count': instance.likesCount,
  'is_spoiler': instance.isSpoiler,
  'is_edited': instance.isEdited,
  'is_deleted': instance.isDeleted,
  'is_reply': instance.isReply,
  'reply_count': instance.replyCount,
  'can_like': instance.canLike,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

CommonCommentCompact _$CommonCommentCompactFromJson(
  Map<String, dynamic> json,
) => CommonCommentCompact(
  id: (json['id'] as num).toInt(),
  profile: json['profile'] == null
      ? null
      : ProfileSlim.fromJson(json['profile'] as Map<String, dynamic>),
  message: json['message'] as String?,
  isSpoiler: json['is_spoiler'] as bool?,
);

Map<String, dynamic> _$CommonCommentCompactToJson(
  CommonCommentCompact instance,
) => <String, dynamic>{
  'id': instance.id,
  'profile': instance.profile?.toJson(),
  'message': instance.message,
  'is_spoiler': instance.isSpoiler,
};

CommonProfileNotification _$CommonProfileNotificationFromJson(
  Map<String, dynamic> json,
) => CommonProfileNotification(
  type: $enumDecodeNullable(_$ProfileNotificationTypeEnumMap, json['type']),
  id: (json['id'] as num).toInt(),
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isNew: json['is_new'] as bool?,
  isPushed: json['is_pushed'] as bool?,
);

Map<String, dynamic> _$CommonProfileNotificationToJson(
  CommonProfileNotification instance,
) => <String, dynamic>{
  'type': _$ProfileNotificationTypeEnumMap[instance.type],
  'id': instance.id,
  'timestamp': instance.timestamp,
  'is_new': instance.isNew,
  'is_pushed': instance.isPushed,
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

CommonCommentEditRequest _$CommonCommentEditRequestFromJson(
  Map<String, dynamic> json,
) => CommonCommentEditRequest(
  message: json['message'] as String,
  spoiler: json['spoiler'] as bool,
);

Map<String, dynamic> _$CommonCommentEditRequestToJson(
  CommonCommentEditRequest instance,
) => <String, dynamic>{
  'message': instance.message,
  'spoiler': instance.spoiler,
};

CommonCommentAddRequest _$CommonCommentAddRequestFromJson(
  Map<String, dynamic> json,
) => CommonCommentAddRequest(
  message: json['message'] as String,
  spoiler: json['spoiler'] as bool,
  parentCommentId: (json['parentCommentId'] as num?)?.toInt(),
  replyToProfileId: (json['replyToProfileId'] as num?)?.toInt(),
);

Map<String, dynamic> _$CommonCommentAddRequestToJson(
  CommonCommentAddRequest instance,
) => <String, dynamic>{
  'message': instance.message,
  'spoiler': instance.spoiler,
  'parentCommentId': ?instance.parentCommentId,
  'replyToProfileId': ?instance.replyToProfileId,
};

CommonCommentAddResponse<T> _$CommonCommentAddResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => CommonCommentAddResponse<T>(
  code: (json['code'] as num).toInt(),
  comment: _$nullableGenericFromJson(json['comment'], fromJsonT),
);

Map<String, dynamic> _$CommonCommentAddResponseToJson<T>(
  CommonCommentAddResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'code': instance.code,
  'comment': _$nullableGenericToJson(instance.comment, toJsonT),
};
