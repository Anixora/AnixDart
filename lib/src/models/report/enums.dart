import 'package:json_annotation/json_annotation.dart';

enum ReportType {
  @JsonValue("article")
  article("article", "Article"),
  @JsonValue("comment/article")
  articleComment("comment/article", "ArticleComment"),
  @JsonValue("channel")
  channel("channel", "Channel"),
  @JsonValue("collection")
  collection("collection", "Collection"),
  @JsonValue("comment/collection")
  collectionComment("comment/collection", "CollectionComment"),
  @JsonValue("episode")
  episode("episode", "Episode"),
  @JsonValue("profile")
  profile("profile", "Profile"),
  @JsonValue("release")
  release("release", "Release"),
  @JsonValue("comment/release")
  releaseComment("comment/release", "ReleaseComment");

  const ReportType(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum ReportResult {
  @JsonValue(2)
  entityNotFound(2, "EntityNotFound"),
  @JsonValue(3)
  invalidMessage(3, "InvalidMessage"),
  @JsonValue(4)
  reasonNotFound(4, "ReasonNotFound");

  const ReportResult(this.value, this.codeName);
  final int value;
  final String codeName;
}
