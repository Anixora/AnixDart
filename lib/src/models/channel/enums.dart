import 'package:json_annotation/json_annotation.dart';

enum ChannelWidgetSort {
  @JsonValue(0)
  chronology(0, "Chronology"),
  @JsonValue(1)
  popularity(1, "Popularity");

  const ChannelWidgetSort(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelWidgetPopularityPeriod {
  @JsonValue(0)
  hours24(0, "Hours24"),
  @JsonValue(1)
  days3(1, "Days3"),
  @JsonValue(2)
  days7(2, "Days7");

  const ChannelWidgetPopularityPeriod(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelProfilePermission {
  @JsonValue(0)
  member(0, "Member"),
  @JsonValue(1)
  administrator(1, "Administrator"),
  @JsonValue(2)
  creator(2, "Creator");

  const ChannelProfilePermission(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelUploadCoverAvatarResult {
  @JsonValue(2)
  channelNotFound(2, "ChannelNotFound"),
  @JsonValue(3)
  channelNotOwned(3, "ChannelNotOwned");

  const ChannelUploadCoverAvatarResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelBlockResult {
  @JsonValue(2)
  channelNotFound(2, "ChannelNotFound"),
  @JsonValue(3)
  channelNotOwned(3, "ChannelNotOwned"),
  @JsonValue(4)
  blockNotFound(4, "BlockNotFound");

  const ChannelBlockResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelResult {
  @JsonValue(2)
  channelNotFound(2, "ChannelNotFound");

  const ChannelResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelsFilterSort {
  @JsonValue(0)
  none(0, "None"),
  @JsonValue(1)
  subscriberCount(1, "SubscriberCount");

  const ChannelsFilterSort(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelCreateEditResult {
  @JsonValue(2)
  invalidTitle(2, "InvalidTitle"),
  @JsonValue(3)
  invalidDescription(3, "InvalidDescription"),
  @JsonValue(4)
  channelLimitReached(4, "ChannelLimitReached"),
  @JsonValue(5)
  channelNotFound(5, "ChannelNotFound"),
  @JsonValue(6)
  channelNotOwned(6, "ChannelNotOwned"),
  @JsonValue(7)
  channelCreatorBanned(7, "ChannelCreatorBanned");

  const ChannelCreateEditResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum BlogCreateResult {
  @JsonValue(2)
  reputationLevelTooLow(2, "ReputationLevelTooLow");

  const BlogCreateResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum EditorAvailableResult {
  @JsonValue(2)
  temporarilyDisabled(2, "TemporarilyDisabled"),
  @JsonValue(3)
  articleLimitReached(3, "ArticleLimitReached"),
  @JsonValue(4)
  channelNotFound(4, "ChannelNotFound"),
  @JsonValue(5)
  channelNotOwned(5, "ChannelNotOwned"),
  @JsonValue(6)
  channelCreatorBanned(6, "ChannelCreatorBanned"),
  @JsonValue(7)
  blogNotCreated(7, "BlogNotCreated");

  const EditorAvailableResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelPermissionManageResult {
  @JsonValue(2)
  permissionInvalid(2, "PermissionInvalid"),
  @JsonValue(3)
  targetProfileNotFound(3, "TargetProfileNotFound"),
  @JsonValue(4)
  channelNotFound(4, "ChannelNotFound"),
  @JsonValue(5)
  channelNotOwned(5, "ChannelNotOwned");

  const ChannelPermissionManageResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelSubscribeResult {
  @JsonValue(2)
  subscriptionExists(2, "SubscriptionExists"),
  @JsonValue(3)
  subscriptionLimitReached(3, "SubscriptionLimitReached");

  const ChannelSubscribeResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ChannelUnsubscribeResult {
  @JsonValue(2)
  subscriptionNotExists(2, "SubscriptionNotExists");

  const ChannelUnsubscribeResult(this.value, this.codeName);
  final int value;
  final String codeName;
}
