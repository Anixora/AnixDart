import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Collection {
  const Collection({
    this.jsonId,
    required this.id,
    this.creator,
    this.title,
    this.description,
    this.image,
    this.creationDate,
    this.lastUpdateDate,
    this.commentCount,
    this.favoritesCount,
    this.isPrivate,
    this.isDeleted,
    this.isFavorite,
    this.releases,
  });

  @JsonKey(name: '@id')
  final int? jsonId;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'creator')
  final Profile? creator;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'creation_date')
  final int? creationDate;

  @JsonKey(name: 'last_update_date')
  final int? lastUpdateDate;

  @JsonKey(name: 'comment_count')
  final int? commentCount;

  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  @JsonKey(name: 'is_private')
  final bool? isPrivate;

  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;

  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;

  @JsonKey(name: 'releases')
  final List<Release>? releases;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CollectionResponse {
  const CollectionResponse({
    required this.code,
    this.collection,
    this.watchingCount,
    this.planCount,
    this.completedCount,
    this.holdOnCount,
    this.droppedCount,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'collection')
  final Collection? collection;

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

  factory CollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$CollectionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CollectionComment {
  const CollectionComment({
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
    this.collection,
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

  @JsonKey(name: 'collection')
  final EntityReference<Collection>? collection;

  factory CollectionComment.fromJson(Map<String, dynamic> json) =>
      _$CollectionCommentFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionCommentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CollectionCommentCompact {
  const CollectionCommentCompact({
    required this.id,
    this.profile,
    this.message,
    this.isSpoiler,
    this.collection,
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

  @JsonKey(name: 'collection')
  final CollectionCompact? collection;

  @JsonKey(name: 'embeddableId')
  final int? embeddableId;

  @JsonKey(name: 'embeddableTitle')
  final String? embeddableTitle;

  factory CollectionCommentCompact.fromJson(Map<String, dynamic> json) =>
      _$CollectionCommentCompactFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionCommentCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CollectionCompact {
  const CollectionCompact({required this.id, this.title, this.image});

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'image')
  final String? image;

  factory CollectionCompact.fromJson(Map<String, dynamic> json) =>
      _$CollectionCompactFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CollectionCreateEditRequest {
  const CollectionCreateEditRequest({
    required this.title,
    required this.description,
    required this.isPrivate,
    required this.releases,
  });

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'is_private')
  final bool isPrivate;

  @JsonKey(name: 'releases')
  final List<int> releases;

  factory CollectionCreateEditRequest.fromJson(Map<String, dynamic> json) =>
      _$CollectionCreateEditRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionCreateEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CollectionCreateEditResponse {
  const CollectionCreateEditResponse({required this.code, this.collection});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'collection')
  final Collection? collection;

  factory CollectionCreateEditResponse.fromJson(Map<String, dynamic> json) =>
      _$CollectionCreateEditResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionCreateEditResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CollectionEditImageResponse {
  const CollectionEditImageResponse({required this.code, this.url});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'url')
  final String? url;

  factory CollectionEditImageResponse.fromJson(Map<String, dynamic> json) =>
      _$CollectionEditImageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionEditImageResponseToJson(this);
}
