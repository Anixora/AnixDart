part of 'types.dart';

sealed class ArticlePayloadBlock {
  const ArticlePayloadBlock();
  factory ArticlePayloadBlock.fromJson(Map<String, dynamic> json) =>
      switch (json['type']) {
        'paragraph' => ArticleParagraphPayloadBlock.fromJson(json),
        'header' => ArticleHeaderPayloadBlock.fromJson(json),
        'quote' => ArticleQuotePayloadBlock.fromJson(json),
        'delimiter' => ArticleDelimiterPayloadBlock.fromJson(json),
        'list' => ArticleListPayloadBlock.fromJson(json),
        'media' => ArticleMediaPayloadBlock.fromJson(json),
        'embed' => ArticleEmbedPayloadBlock.fromJson(json),
        final value => throw FormatException(
          'Unknown article block type: $value',
        ),
      };
  Map<String, dynamic> toJson();
}
