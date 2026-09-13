// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
  jsonId: (json['@id'] as num?)?.toInt(),
  id: (json['id'] as num).toInt(),
  channel: json['channel'] == null
      ? null
      : Channel.fromJson(json['channel'] as Map<String, dynamic>),
  author: json['author'] == null
      ? null
      : ProfileSlim.fromJson(json['author'] as Map<String, dynamic>),
  repostArticle: json['repost_article'] == null
      ? null
      : EntityReference<Article>.fromJson(
          json['repost_article'] as Object,
          (value) => Article.fromJson(value as Map<String, dynamic>),
        ),
  payload: json['payload'] == null
      ? null
      : ArticlePayload.fromJson(json['payload'] as Map<String, dynamic>),
  creationDate: (json['creation_date'] as num?)?.toInt(),
  lastUpdateDate: (json['last_update_date'] as num?)?.toInt(),
  commentCount: (json['comment_count'] as num?)?.toInt(),
  repostCount: (json['repost_count'] as num?)?.toInt(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  vote: (json['vote'] as num?)?.toInt(),
  containsRepostArticle: json['contains_repost_article'] as bool?,
  isSigned: json['is_signed'] as bool?,
  isPinned: json['is_pinned'] as bool?,
  isMuted: json['is_muted'] as bool?,
  isDeleted: json['is_deleted'] as bool?,
  hasDeleteEnforcement: json['has_delete_enforcement'] as bool?,
  popularComment: json['popular_comment'] == null
      ? null
      : PopularComment.fromJson(
          json['popular_comment'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
  '@id': instance.jsonId,
  'id': instance.id,
  'channel': instance.channel?.toJson(),
  'author': instance.author?.toJson(),
  'repost_article': instance.repostArticle?.toJson((value) => value.toJson()),
  'payload': instance.payload?.toJson(),
  'creation_date': instance.creationDate,
  'last_update_date': instance.lastUpdateDate,
  'comment_count': instance.commentCount,
  'repost_count': instance.repostCount,
  'vote_count': instance.voteCount,
  'vote': instance.vote,
  'contains_repost_article': instance.containsRepostArticle,
  'is_signed': instance.isSigned,
  'is_pinned': instance.isPinned,
  'is_muted': instance.isMuted,
  'is_deleted': instance.isDeleted,
  'has_delete_enforcement': instance.hasDeleteEnforcement,
  'popular_comment': instance.popularComment?.toJson(),
};

ArticleCompact _$ArticleCompactFromJson(Map<String, dynamic> json) =>
    ArticleCompact(
      id: (json['id'] as num).toInt(),
      channel: json['channel'] == null
          ? null
          : ChannelCompact.fromJson(json['channel'] as Map<String, dynamic>),
      payload: json['payload'] == null
          ? null
          : ArticlePayload.fromJson(json['payload'] as Map<String, dynamic>),
      creationDate: (json['creation_date'] as num?)?.toInt(),
      lastUpdateDate: (json['last_update_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleCompactToJson(ArticleCompact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel': instance.channel?.toJson(),
      'payload': instance.payload?.toJson(),
      'creation_date': instance.creationDate,
      'last_update_date': instance.lastUpdateDate,
    };

ArticleCommentCompact _$ArticleCommentCompactFromJson(
  Map<String, dynamic> json,
) => ArticleCommentCompact(
  id: (json['id'] as num).toInt(),
  profile: json['profile'] == null
      ? null
      : ProfileSlim.fromJson(json['profile'] as Map<String, dynamic>),
  message: json['message'] as String?,
  isSpoiler: json['is_spoiler'] as bool?,
  article: json['article'] == null
      ? null
      : ArticleCompact.fromJson(json['article'] as Map<String, dynamic>),
  embeddableId: (json['embeddableId'] as num?)?.toInt(),
  embeddableTitle: json['embeddableTitle'] as String?,
  embeddableDescription: json['embeddableDescription'] as String?,
);

Map<String, dynamic> _$ArticleCommentCompactToJson(
  ArticleCommentCompact instance,
) => <String, dynamic>{
  'id': instance.id,
  'profile': instance.profile?.toJson(),
  'message': instance.message,
  'is_spoiler': instance.isSpoiler,
  'article': instance.article?.toJson(),
  'embeddableId': instance.embeddableId,
  'embeddableTitle': instance.embeddableTitle,
  'embeddableDescription': instance.embeddableDescription,
};

ArticleTextBlock _$ArticleTextBlockFromJson(Map<String, dynamic> json) =>
    ArticleTextBlock(
      text: json['text'] as String?,
      textLength: (json['text_length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleTextBlockToJson(ArticleTextBlock instance) =>
    <String, dynamic>{
      'text': instance.text,
      'text_length': instance.textLength,
    };

ArticleHeaderBlock _$ArticleHeaderBlockFromJson(Map<String, dynamic> json) =>
    ArticleHeaderBlock(
      text: json['text'] as String?,
      textLength: (json['text_length'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleHeaderBlockToJson(ArticleHeaderBlock instance) =>
    <String, dynamic>{
      'text': instance.text,
      'text_length': instance.textLength,
      'level': instance.level,
    };

ArticleImageItem _$ArticleImageItemFromJson(Map<String, dynamic> json) =>
    ArticleImageItem(
      id: json['id'] as String,
      url: json['url'] as String?,
      hash: json['hash'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleImageItemToJson(ArticleImageItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'hash': instance.hash,
      'width': instance.width,
      'height': instance.height,
    };

ArticleImageBlock _$ArticleImageBlockFromJson(Map<String, dynamic> json) =>
    ArticleImageBlock(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ArticleImageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemCount: (json['item_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleImageBlockToJson(ArticleImageBlock instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'item_count': instance.itemCount,
    };

ArticleQuoteBlock _$ArticleQuoteBlockFromJson(Map<String, dynamic> json) =>
    ArticleQuoteBlock(
      text: json['text'] as String?,
      caption: json['caption'] as String?,
      alignment: json['alignment'] as String?,
      textLength: (json['text_length'] as num?)?.toInt(),
      captionLength: (json['caption_length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleQuoteBlockToJson(ArticleQuoteBlock instance) =>
    <String, dynamic>{
      'text': instance.text,
      'caption': instance.caption,
      'alignment': instance.alignment,
      'text_length': instance.textLength,
      'caption_length': instance.captionLength,
    };

ArticleListBlock _$ArticleListBlockFromJson(Map<String, dynamic> json) =>
    ArticleListBlock(
      style: json['style'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      itemCount: (json['item_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleListBlockToJson(ArticleListBlock instance) =>
    <String, dynamic>{
      'style': instance.style,
      'items': instance.items,
      'item_count': instance.itemCount,
    };

ArticleEmbedBlock _$ArticleEmbedBlockFromJson(Map<String, dynamic> json) =>
    ArticleEmbedBlock(
      url: json['url'] as String?,
      hash: json['hash'] as String?,
      embed: json['embed'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      image: json['image'] as String?,
      title: json['title'] as String?,
      service: json['service'] as String?,
      siteName: json['site_name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ArticleEmbedBlockToJson(ArticleEmbedBlock instance) =>
    <String, dynamic>{
      'url': instance.url,
      'hash': instance.hash,
      'embed': instance.embed,
      'width': instance.width,
      'height': instance.height,
      'image': instance.image,
      'title': instance.title,
      'service': instance.service,
      'site_name': instance.siteName,
      'description': instance.description,
    };

ArticleDelimiterBlock _$ArticleDelimiterBlockFromJson(
  Map<String, dynamic> json,
) => ArticleDelimiterBlock();

Map<String, dynamic> _$ArticleDelimiterBlockToJson(
  ArticleDelimiterBlock instance,
) => <String, dynamic>{};

ArticleParagraphPayloadBlock _$ArticleParagraphPayloadBlockFromJson(
  Map<String, dynamic> json,
) => ArticleParagraphPayloadBlock(
  id: json['id'] as String,
  type: json['type'] as String? ?? "paragraph",
  name: json['name'] as String? ?? "paragraph",
  data: json['data'] == null
      ? null
      : ArticleTextBlock.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleParagraphPayloadBlockToJson(
  ArticleParagraphPayloadBlock instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'data': instance.data?.toJson(),
};

ArticleHeaderPayloadBlock _$ArticleHeaderPayloadBlockFromJson(
  Map<String, dynamic> json,
) => ArticleHeaderPayloadBlock(
  id: json['id'] as String,
  type: json['type'] as String? ?? "header",
  name: json['name'] as String? ?? "header",
  data: json['data'] == null
      ? null
      : ArticleHeaderBlock.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleHeaderPayloadBlockToJson(
  ArticleHeaderPayloadBlock instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'data': instance.data?.toJson(),
};

ArticleQuotePayloadBlock _$ArticleQuotePayloadBlockFromJson(
  Map<String, dynamic> json,
) => ArticleQuotePayloadBlock(
  id: json['id'] as String,
  type: json['type'] as String? ?? "quote",
  name: json['name'] as String? ?? "quote",
  data: json['data'] == null
      ? null
      : ArticleQuoteBlock.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleQuotePayloadBlockToJson(
  ArticleQuotePayloadBlock instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'data': instance.data?.toJson(),
};

ArticleDelimiterPayloadBlock _$ArticleDelimiterPayloadBlockFromJson(
  Map<String, dynamic> json,
) => ArticleDelimiterPayloadBlock(
  id: json['id'] as String,
  type: json['type'] as String? ?? "delimiter",
  name: json['name'] as String? ?? "delimiter",
  data: json['data'] == null
      ? null
      : ArticleDelimiterBlock.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleDelimiterPayloadBlockToJson(
  ArticleDelimiterPayloadBlock instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'data': instance.data?.toJson(),
};

ArticleListPayloadBlock _$ArticleListPayloadBlockFromJson(
  Map<String, dynamic> json,
) => ArticleListPayloadBlock(
  id: json['id'] as String,
  type: json['type'] as String? ?? "list",
  name: json['name'] as String? ?? "list",
  data: json['data'] == null
      ? null
      : ArticleListBlock.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleListPayloadBlockToJson(
  ArticleListPayloadBlock instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'data': instance.data?.toJson(),
};

ArticleMediaPayloadBlock _$ArticleMediaPayloadBlockFromJson(
  Map<String, dynamic> json,
) => ArticleMediaPayloadBlock(
  id: json['id'] as String,
  type: json['type'] as String? ?? "media",
  name: json['name'] as String? ?? "media",
  data: json['data'] == null
      ? null
      : ArticleImageBlock.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleMediaPayloadBlockToJson(
  ArticleMediaPayloadBlock instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'data': instance.data?.toJson(),
};

ArticleEmbedPayloadBlock _$ArticleEmbedPayloadBlockFromJson(
  Map<String, dynamic> json,
) => ArticleEmbedPayloadBlock(
  id: json['id'] as String,
  type: json['type'] as String? ?? "embed",
  name: json['name'] as String? ?? "embed",
  data: json['data'] == null
      ? null
      : ArticleEmbedBlock.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleEmbedPayloadBlockToJson(
  ArticleEmbedPayloadBlock instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'data': instance.data?.toJson(),
};

ArticlePayload _$ArticlePayloadFromJson(Map<String, dynamic> json) =>
    ArticlePayload(
      time: (json['time'] as num?)?.toInt(),
      version: json['version'] as String?,
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => ArticlePayloadBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      blockCount: (json['block_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticlePayloadToJson(ArticlePayload instance) =>
    <String, dynamic>{
      'time': instance.time,
      'version': instance.version,
      'blocks': instance.blocks?.map((e) => e.toJson()).toList(),
      'block_count': instance.blockCount,
    };

ArticleCreateEditRequest _$ArticleCreateEditRequestFromJson(
  Map<String, dynamic> json,
) => ArticleCreateEditRequest(
  isSigned: json['is_signed'] as bool,
  repostArticleId: (json['repost_article_id'] as num?)?.toInt(),
  payload: ArticlePayload.fromJson(json['payload'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleCreateEditRequestToJson(
  ArticleCreateEditRequest instance,
) => <String, dynamic>{
  'is_signed': instance.isSigned,
  'repost_article_id': instance.repostArticleId,
  'payload': instance.payload.toJson(),
};

ArticleSuggestionCreateEditRequest _$ArticleSuggestionCreateEditRequestFromJson(
  Map<String, dynamic> json,
) => ArticleSuggestionCreateEditRequest(
  isSigned: json['is_signed'] as bool,
  payload: ArticlePayload.fromJson(json['payload'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleSuggestionCreateEditRequestToJson(
  ArticleSuggestionCreateEditRequest instance,
) => <String, dynamic>{
  'is_signed': instance.isSigned,
  'payload': instance.payload.toJson(),
};

PopularComment _$PopularCommentFromJson(Map<String, dynamic> json) =>
    PopularComment(
      id: (json['id'] as num).toInt(),
      profile: json['profile'] == null
          ? null
          : ProfileSlim.fromJson(json['profile'] as Map<String, dynamic>),
      message: json['message'] as String?,
      voteCount: (json['vote_count'] as num?)?.toInt(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PopularCommentToJson(PopularComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile?.toJson(),
      'message': instance.message,
      'vote_count': instance.voteCount,
      'timestamp': instance.timestamp,
    };

ArticleComment _$ArticleCommentFromJson(Map<String, dynamic> json) =>
    ArticleComment(
      id: (json['id'] as num).toInt(),
      message: json['message'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      vote: (json['vote'] as num?)?.toInt(),
      profile: json['profile'] == null
          ? null
          : ChannelProfile.fromJson(json['profile'] as Map<String, dynamic>),
      parentCommentId: (json['parent_comment_id'] as num?)?.toInt(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
      likesCount: (json['likes_count'] as num?)?.toInt(),
      isSpoiler: json['is_spoiler'] as bool?,
      isEdited: json['is_edited'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      isReply: json['is_reply'] as bool?,
      replyCount: (json['reply_count'] as num?)?.toInt(),
      canLike: json['can_like'] as bool?,
      article: json['article'] == null
          ? null
          : EntityReference<Article>.fromJson(
              json['article'] as Object,
              (value) => Article.fromJson(value as Map<String, dynamic>),
            ),
    );

Map<String, dynamic> _$ArticleCommentToJson(ArticleComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'type': instance.type,
      'vote': instance.vote,
      'profile': instance.profile?.toJson(),
      'parent_comment_id': instance.parentCommentId,
      'vote_count': instance.voteCount,
      'likes_count': instance.likesCount,
      'is_spoiler': instance.isSpoiler,
      'is_edited': instance.isEdited,
      'is_deleted': instance.isDeleted,
      'is_reply': instance.isReply,
      'reply_count': instance.replyCount,
      'can_like': instance.canLike,
      'article': instance.article?.toJson((value) => value.toJson()),
    };

ArticleEventRequest _$ArticleEventRequestFromJson(Map<String, dynamic> json) =>
    ArticleEventRequest(
      type: $enumDecode(_$ArticleEventTypeEnumMap, json['type']),
      entryPoint: $enumDecode(
        _$ArticleEventEntryPointEnumMap,
        json['entry_point'],
      ),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$ArticleEventRequestToJson(
  ArticleEventRequest instance,
) => <String, dynamic>{
  'type': _$ArticleEventTypeEnumMap[instance.type]!,
  'entry_point': _$ArticleEventEntryPointEnumMap[instance.entryPoint]!,
  'articles': instance.articles,
};

const _$ArticleEventTypeEnumMap = {
  ArticleEventType.view: 'view',
  ArticleEventType.open: 'open',
  ArticleEventType.read: 'read',
};

const _$ArticleEventEntryPointEnumMap = {
  ArticleEventEntryPoint.unknown: 'unknown',
  ArticleEventEntryPoint.article: 'article',
  ArticleEventEntryPoint.channel: 'channel',
  ArticleEventEntryPoint.feed: 'feed',
  ArticleEventEntryPoint.latest: 'latest',
  ArticleEventEntryPoint.search: 'search',
};

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) =>
    ArticleResponse(
      code: (json['code'] as num).toInt(),
      article: json['article'] == null
          ? null
          : Article.fromJson(json['article'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleResponseToJson(ArticleResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'article': instance.article?.toJson(),
    };

ArticleEmbedResponse _$ArticleEmbedResponseFromJson(
  Map<String, dynamic> json,
) => ArticleEmbedResponse(
  url: json['url'] as String?,
  hash: json['hash'] as String?,
  embed: json['embed'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  image: json['image'] as String?,
  title: json['title'] as String?,
  service: json['service'] as String?,
  siteName: json['site_name'] as String?,
  description: json['description'] as String?,
  success: (json['success'] as num?)?.toInt(),
);

Map<String, dynamic> _$ArticleEmbedResponseToJson(
  ArticleEmbedResponse instance,
) => <String, dynamic>{
  'url': instance.url,
  'hash': instance.hash,
  'embed': instance.embed,
  'width': instance.width,
  'height': instance.height,
  'image': instance.image,
  'title': instance.title,
  'service': instance.service,
  'site_name': instance.siteName,
  'description': instance.description,
  'success': instance.success,
};

ArticleUploadFileResponse _$ArticleUploadFileResponseFromJson(
  Map<String, dynamic> json,
) => ArticleUploadFileResponse(
  file: json['file'] == null
      ? null
      : ArticleImageItem.fromJson(json['file'] as Map<String, dynamic>),
  success: (json['success'] as num?)?.toInt(),
);

Map<String, dynamic> _$ArticleUploadFileResponseToJson(
  ArticleUploadFileResponse instance,
) => <String, dynamic>{
  'file': instance.file?.toJson(),
  'success': instance.success,
};

LatestArticleResponse _$LatestArticleResponseFromJson(
  Map<String, dynamic> json,
) => LatestArticleResponse(
  code: (json['code'] as num).toInt(),
  articleId: (json['articleId'] as num?)?.toInt(),
);

Map<String, dynamic> _$LatestArticleResponseToJson(
  LatestArticleResponse instance,
) => <String, dynamic>{'code': instance.code, 'articleId': instance.articleId};
