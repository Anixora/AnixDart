import 'package:json_annotation/json_annotation.dart';

enum ReleaseCategory {
  @JsonValue(0)
  unknown(0, "Unknown"),
  @JsonValue(1)
  series(1, "Series"),
  @JsonValue(2)
  movie(2, "Movie"),
  @JsonValue(3)
  ova(3, "OVA"),
  @JsonValue(6)
  special(6, "Special");

  const ReleaseCategory(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum VoteType {
  @JsonValue(2)
  like(2, "Like"),
  @JsonValue(1)
  dislike(1, "Dislike");

  const VoteType(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ReleaseStatus {
  @JsonValue(0)
  unknown(0, "Unknown"),
  @JsonValue(1)
  finished(1, "Finished"),
  @JsonValue(2)
  airing(2, "Airing"),
  @JsonValue(3)
  announced(3, "Announced");

  const ReleaseStatus(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum FilterGenresMode {
  @JsonValue(0)
  all(0, "All"),
  @JsonValue(1)
  any(1, "Any"),
  @JsonValue(2)
  exclude(2, "Exclude");

  const FilterGenresMode(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum FilterAgeRating {
  @JsonValue(1)
  lessThan13(1, "LessThan13"),
  @JsonValue(2)
  moreThan13(2, "MoreThan13"),
  @JsonValue(3)
  moreThan26(3, "MoreThan26"),
  @JsonValue(4)
  moreThan100(4, "MoreThan100");

  const FilterAgeRating(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum FilterSort {
  @JsonValue(0)
  dateUpdateDesc(0, "DateUpdateDesc"),
  @JsonValue(1)
  gradeDesc(1, "GradeDesc"),
  @JsonValue(2)
  yearDesc(2, "YearDesc"),
  @JsonValue(3)
  popularDesc(3, "PopularDesc"),
  @JsonValue(4)
  dateUpdateAsc(4, "DateUpdateAsc"),
  @JsonValue(5)
  gradeAsc(5, "GradeAsc"),
  @JsonValue(6)
  yearAsc(6, "YearAsc"),
  @JsonValue(7)
  popularAsc(7, "PopularAsc");

  const FilterSort(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ReleaseVideoResult {
  @JsonValue(2)
  invalidReleaseId(2, "InvalidReleaseId");

  const ReleaseVideoResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum BookmarkExportResult {
  @JsonValue(2)
  invalidProfileLists(2, "InvalidProfileLists"),
  @JsonValue(3)
  invalidExtraFields(3, "InvalidExtraFields");

  const BookmarkExportResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ReleaseVideoAppealResult {
  @JsonValue(2)
  invalidReleaseId(2, "InvalidReleaseId"),
  @JsonValue(3)
  invalidTitle(3, "InvalidTitle"),
  @JsonValue(4)
  invalidCategory(4, "InvalidCategory"),
  @JsonValue(5)
  invalidUrl(5, "InvalidUrl"),
  @JsonValue(6)
  appealAlreadySent(6, "AppealAlreadySent"),
  @JsonValue(7)
  tooManyAppeals(7, "TooManyAppeals"),
  @JsonValue(8)
  appealNotOwned(8, "AppealNotOwned"),
  @JsonValue(9)
  appealNotFound(9, "AppealNotFound"),
  @JsonValue(10)
  appealDisabled(10, "AppealDisabled");

  const ReleaseVideoAppealResult(this.value, this.codeName);
  final int value;
  final String codeName;
}

enum ReleaseVote {
  @JsonValue(1)
  one(1, "one"),
  @JsonValue(2)
  two(2, "two"),
  @JsonValue(3)
  three(3, "three"),
  @JsonValue(4)
  four(4, "four"),
  @JsonValue(5)
  five(5, "five");

  const ReleaseVote(this.value, this.codeName);
  final int value;
  final String codeName;
}
