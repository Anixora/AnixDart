import 'package:json_annotation/json_annotation.dart';
import '../models.dart';
part 'types.g.dart';

part 'payload_block.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class Article {
  const Article({
    this.jsonId,
    required this.id,
    this.channel,
    this.author,
    this.repostArticle,
    this.payload,
    this.creationDate,
    this.lastUpdateDate,
    this.commentCount,
    this.repostCount,
    this.voteCount,
    this.vote,
    this.containsRepostArticle,
    this.isSigned,
    this.isPinned,
    this.isMuted,
    this.isDeleted,
    this.hasDeleteEnforcement,
    this.popularComment,
  });

  @JsonKey(name: '@id')
  final int? jsonId;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'channel')
  final Channel? channel;

  @JsonKey(name: 'author')
  final ProfileSlim? author;

  @JsonKey(name: 'repost_article')
  final EntityReference<Article>? repostArticle;

  @JsonKey(name: 'payload')
  final ArticlePayload? payload;

  @JsonKey(name: 'creation_date')
  final int? creationDate;

  @JsonKey(name: 'last_update_date')
  final int? lastUpdateDate;

  @JsonKey(name: 'comment_count')
  final int? commentCount;

  @JsonKey(name: 'repost_count')
  final int? repostCount;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @JsonKey(name: 'vote')
  final int? vote;

  @JsonKey(name: 'contains_repost_article')
  final bool? containsRepostArticle;

  @JsonKey(name: 'is_signed')
  final bool? isSigned;

  @JsonKey(name: 'is_pinned')
  final bool? isPinned;

  @JsonKey(name: 'is_muted')
  final bool? isMuted;

  @JsonKey(name: 'is_deleted')
  final bool? isDeleted;

  @JsonKey(name: 'has_delete_enforcement')
  final bool? hasDeleteEnforcement;

  @JsonKey(name: 'popular_comment')
  final PopularComment? popularComment;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleCompact {
  const ArticleCompact({
    required this.id,
    this.channel,
    this.payload,
    this.creationDate,
    this.lastUpdateDate,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'channel')
  final ChannelCompact? channel;

  @JsonKey(name: 'payload')
  final ArticlePayload? payload;

  @JsonKey(name: 'creation_date')
  final int? creationDate;

  @JsonKey(name: 'last_update_date')
  final int? lastUpdateDate;

  factory ArticleCompact.fromJson(Map<String, dynamic> json) =>
      _$ArticleCompactFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleCommentCompact {
  const ArticleCommentCompact({
    required this.id,
    this.profile,
    this.message,
    this.isSpoiler,
    this.article,
    this.embeddableId,
    this.embeddableTitle,
    this.embeddableDescription,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'profile')
  final ProfileSlim? profile;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'is_spoiler')
  final bool? isSpoiler;

  @JsonKey(name: 'article')
  final ArticleCompact? article;

  @JsonKey(name: 'embeddableId')
  final int? embeddableId;

  @JsonKey(name: 'embeddableTitle')
  final String? embeddableTitle;

  @JsonKey(name: 'embeddableDescription')
  final String? embeddableDescription;

  factory ArticleCommentCompact.fromJson(Map<String, dynamic> json) =>
      _$ArticleCommentCompactFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleCommentCompactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleTextBlock {
  const ArticleTextBlock({this.text, this.textLength});

  @JsonKey(name: 'text')
  final String? text;

  @JsonKey(name: 'text_length')
  final int? textLength;

  factory ArticleTextBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleTextBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleTextBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleHeaderBlock {
  const ArticleHeaderBlock({this.text, this.textLength, this.level});

  @JsonKey(name: 'text')
  final String? text;

  @JsonKey(name: 'text_length')
  final int? textLength;

  @JsonKey(name: 'level')
  final int? level;

  factory ArticleHeaderBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleHeaderBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleHeaderBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleImageItem {
  const ArticleImageItem({
    required this.id,
    this.url,
    this.hash,
    this.width,
    this.height,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'hash')
  final String? hash;

  @JsonKey(name: 'width')
  final int? width;

  @JsonKey(name: 'height')
  final int? height;

  factory ArticleImageItem.fromJson(Map<String, dynamic> json) =>
      _$ArticleImageItemFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleImageItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleImageBlock {
  const ArticleImageBlock({this.items, this.itemCount});

  @JsonKey(name: 'items')
  final List<ArticleImageItem>? items;

  @JsonKey(name: 'item_count')
  final int? itemCount;

  factory ArticleImageBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleImageBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleImageBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleQuoteBlock {
  const ArticleQuoteBlock({
    this.text,
    this.caption,
    this.alignment,
    this.textLength,
    this.captionLength,
  });

  @JsonKey(name: 'text')
  final String? text;

  @JsonKey(name: 'caption')
  final String? caption;

  @JsonKey(name: 'alignment')
  final String? alignment;

  @JsonKey(name: 'text_length')
  final int? textLength;

  @JsonKey(name: 'caption_length')
  final int? captionLength;

  factory ArticleQuoteBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleQuoteBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleQuoteBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleListBlock {
  const ArticleListBlock({this.style, this.items, this.itemCount});

  @JsonKey(name: 'style')
  final String? style;

  @JsonKey(name: 'items')
  final List<String>? items;

  @JsonKey(name: 'item_count')
  final int? itemCount;

  factory ArticleListBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleListBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleListBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleEmbedBlock {
  const ArticleEmbedBlock({
    this.url,
    this.hash,
    this.embed,
    this.width,
    this.height,
    this.image,
    this.title,
    this.service,
    this.siteName,
    this.description,
  });

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'hash')
  final String? hash;

  @JsonKey(name: 'embed')
  final String? embed;

  @JsonKey(name: 'width')
  final int? width;

  @JsonKey(name: 'height')
  final int? height;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'service')
  final String? service;

  @JsonKey(name: 'site_name')
  final String? siteName;

  @JsonKey(name: 'description')
  final String? description;

  factory ArticleEmbedBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleEmbedBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleEmbedBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleDelimiterBlock {
  const ArticleDelimiterBlock();

  factory ArticleDelimiterBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleDelimiterBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleDelimiterBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleParagraphPayloadBlock extends ArticlePayloadBlock {
  const ArticleParagraphPayloadBlock({
    required this.id,
    this.type = "paragraph",
    this.name = "paragraph",
    this.data,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'data')
  final ArticleTextBlock? data;

  factory ArticleParagraphPayloadBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleParagraphPayloadBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleParagraphPayloadBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleHeaderPayloadBlock extends ArticlePayloadBlock {
  const ArticleHeaderPayloadBlock({
    required this.id,
    this.type = "header",
    this.name = "header",
    this.data,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'data')
  final ArticleHeaderBlock? data;

  factory ArticleHeaderPayloadBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleHeaderPayloadBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleHeaderPayloadBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleQuotePayloadBlock extends ArticlePayloadBlock {
  const ArticleQuotePayloadBlock({
    required this.id,
    this.type = "quote",
    this.name = "quote",
    this.data,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'data')
  final ArticleQuoteBlock? data;

  factory ArticleQuotePayloadBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleQuotePayloadBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleQuotePayloadBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleDelimiterPayloadBlock extends ArticlePayloadBlock {
  const ArticleDelimiterPayloadBlock({
    required this.id,
    this.type = "delimiter",
    this.name = "delimiter",
    this.data,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'data')
  final ArticleDelimiterBlock? data;

  factory ArticleDelimiterPayloadBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleDelimiterPayloadBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleDelimiterPayloadBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleListPayloadBlock extends ArticlePayloadBlock {
  const ArticleListPayloadBlock({
    required this.id,
    this.type = "list",
    this.name = "list",
    this.data,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'data')
  final ArticleListBlock? data;

  factory ArticleListPayloadBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleListPayloadBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleListPayloadBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleMediaPayloadBlock extends ArticlePayloadBlock {
  const ArticleMediaPayloadBlock({
    required this.id,
    this.type = "media",
    this.name = "media",
    this.data,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'data')
  final ArticleImageBlock? data;

  factory ArticleMediaPayloadBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleMediaPayloadBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleMediaPayloadBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleEmbedPayloadBlock extends ArticlePayloadBlock {
  const ArticleEmbedPayloadBlock({
    required this.id,
    this.type = "embed",
    this.name = "embed",
    this.data,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'data')
  final ArticleEmbedBlock? data;

  factory ArticleEmbedPayloadBlock.fromJson(Map<String, dynamic> json) =>
      _$ArticleEmbedPayloadBlockFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleEmbedPayloadBlockToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticlePayload {
  const ArticlePayload({this.time, this.version, this.blocks, this.blockCount});

  @JsonKey(name: 'time')
  final int? time;

  @JsonKey(name: 'version')
  final String? version;

  @JsonKey(name: 'blocks')
  final List<ArticlePayloadBlock>? blocks;

  @JsonKey(name: 'block_count')
  final int? blockCount;

  factory ArticlePayload.fromJson(Map<String, dynamic> json) =>
      _$ArticlePayloadFromJson(json);
  Map<String, dynamic> toJson() => _$ArticlePayloadToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleCreateEditRequest {
  const ArticleCreateEditRequest({
    required this.isSigned,
    required this.repostArticleId,
    required this.payload,
  });

  @JsonKey(name: 'is_signed')
  final bool isSigned;

  @JsonKey(name: 'repost_article_id')
  final int? repostArticleId;

  @JsonKey(name: 'payload')
  final ArticlePayload payload;

  factory ArticleCreateEditRequest.fromJson(Map<String, dynamic> json) =>
      _$ArticleCreateEditRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleCreateEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleSuggestionCreateEditRequest {
  const ArticleSuggestionCreateEditRequest({
    required this.isSigned,
    required this.payload,
  });

  @JsonKey(name: 'is_signed')
  final bool isSigned;

  @JsonKey(name: 'payload')
  final ArticlePayload payload;

  factory ArticleSuggestionCreateEditRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ArticleSuggestionCreateEditRequestFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ArticleSuggestionCreateEditRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class PopularComment {
  const PopularComment({
    required this.id,
    this.profile,
    this.message,
    this.voteCount,
    this.timestamp,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'profile')
  final ProfileSlim? profile;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @JsonKey(name: 'timestamp')
  final int? timestamp;

  factory PopularComment.fromJson(Map<String, dynamic> json) =>
      _$PopularCommentFromJson(json);
  Map<String, dynamic> toJson() => _$PopularCommentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleComment {
  const ArticleComment({
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
    this.article,
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
  final ChannelProfile? profile;

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

  @JsonKey(name: 'article')
  final EntityReference<Article>? article;

  factory ArticleComment.fromJson(Map<String, dynamic> json) =>
      _$ArticleCommentFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleCommentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleEventRequest {
  const ArticleEventRequest({
    required this.type,
    required this.entryPoint,
    required this.articles,
  });

  @JsonKey(name: 'type')
  final ArticleEventType type;

  @JsonKey(name: 'entry_point')
  final ArticleEventEntryPoint entryPoint;

  @JsonKey(name: 'articles')
  final List<int> articles;

  factory ArticleEventRequest.fromJson(Map<String, dynamic> json) =>
      _$ArticleEventRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleEventRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleResponse {
  const ArticleResponse({required this.code, this.article});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'article')
  final Article? article;

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleEmbedResponse {
  const ArticleEmbedResponse({
    this.url,
    this.hash,
    this.embed,
    this.width,
    this.height,
    this.image,
    this.title,
    this.service,
    this.siteName,
    this.description,
    this.success,
  });

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'hash')
  final String? hash;

  @JsonKey(name: 'embed')
  final String? embed;

  @JsonKey(name: 'width')
  final int? width;

  @JsonKey(name: 'height')
  final int? height;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'service')
  final String? service;

  @JsonKey(name: 'site_name')
  final String? siteName;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'success')
  final int? success;

  factory ArticleEmbedResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleEmbedResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleEmbedResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ArticleUploadFileResponse {
  const ArticleUploadFileResponse({this.file, this.success});

  @JsonKey(name: 'file')
  final ArticleImageItem? file;

  @JsonKey(name: 'success')
  final int? success;

  factory ArticleUploadFileResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleUploadFileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleUploadFileResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class LatestArticleResponse {
  const LatestArticleResponse({required this.code, this.articleId});

  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'articleId')
  final int? articleId;

  factory LatestArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$LatestArticleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LatestArticleResponseToJson(this);
}
