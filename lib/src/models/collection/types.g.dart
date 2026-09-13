// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection _$CollectionFromJson(Map<String, dynamic> json) => Collection(
  jsonId: (json['@id'] as num?)?.toInt(),
  id: (json['id'] as num).toInt(),
  creator: json['creator'] == null
      ? null
      : Profile.fromJson(json['creator'] as Map<String, dynamic>),
  title: json['title'] as String?,
  description: json['description'] as String?,
  image: json['image'] as String?,
  creationDate: (json['creation_date'] as num?)?.toInt(),
  lastUpdateDate: (json['last_update_date'] as num?)?.toInt(),
  commentCount: (json['comment_count'] as num?)?.toInt(),
  favoritesCount: (json['favorites_count'] as num?)?.toInt(),
  isPrivate: json['is_private'] as bool?,
  isDeleted: json['is_deleted'] as bool?,
  isFavorite: json['is_favorite'] as bool?,
  releases: (json['releases'] as List<dynamic>?)
      ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      '@id': instance.jsonId,
      'id': instance.id,
      'creator': instance.creator?.toJson(),
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'creation_date': instance.creationDate,
      'last_update_date': instance.lastUpdateDate,
      'comment_count': instance.commentCount,
      'favorites_count': instance.favoritesCount,
      'is_private': instance.isPrivate,
      'is_deleted': instance.isDeleted,
      'is_favorite': instance.isFavorite,
      'releases': instance.releases?.map((e) => e.toJson()).toList(),
    };

CollectionResponse _$CollectionResponseFromJson(Map<String, dynamic> json) =>
    CollectionResponse(
      code: (json['code'] as num).toInt(),
      collection: json['collection'] == null
          ? null
          : Collection.fromJson(json['collection'] as Map<String, dynamic>),
      watchingCount: (json['watching_count'] as num?)?.toInt(),
      planCount: (json['plan_count'] as num?)?.toInt(),
      completedCount: (json['completed_count'] as num?)?.toInt(),
      holdOnCount: (json['hold_on_count'] as num?)?.toInt(),
      droppedCount: (json['dropped_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CollectionResponseToJson(CollectionResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'collection': instance.collection?.toJson(),
      'watching_count': instance.watchingCount,
      'plan_count': instance.planCount,
      'completed_count': instance.completedCount,
      'hold_on_count': instance.holdOnCount,
      'dropped_count': instance.droppedCount,
    };

CollectionComment _$CollectionCommentFromJson(Map<String, dynamic> json) =>
    CollectionComment(
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
      collection: json['collection'] == null
          ? null
          : EntityReference<Collection>.fromJson(
              json['collection'] as Object,
              (value) => Collection.fromJson(value as Map<String, dynamic>),
            ),
    );

Map<String, dynamic> _$CollectionCommentToJson(CollectionComment instance) =>
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
      'collection': instance.collection?.toJson((value) => value.toJson()),
    };

CollectionCommentCompact _$CollectionCommentCompactFromJson(
  Map<String, dynamic> json,
) => CollectionCommentCompact(
  id: (json['id'] as num).toInt(),
  profile: json['profile'] == null
      ? null
      : ProfileSlim.fromJson(json['profile'] as Map<String, dynamic>),
  message: json['message'] as String?,
  isSpoiler: json['is_spoiler'] as bool?,
  collection: json['collection'] == null
      ? null
      : CollectionCompact.fromJson(json['collection'] as Map<String, dynamic>),
  embeddableId: (json['embeddableId'] as num?)?.toInt(),
  embeddableTitle: json['embeddableTitle'] as String?,
);

Map<String, dynamic> _$CollectionCommentCompactToJson(
  CollectionCommentCompact instance,
) => <String, dynamic>{
  'id': instance.id,
  'profile': instance.profile?.toJson(),
  'message': instance.message,
  'is_spoiler': instance.isSpoiler,
  'collection': instance.collection?.toJson(),
  'embeddableId': instance.embeddableId,
  'embeddableTitle': instance.embeddableTitle,
};

CollectionCompact _$CollectionCompactFromJson(Map<String, dynamic> json) =>
    CollectionCompact(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CollectionCompactToJson(CollectionCompact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

CollectionCreateEditRequest _$CollectionCreateEditRequestFromJson(
  Map<String, dynamic> json,
) => CollectionCreateEditRequest(
  title: json['title'] as String,
  description: json['description'] as String,
  isPrivate: json['is_private'] as bool,
  releases: (json['releases'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$CollectionCreateEditRequestToJson(
  CollectionCreateEditRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'is_private': instance.isPrivate,
  'releases': instance.releases,
};

CollectionCreateEditResponse _$CollectionCreateEditResponseFromJson(
  Map<String, dynamic> json,
) => CollectionCreateEditResponse(
  code: (json['code'] as num).toInt(),
  collection: json['collection'] == null
      ? null
      : Collection.fromJson(json['collection'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectionCreateEditResponseToJson(
  CollectionCreateEditResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'collection': instance.collection?.toJson(),
};

CollectionEditImageResponse _$CollectionEditImageResponseFromJson(
  Map<String, dynamic> json,
) => CollectionEditImageResponse(
  code: (json['code'] as num).toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$CollectionEditImageResponseToJson(
  CollectionEditImageResponse instance,
) => <String, dynamic>{'code': instance.code, 'url': instance.url};
