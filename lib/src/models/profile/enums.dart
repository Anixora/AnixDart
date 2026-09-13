import 'package:json_annotation/json_annotation.dart';

enum FriendStatus {
  @JsonValue(0)
  pendingFirstSecond(0, "PendingFirstSecond"),
  @JsonValue(1)
  pendingSecondFirst(1, "PendingSecondFirst"),
  @JsonValue(2)
  friend(2, "Friend");

  const FriendStatus(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum PrivilegeLevel {
  @JsonValue(0)
  none(0, "None"),
  @JsonValue(1)
  member(1, "Member"),
  @JsonValue(2)
  releaser(2, "Releaser"),
  @JsonValue(3)
  moderator(3, "Moderator"),
  @JsonValue(4)
  administrator(4, "Administrator"),
  @JsonValue(5)
  developer(5, "Developer");

  const PrivilegeLevel(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum BookmarkType {
  @JsonValue(1)
  watching(1, "Watching"),
  @JsonValue(2)
  inPlans(2, "InPlans"),
  @JsonValue(3)
  completed(3, "Completed"),
  @JsonValue(4)
  holdOn(4, "HoldOn"),
  @JsonValue(5)
  dropped(5, "Dropped");

  const BookmarkType(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum BookmarkSortType {
  @JsonValue(1)
  newToOldAddTime(1, "NewToOldAddTime"),
  @JsonValue(2)
  oldToNewAddTime(2, "OldToNewAddTime"),
  @JsonValue(3)
  newToOldYear(3, "NewToOldYear"),
  @JsonValue(4)
  oldToNewYear(4, "OldToNewYear"),
  @JsonValue(5)
  alpabetInAToZ(5, "AlpabetInAToZ"),
  @JsonValue(6)
  alpabetInZToA(6, "AlpabetInZToA");

  const BookmarkSortType(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum SendFriendRequestResult {
  @JsonValue(2)
  requestConfirmed(2, "RequestConfirmed"),
  @JsonValue(3)
  requestSent(3, "RequestSent"),
  @JsonValue(4)
  profileWasBlocked(4, "ProfileWasBlocked"),
  @JsonValue(5)
  myProfileWasBlocked(5, "MyProfileWasBlocked"),
  @JsonValue(6)
  friendLimitReached(6, "FriendLimitReached"),
  @JsonValue(7)
  targetFriendLimitReached(7, "TargetFriendLimitReached"),
  @JsonValue(8)
  targetFriendRequestsDisallowed(8, "TargetFriendRequestsDisallowed"),
  @JsonValue(9)
  friendRequestLimitReached(9, "FriendRequestLimitReached");

  const SendFriendRequestResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ProfileDeletionResult {
  @JsonValue(2)
  alreadyRequested(2, "AlreadyRequested"),
  @JsonValue(3)
  notFound(3, "NotFound"),
  @JsonValue(4)
  alreadyProcessed(4, "AlreadyProcessed"),
  @JsonValue(5)
  inProgress(5, "InProgress"),
  @JsonValue(6)
  invalidPassword(6, "InvalidPassword"),
  @JsonValue(7)
  unknownError(7, "UnknownError");

  const ProfileDeletionResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum RemoveFriendRequestResult {
  @JsonValue(2)
  requestRemoved(2, "RequestRemoved"),
  @JsonValue(3)
  friendshipRemoved(3, "FriendshipRemoved");

  const RemoveFriendRequestResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ProfileResult {
  @JsonValue(2)
  profileNotFound(2, "ProfileNotFound");

  const ProfileResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum AchivementResult {
  @JsonValue(2)
  alreadyGranted(2, "AlreadyGranted"),
  @JsonValue(3)
  achivementNotFound(3, "AchivementNotFound");

  const AchivementResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum BlockListAddResult {
  @JsonValue(2)
  alreadyInBlockList(2, "AlreadyInBlockList");

  const BlockListAddResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum BookmarksExportResult {
  @JsonValue(2)
  invalidProfileLists(2, "InvalidProfileLists"),
  @JsonValue(3)
  invalidExtraFields(3, "InvalidExtraFields");

  const BookmarksExportResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum BookmarksImportResult {
  @JsonValue(2)
  importLimitReached(2, "ImportLimitReached");

  const BookmarksImportResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum EnforcementType {
  @JsonValue("profile_ban")
  profileBan("profile_ban", "profileBan"),
  @JsonValue("channel_suspension")
  channelSuspension("channel_suspension", "channelSuspension"),
  @JsonValue("channel_mute")
  channelMute("channel_mute", "channelMute"),
  @JsonValue("collection_edit")
  collectionEdit("collection_edit", "collectionEdit"),
  @JsonValue("article_edit")
  articleEdit("article_edit", "articleEdit"),
  @JsonValue("release_comment_edit")
  releaseCommentEdit("release_comment_edit", "releaseCommentEdit"),
  @JsonValue("collection_comment_edit")
  collectionCommentEdit("collection_comment_edit", "collectionCommentEdit"),
  @JsonValue("article_comment_edit")
  articleCommentEdit("article_comment_edit", "articleCommentEdit");

  const EnforcementType(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum AppealType {
  @JsonValue("UNKNOWN")
  unknown("UNKNOWN", "unknown"),
  @JsonValue("NOT_AVAILABLE")
  notAvailable("NOT_AVAILABLE", "notAvailable"),
  @JsonValue("MESSAGE")
  message("MESSAGE", "message"),
  @JsonValue("ADJUSTMENT")
  adjustment("ADJUSTMENT", "adjustment");

  const AppealType(this.value, this.codeName);
  final String value;
  final String codeName;
}

enum AppealStatus {
  @JsonValue("UNKNOWN")
  unknown("UNKNOWN", "unknown"),
  @JsonValue("NOT_SUBMITTED")
  notSubmitted("NOT_SUBMITTED", "notSubmitted"),
  @JsonValue("SUBMITTED")
  submitted("SUBMITTED", "submitted"),
  @JsonValue("ACCEPTED")
  accepted("ACCEPTED", "accepted"),
  @JsonValue("REJECTED")
  rejected("REJECTED", "rejected");

  const AppealStatus(this.value, this.codeName);
  final String value;
  final String codeName;
}
