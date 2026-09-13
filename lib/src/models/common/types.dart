import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ApiResponse {
  const ApiResponse({required this.code});

  @JsonKey(name: 'code')
  final int code;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  genericArgumentFactories: true,
)
final class PageableResponse<T> {
  const PageableResponse({
    required this.code,
    this.content,
    this.totalCount,
    this.totalPageCount,
    this.currentPage,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'content')
  final List<T>? content;

  @JsonKey(name: 'total_count')
  final int? totalCount;

  @JsonKey(name: 'total_page_count')
  final int? totalPageCount;

  @JsonKey(name: 'current_page')
  final int? currentPage;

  factory PageableResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$PageableResponseFromJson<T>(json, fromJsonT);
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$PageableResponseToJson<T>(this, toJsonT);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  genericArgumentFactories: true,
)
final class CommonComment<T> {
  const CommonComment({
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
  final T? profile;

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

  factory CommonComment.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$CommonCommentFromJson<T>(json, fromJsonT);
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$CommonCommentToJson<T>(this, toJsonT);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CommonCommentCompact {
  const CommonCommentCompact({
    required this.id,
    this.profile,
    this.message,
    this.isSpoiler,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'profile')
  final ProfileSlim? profile;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'is_spoiler')
  final bool? isSpoiler;

  factory CommonCommentCompact.fromJson(Map<String, dynamic> json) =>
      _$CommonCommentCompactFromJson(json);
  Map<String, dynamic> toJson() => _$CommonCommentCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CommonProfileNotification {
  const CommonProfileNotification({
    this.type,
    required this.id,
    this.timestamp,
    this.isNew,
    this.isPushed,
  });

  @JsonKey(name: 'type')
  final ProfileNotificationType? type;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  @JsonKey(name: 'is_new')
  final bool? isNew;

  @JsonKey(name: 'is_pushed')
  final bool? isPushed;

  factory CommonProfileNotification.fromJson(Map<String, dynamic> json) =>
      _$CommonProfileNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$CommonProfileNotificationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CommonCommentEditRequest {
  const CommonCommentEditRequest({
    required this.message,
    required this.spoiler,
  });

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'spoiler')
  final bool spoiler;

  factory CommonCommentEditRequest.fromJson(Map<String, dynamic> json) =>
      _$CommonCommentEditRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CommonCommentEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class CommonCommentAddRequest {
  const CommonCommentAddRequest({
    required this.message,
    required this.spoiler,
    this.parentCommentId,
    this.replyToProfileId,
  });

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'spoiler')
  final bool spoiler;

  @JsonKey(name: 'parentCommentId', includeIfNull: false)
  final int? parentCommentId;

  @JsonKey(name: 'replyToProfileId', includeIfNull: false)
  final int? replyToProfileId;

  factory CommonCommentAddRequest.fromJson(Map<String, dynamic> json) =>
      _$CommonCommentAddRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CommonCommentAddRequestToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  genericArgumentFactories: true,
)
final class CommonCommentAddResponse<T> {
  const CommonCommentAddResponse({required this.code, this.comment});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'comment')
  final T? comment;

  factory CommonCommentAddResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$CommonCommentAddResponseFromJson<T>(json, fromJsonT);
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$CommonCommentAddResponseToJson<T>(this, toJsonT);
}
