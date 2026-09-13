import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class NotificationCountResponse {
  const NotificationCountResponse({required this.code, this.count});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'count')
  final int? count;

  factory NotificationCountResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationCountResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationCountResponseToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  genericArgumentFactories: true,
)
final class ProfileCommentNotification<T> {
  const ProfileCommentNotification({
    this.type,
    required this.id,
    this.timestamp,
    this.isNew,
    this.isPushed,
    this.comment,
    this.parentComment,
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

  @JsonKey(name: 'comment')
  final T? comment;

  @JsonKey(name: 'parent_comment')
  final T? parentComment;

  factory ProfileCommentNotification.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ProfileCommentNotificationFromJson<T>(json, fromJsonT);
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$ProfileCommentNotificationToJson<T>(this, toJsonT);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileFriendNotification {
  const ProfileFriendNotification({
    this.type,
    required this.id,
    this.timestamp,
    this.isNew,
    this.isPushed,
    this.profile,
    this.status,
    this.byProfile,
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

  @JsonKey(name: 'profile')
  final Profile? profile;

  @JsonKey(name: 'status')
  final ProfileFriendNotificationStatus? status;

  @JsonKey(name: 'by_profile')
  final ProfileSlim? byProfile;

  factory ProfileFriendNotification.fromJson(Map<String, dynamic> json) =>
      _$ProfileFriendNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileFriendNotificationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileArticleNotification {
  const ProfileArticleNotification({
    this.type,
    required this.id,
    this.timestamp,
    this.isNew,
    this.isPushed,
    this.jsonId,
    this.article,
    this.profile,
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

  @JsonKey(name: '@id')
  final int? jsonId;

  @JsonKey(name: 'article')
  final int? article;

  @JsonKey(name: 'profile')
  final Profile? profile;

  factory ProfileArticleNotification.fromJson(Map<String, dynamic> json) =>
      _$ProfileArticleNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileArticleNotificationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileRelatedReleaseNotification {
  const ProfileRelatedReleaseNotification({
    this.type,
    required this.id,
    this.timestamp,
    this.isNew,
    this.isPushed,
    this.jsonId,
    this.release,
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

  @JsonKey(name: '@id')
  final int? jsonId;

  @JsonKey(name: 'release')
  final EntityReference<Release>? release;

  factory ProfileRelatedReleaseNotification.fromJson(
    Map<String, dynamic> json,
  ) => _$ProfileRelatedReleaseNotificationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ProfileRelatedReleaseNotificationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileEpisodeNotification {
  const ProfileEpisodeNotification({
    this.type,
    required this.id,
    this.timestamp,
    this.isNew,
    this.isPushed,
    this.episode,
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

  @JsonKey(name: 'episode')
  final EpisodeCompact? episode;

  factory ProfileEpisodeNotification.fromJson(Map<String, dynamic> json) =>
      _$ProfileEpisodeNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileEpisodeNotificationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileTypeNotificationPreference {
  const ProfileTypeNotificationPreference({this.type});

  @JsonKey(name: 'type')
  final Dubber? type;

  factory ProfileTypeNotificationPreference.fromJson(
    Map<String, dynamic> json,
  ) => _$ProfileTypeNotificationPreferenceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ProfileTypeNotificationPreferenceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileStatusNotificationPreference {
  const ProfileStatusNotificationPreference({this.status});

  @JsonKey(name: 'status')
  final ProfileStatusNotificationPreferenceStatus? status;

  factory ProfileStatusNotificationPreference.fromJson(
    Map<String, dynamic> json,
  ) => _$ProfileStatusNotificationPreferenceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ProfileStatusNotificationPreferenceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseTypeNotificationEditRequest {
  const ReleaseTypeNotificationEditRequest({
    required this.releaseId,
    required this.profileReleaseTypeNotificationPreferences,
  });

  @JsonKey(name: 'release_id')
  final int releaseId;

  @JsonKey(name: 'profile_release_type_notification_preferences')
  final List<int> profileReleaseTypeNotificationPreferences;

  factory ReleaseTypeNotificationEditRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ReleaseTypeNotificationEditRequestFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ReleaseTypeNotificationEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class StatusNotificationEditRequest {
  const StatusNotificationEditRequest({
    required this.profileStatusNotificationPreferences,
  });

  @JsonKey(name: 'profileStatusNotificationPreferences')
  final List<int> profileStatusNotificationPreferences;

  factory StatusNotificationEditRequest.fromJson(Map<String, dynamic> json) =>
      _$StatusNotificationEditRequestFromJson(json);
  Map<String, dynamic> toJson() => _$StatusNotificationEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ProfileTypeNotificationEditRequest {
  const ProfileTypeNotificationEditRequest({
    required this.profileTypeNotificationPreferences,
  });

  @JsonKey(name: 'profileTypeNotificationPreferences')
  final List<int> profileTypeNotificationPreferences;

  factory ProfileTypeNotificationEditRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ProfileTypeNotificationEditRequestFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ProfileTypeNotificationEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class NotificationPreferenceResponse {
  const NotificationPreferenceResponse({
    required this.code,
    this.profileStatusNotificationPreferences,
    this.profileTypeNotificationPreferences,
    this.isReleaseTypeNotificationsEnabled,
    this.isEpisodeNotificationsEnabled,
    this.isFirstEpisodeNotificationEnabled,
    this.isRelatedReleaseNotificationsEnabled,
    this.isReportProcessNotificationsEnabled,
    this.isCommentNotificationsEnabled,
    this.isMyCollectionCommentNotificationsEnabled,
    this.isArticleNotificationsEnabled,
    this.isMyArticleCommentNotificationsEnabled,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profileStatusNotificationPreferences')
  final List<ProfileStatusNotificationPreference>?
  profileStatusNotificationPreferences;

  @JsonKey(name: 'profileTypeNotificationPreferences')
  final List<ProfileTypeNotificationPreference>?
  profileTypeNotificationPreferences;

  @JsonKey(name: 'is_release_type_notifications_enabled')
  final bool? isReleaseTypeNotificationsEnabled;

  @JsonKey(name: 'is_episode_notifications_enabled')
  final bool? isEpisodeNotificationsEnabled;

  @JsonKey(name: 'is_first_episode_notification_enabled')
  final bool? isFirstEpisodeNotificationEnabled;

  @JsonKey(name: 'is_related_release_notifications_enabled')
  final bool? isRelatedReleaseNotificationsEnabled;

  @JsonKey(name: 'is_report_process_notifications_enabled')
  final bool? isReportProcessNotificationsEnabled;

  @JsonKey(name: 'is_comment_notifications_enabled')
  final bool? isCommentNotificationsEnabled;

  @JsonKey(name: 'is_my_collection_comment_notifications_enabled')
  final bool? isMyCollectionCommentNotificationsEnabled;

  @JsonKey(name: 'is_article_notifications_enabled')
  final bool? isArticleNotificationsEnabled;

  @JsonKey(name: 'is_my_article_comment_notifications_enabled')
  final bool? isMyArticleCommentNotificationsEnabled;

  factory NotificationPreferenceResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationPreferenceResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ReleaseTypeNotificationResponse {
  const ReleaseTypeNotificationResponse({
    required this.code,
    this.profileReleaseTypeNotificationPreferences,
  });

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'profile_release_type_notification_preferences')
  final List<ProfileReleaseTypeNotificationPreference>?
  profileReleaseTypeNotificationPreferences;

  factory ReleaseTypeNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$ReleaseTypeNotificationResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ReleaseTypeNotificationResponseToJson(this);
}
