import 'package:json_annotation/json_annotation.dart';

enum CommonResult {
  @JsonValue(0)
  ok(0, "Ok"),
  @JsonValue(1)
  unexpectedError(1, "UnexpectedError"),
  @JsonValue(401)
  unauthorized(401, "Unauthorized"),
  @JsonValue(402)
  invalidUserAgent(402, "InvalidUserAgent"),
  @JsonValue(403)
  permBan(403, "PermBan");

  const CommonResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum CommentAddResult {
  @JsonValue(2)
  embeddableNotFound(2, "EmbeddableNotFound"),
  @JsonValue(3)
  commentNotFound(3, "CommentNotFound"),
  @JsonValue(4)
  profileNotFound(4, "ProfileNotFound"),
  @JsonValue(5)
  commentIsTooShort(5, "CommentIsTooShort"),
  @JsonValue(6)
  commentIsTooLong(6, "CommentIsTooLong"),
  @JsonValue(7)
  commentLimitReached(7, "CommentLimitReached"),
  @JsonValue(8)
  inBlocklist(8, "InBlocklist");

  const CommentAddResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum CommentDeleteResult {
  @JsonValue(2)
  commentNotFound(2, "CommentNotFound"),
  @JsonValue(3)
  commentNotOwned(3, "CommentNotOwned");

  const CommentDeleteResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum CommentEditResult {
  @JsonValue(2)
  commentNotFound(2, "CommentNotFound"),
  @JsonValue(3)
  commentIsTooShort(3, "CommentIsTooShort"),
  @JsonValue(4)
  commentIsTooLong(4, "CommentIsTooLong"),
  @JsonValue(5)
  commentNotOwned(5, "CommentNotOwned"),
  @JsonValue(6)
  commentWasDeleted(6, "CommentWasDeleted"),
  @JsonValue(7)
  embeddableNotFound(7, "EmbeddableNotFound");

  const CommentEditResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

final commonResultNames = Map<int, String>.unmodifiable({
  for (final e in CommonResult.values) e.value: e.codeName,
});
