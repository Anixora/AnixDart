import 'package:json_annotation/json_annotation.dart';

enum ArticleResult {
  @JsonValue(2)
  articleDeleted(2, "ArticleDeleted");

  const ArticleResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ArticleCreateEditResult {
  @JsonValue(2)
  invalidRepostArticle(2, "InvalidRepostArticle"),
  @JsonValue(3)
  invalidPayload(3, "InvalidPayload"),
  @JsonValue(4)
  invalidTags(4, "InvalidTags"),
  @JsonValue(5)
  temporarilyDisabled(5, "TemporarilyDisabled"),
  @JsonValue(6)
  articleLimitReached(6, "ArticleLimitReached"),
  @JsonValue(7)
  channelNotFound(7, "ChannelNotFound"),
  @JsonValue(8)
  channelNotOwned(8, "ChannelNotOwned"),
  @JsonValue(9)
  channelCreatorBanned(9, "ChannelCreatorBanned"),
  @JsonValue(10)
  channelBlocked(10, "ChannelBlocked"),
  @JsonValue(11)
  articleNotFound(11, "ArticleNotFound"),
  @JsonValue(12)
  articleDeleted(12, "ArticleDeleted"),
  @JsonValue(13)
  blogNotCreated(13, "BlogNotCreated");

  const ArticleCreateEditResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ArticleDeleteResult {
  @JsonValue(2)
  articleNotFound(2, "ArticleNotFound"),
  @JsonValue(3)
  articleNotOwned(3, "ArticleNotOwned"),
  @JsonValue(4)
  articleDeleted(4, "ArticleDeleted");

  const ArticleDeleteResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ArticleEditPinnedResult {
  @JsonValue(2)
  channelNotFound(2, "ChannelNotFound"),
  @JsonValue(3)
  channelNotOwned(3, "ChannelNotOwned"),
  @JsonValue(4)
  articleNotFound(4, "ArticleNotFound"),
  @JsonValue(5)
  articleDeleted(5, "ArticleDeleted");

  const ArticleEditPinnedResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ArticleMuteResult {
  @JsonValue(2)
  articleNotFound(2, "ArticleNotFound"),
  @JsonValue(3)
  channelNotFound(3, "ChannelNotFound"),
  @JsonValue(4)
  channelOwned(4, "ChannelOwned");

  const ArticleMuteResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ArticleSuggestionDeleteResult {
  @JsonValue(2)
  articleSuggestionNotFound(2, "ArticleSuggestionNotFound"),
  @JsonValue(3)
  articleSuggestionNotOwned(3, "ArticleSuggestionNotOwned");

  const ArticleSuggestionDeleteResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ArticleEventEntryPoint {
  @JsonValue("unknown")
  unknown("unknown", "Unknown"),
  @JsonValue("article")
  article("article", "Article"),
  @JsonValue("channel")
  channel("channel", "Channel"),
  @JsonValue("feed")
  feed("feed", "Feed"),
  @JsonValue("latest")
  latest("latest", "Latest"),
  @JsonValue("search")
  search("search", "Search");

  const ArticleEventEntryPoint(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum ArticleEventType {
  @JsonValue("view")
  view("view", "View"),
  @JsonValue("open")
  open("open", "Open"),
  @JsonValue("read")
  read("read", "Read");

  const ArticleEventType(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum EmbedType {
  @JsonValue("youtube")
  youtube("youtube", "youtube"),
  @JsonValue("vk")
  vk("vk", "vk"),
  @JsonValue("link")
  link("link", "link");

  const EmbedType(this.value, this.codeName);
  final String value;
  final String codeName;
}
