import 'package:json_annotation/json_annotation.dart';

enum CollectionResult {
  @JsonValue(2)
  invalidId(2, "InvalidId"),
  @JsonValue(3)
  isPrivate(3, "IsPrivate"),
  @JsonValue(4)
  isDeleted(4, "IsDeleted");

  const CollectionResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum FavoriteCollectionAddResult {
  @JsonValue(2)
  collectionNotFound(2, "CollectionNotFound"),
  @JsonValue(3)
  collectionAlreadyInFavorite(3, "CollectionAlreadyInFavorite");

  const FavoriteCollectionAddResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum FavoriteCollectionDeleteResult {
  @JsonValue(2)
  collectionNotFound(2, "CollectionNotFound");

  const FavoriteCollectionDeleteResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum CollectionEditImageResult {
  @JsonValue(2)
  collectionNotFound(2, "CollectionNotFound");

  const CollectionEditImageResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum CollectionCreateEditResult {
  @JsonValue(2)
  invalidTitle(2, "InvalidTitle"),
  @JsonValue(3)
  invalidDescription(3, "InvalidDescription"),
  @JsonValue(4)
  invalidReleases(4, "InvalidReleases"),
  @JsonValue(5)
  collectionLimitReached(5, "CollectionLimitReached"),
  @JsonValue(6)
  collectionNotFound(6, "CollectionNotFound"),
  @JsonValue(7)
  collectionNotOwned(7, "CollectionNotOwned"),
  @JsonValue(8)
  collectionDeleted(8, "CollectionDeleted"),
  @JsonValue(9)
  releaseLimitReached(9, "ReleaseLimitReached");

  const CollectionCreateEditResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ReleaseAddCollectionResult {
  @JsonValue(2)
  collectionNotFound(2, "CollectionNotFound"),
  @JsonValue(3)
  collectionNotOwned(3, "CollectionNotOwned"),
  @JsonValue(4)
  invalidRelease(4, "InvalidRelease"),
  @JsonValue(5)
  releaseAlreadyInCollection(5, "ReleaseAlreadyInCollection"),
  @JsonValue(6)
  collectionDeleted(6, "CollectionDeleted"),
  @JsonValue(7)
  releaseLimitReached(7, "ReleaseLimitReached");

  const ReleaseAddCollectionResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum CollectionDeleteResult {
  @JsonValue(2)
  collectionNotFound(2, "CollectionNotFound"),
  @JsonValue(3)
  collectionNotOwned(3, "CollectionNotOwned"),
  @JsonValue(4)
  collectionDeleted(4, "CollectionDeleted");

  const CollectionDeleteResult(this.value, this.codeName);
  final int value;
  final String codeName;
}
