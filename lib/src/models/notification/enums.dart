import 'package:json_annotation/json_annotation.dart';

enum DeleteNotificationType {
  @JsonValue("article/comment")
  articleComment("article/comment", "ArticleComment"),
  @JsonValue("collectionComment")
  collectionComment("collectionComment", "CollectionComment"),
  @JsonValue("episode")
  episode("episode", "Episode"),
  @JsonValue("friend")
  friend("friend", "Friend"),
  @JsonValue("my/article/comment")
  myArticleComment("my/article/comment", "MyArticleComment"),
  @JsonValue("my/collection/comment")
  myCollectionComment("my/collection/comment", "MyCollectionComment"),
  @JsonValue("related/release")
  relatedRelease("related/release", "RelatedRelease"),
  @JsonValue("releaseComment")
  releaseComment("releaseComment", "ReleaseComment");

  const DeleteNotificationType(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum NotificationPreferenceEditType {
  @JsonValue("article")
  article("article", "Article"),
  @JsonValue("comment")
  comment("comment", "Comment"),
  @JsonValue("episode")
  episode("episode", "Episode"),
  @JsonValue("episode/first")
  firstEpisode("episode/first", "FirstEpisode"),
  @JsonValue("my/article/comment")
  myArticleComment("my/article/comment", "MyArticleComment"),
  @JsonValue("my/collection/comment")
  myCollectionComment("my/collection/comment", "MyCollectionComment"),
  @JsonValue("related/release")
  relatedRelease("related/release", "RelatedRelease"),
  @JsonValue("report/process")
  reportProcess("report/process", "ReportProcess"),
  @JsonValue("selected/releases")
  selectedReleases("selected/releases", "SelectedReleases");

  const NotificationPreferenceEditType(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum ProfileFriendNotificationStatus {
  @JsonValue("REQUEST")
  request("REQUEST", "Request"),
  @JsonValue("ACCEPT")
  accept("ACCEPT", "Accept");

  const ProfileFriendNotificationStatus(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum ProfileNotificationType {
  @JsonValue("friend")
  friend("friend", "friend"),
  @JsonValue("episode")
  episode("episode", "episode"),
  @JsonValue("releaseComment")
  releaseComment("releaseComment", "releaseComment"),
  @JsonValue("collectionComment")
  collectionComment("collectionComment", "collectionComment"),
  @JsonValue("myCollection")
  myCollection("myCollection", "myCollection"),
  @JsonValue("article")
  article("article", "article"),
  @JsonValue("articleComment")
  articleComment("articleComment", "articleComment"),
  @JsonValue("myArticle")
  myArticle("myArticle", "myArticle"),
  @JsonValue("relatedRelease")
  relatedRelease("relatedRelease", "relatedRelease");

  const ProfileNotificationType(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum ProfileStatusNotificationPreferenceStatus {
  @JsonValue("FAVORITE_STATUS")
  favoriteStatus("FAVORITE_STATUS", "favoriteStatus"),
  @JsonValue("STATUS_WATCHING")
  statusWatching("STATUS_WATCHING", "statusWatching"),
  @JsonValue("STATUS_PLAN")
  statusPlan("STATUS_PLAN", "statusPlan"),
  @JsonValue("STATUS_COMPLETED")
  statusCompleted("STATUS_COMPLETED", "statusCompleted"),
  @JsonValue("STATUS_HOLD_ON")
  statusHoldOn("STATUS_HOLD_ON", "statusHoldOn"),
  @JsonValue("STATUS_DROPPED")
  statusDropped("STATUS_DROPPED", "statusDropped");

  const ProfileStatusNotificationPreferenceStatus(this.value, this.codeName);
  final String value;
  final String codeName;
}
