import 'dart:convert';
import 'dart:io';
import 'package:anixdart/anixdart.dart';
import 'package:test/test.dart';

void main() {
  final fixtures =
      jsonDecode(File('test/fixtures/model_samples.json').readAsStringSync())
          as Map<String, dynamic>;
  test('IArticle synthetic fields survive serialization', () {
    final json = fixtures['IArticle'] as Map<String, dynamic>;
    final model = Article.fromJson(json);
    final encoded = model.toJson();
    final again = Article.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleCompact synthetic fields survive serialization', () {
    final json = fixtures['IArticleCompact'] as Map<String, dynamic>;
    final model = ArticleCompact.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleCommentCompact synthetic fields survive serialization', () {
    final json = fixtures['IArticleCommentCompact'] as Map<String, dynamic>;
    final model = ArticleCommentCompact.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleCommentCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleTextBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleTextBlock'] as Map<String, dynamic>;
    final model = ArticleTextBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleTextBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleHeaderBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleHeaderBlock'] as Map<String, dynamic>;
    final model = ArticleHeaderBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleHeaderBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleImageItem synthetic fields survive serialization', () {
    final json = fixtures['IArticleImageItem'] as Map<String, dynamic>;
    final model = ArticleImageItem.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleImageItem.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleImageBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleImageBlock'] as Map<String, dynamic>;
    final model = ArticleImageBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleImageBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleQuoteBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleQuoteBlock'] as Map<String, dynamic>;
    final model = ArticleQuoteBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleQuoteBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleListBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleListBlock'] as Map<String, dynamic>;
    final model = ArticleListBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleListBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleEmbedBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleEmbedBlock'] as Map<String, dynamic>;
    final model = ArticleEmbedBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleEmbedBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleDelimiterBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleDelimiterBlock'] as Map<String, dynamic>;
    final model = ArticleDelimiterBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleDelimiterBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IArticleParagraphPayloadBlock synthetic fields survive serialization',
    () {
      final json =
          fixtures['IArticleParagraphPayloadBlock'] as Map<String, dynamic>;
      final model = ArticleParagraphPayloadBlock.fromJson(json);
      final encoded = model.toJson();
      final again = ArticleParagraphPayloadBlock.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IArticleHeaderPayloadBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleHeaderPayloadBlock'] as Map<String, dynamic>;
    final model = ArticleHeaderPayloadBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleHeaderPayloadBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleQuotePayloadBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleQuotePayloadBlock'] as Map<String, dynamic>;
    final model = ArticleQuotePayloadBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleQuotePayloadBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IArticleDelimiterPayloadBlock synthetic fields survive serialization',
    () {
      final json =
          fixtures['IArticleDelimiterPayloadBlock'] as Map<String, dynamic>;
      final model = ArticleDelimiterPayloadBlock.fromJson(json);
      final encoded = model.toJson();
      final again = ArticleDelimiterPayloadBlock.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IArticleListPayloadBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleListPayloadBlock'] as Map<String, dynamic>;
    final model = ArticleListPayloadBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleListPayloadBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleMediaPayloadBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleMediaPayloadBlock'] as Map<String, dynamic>;
    final model = ArticleMediaPayloadBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleMediaPayloadBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleEmbedPayloadBlock synthetic fields survive serialization', () {
    final json = fixtures['IArticleEmbedPayloadBlock'] as Map<String, dynamic>;
    final model = ArticleEmbedPayloadBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleEmbedPayloadBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticlePayload synthetic fields survive serialization', () {
    final json = fixtures['IArticlePayload'] as Map<String, dynamic>;
    final model = ArticlePayload.fromJson(json);
    final encoded = model.toJson();
    final again = ArticlePayload.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleCreateEditRequest synthetic fields survive serialization', () {
    final json = fixtures['IArticleCreateEditRequest'] as Map<String, dynamic>;
    final model = ArticleCreateEditRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleCreateEditRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IArticleSuggestionCreateEditRequest synthetic fields survive serialization',
    () {
      final json =
          fixtures['IArticleSuggestionCreateEditRequest']
              as Map<String, dynamic>;
      final model = ArticleSuggestionCreateEditRequest.fromJson(json);
      final encoded = model.toJson();
      final again = ArticleSuggestionCreateEditRequest.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IPopularComment synthetic fields survive serialization', () {
    final json = fixtures['IPopularComment'] as Map<String, dynamic>;
    final model = PopularComment.fromJson(json);
    final encoded = model.toJson();
    final again = PopularComment.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleComment synthetic fields survive serialization', () {
    final json = fixtures['IArticleComment'] as Map<String, dynamic>;
    final model = ArticleComment.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleComment.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleEventRequest synthetic fields survive serialization', () {
    final json = fixtures['IArticleEventRequest'] as Map<String, dynamic>;
    final model = ArticleEventRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleEventRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleResponse synthetic fields survive serialization', () {
    final json = fixtures['IArticleResponse'] as Map<String, dynamic>;
    final model = ArticleResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleEmbedResponse synthetic fields survive serialization', () {
    final json = fixtures['IArticleEmbedResponse'] as Map<String, dynamic>;
    final model = ArticleEmbedResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleEmbedResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticleUploadFileResponse synthetic fields survive serialization', () {
    final json = fixtures['IArticleUploadFileResponse'] as Map<String, dynamic>;
    final model = ArticleUploadFileResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ArticleUploadFileResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ILatestArticleResponse synthetic fields survive serialization', () {
    final json = fixtures['ILatestArticleResponse'] as Map<String, dynamic>;
    final model = LatestArticleResponse.fromJson(json);
    final encoded = model.toJson();
    final again = LatestArticleResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICheckLoginResponse synthetic fields survive serialization', () {
    final json = fixtures['ICheckLoginResponse'] as Map<String, dynamic>;
    final model = CheckLoginResponse.fromJson(json);
    final encoded = model.toJson();
    final again = CheckLoginResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IFirebaseResponse synthetic fields survive serialization', () {
    final json = fixtures['IFirebaseResponse'] as Map<String, dynamic>;
    final model = FirebaseResponse.fromJson(json);
    final encoded = model.toJson();
    final again = FirebaseResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IResendRequest synthetic fields survive serialization', () {
    final json = fixtures['IResendRequest'] as Map<String, dynamic>;
    final model = ResendRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ResendRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRestoreResendRequest synthetic fields survive serialization', () {
    final json = fixtures['IRestoreResendRequest'] as Map<String, dynamic>;
    final model = RestoreResendRequest.fromJson(json);
    final encoded = model.toJson();
    final again = RestoreResendRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRestoreVerifyRequest synthetic fields survive serialization', () {
    final json = fixtures['IRestoreVerifyRequest'] as Map<String, dynamic>;
    final model = RestoreVerifyRequest.fromJson(json);
    final encoded = model.toJson();
    final again = RestoreVerifyRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISignInRequest synthetic fields survive serialization', () {
    final json = fixtures['ISignInRequest'] as Map<String, dynamic>;
    final model = SignInRequest.fromJson(json);
    final encoded = model.toJson();
    final again = SignInRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISignUpRequest synthetic fields survive serialization', () {
    final json = fixtures['ISignUpRequest'] as Map<String, dynamic>;
    final model = SignUpRequest.fromJson(json);
    final encoded = model.toJson();
    final again = SignUpRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IVerifyRequest synthetic fields survive serialization', () {
    final json = fixtures['IVerifyRequest'] as Map<String, dynamic>;
    final model = VerifyRequest.fromJson(json);
    final encoded = model.toJson();
    final again = VerifyRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISignUpResponse synthetic fields survive serialization', () {
    final json = fixtures['ISignUpResponse'] as Map<String, dynamic>;
    final model = SignUpResponse.fromJson(json);
    final encoded = model.toJson();
    final again = SignUpResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IVerifyResponse synthetic fields survive serialization', () {
    final json = fixtures['IVerifyResponse'] as Map<String, dynamic>;
    final model = VerifyResponse.fromJson(json);
    final encoded = model.toJson();
    final again = VerifyResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ITimestampResponse synthetic fields survive serialization', () {
    final json = fixtures['ITimestampResponse'] as Map<String, dynamic>;
    final model = TimestampResponse.fromJson(json);
    final encoded = model.toJson();
    final again = TimestampResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IAuthProfileResponse synthetic fields survive serialization', () {
    final json = fixtures['IAuthProfileResponse'] as Map<String, dynamic>;
    final model = AuthProfileResponse.fromJson(json);
    final encoded = model.toJson();
    final again = AuthProfileResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IOAuthSignInResponse synthetic fields survive serialization', () {
    final json = fixtures['IOAuthSignInResponse'] as Map<String, dynamic>;
    final model = OAuthSignInResponse.fromJson(json);
    final encoded = model.toJson();
    final again = OAuthSignInResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IResendResponse synthetic fields survive serialization', () {
    final json = fixtures['IResendResponse'] as Map<String, dynamic>;
    final model = ResendResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ResendResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRestoreResponse synthetic fields survive serialization', () {
    final json = fixtures['IRestoreResponse'] as Map<String, dynamic>;
    final model = RestoreResponse.fromJson(json);
    final encoded = model.toJson();
    final again = RestoreResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRestoreResendResponse synthetic fields survive serialization', () {
    final json = fixtures['IRestoreResendResponse'] as Map<String, dynamic>;
    final model = RestoreResendResponse.fromJson(json);
    final encoded = model.toJson();
    final again = RestoreResendResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRestoreVerifyResponse synthetic fields survive serialization', () {
    final json = fixtures['IRestoreVerifyResponse'] as Map<String, dynamic>;
    final model = RestoreVerifyResponse.fromJson(json);
    final encoded = model.toJson();
    final again = RestoreVerifyResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISignInResponse synthetic fields survive serialization', () {
    final json = fixtures['ISignInResponse'] as Map<String, dynamic>;
    final model = SignInResponse.fromJson(json);
    final encoded = model.toJson();
    final again = SignInResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IGoogleResponse synthetic fields survive serialization', () {
    final json = fixtures['IGoogleResponse'] as Map<String, dynamic>;
    final model = GoogleResponse.fromJson(json);
    final encoded = model.toJson();
    final again = GoogleResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ITelegramResponse synthetic fields survive serialization', () {
    final json = fixtures['ITelegramResponse'] as Map<String, dynamic>;
    final model = TelegramResponse.fromJson(json);
    final encoded = model.toJson();
    final again = TelegramResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IVkResponse synthetic fields survive serialization', () {
    final json = fixtures['IVkResponse'] as Map<String, dynamic>;
    final model = VkResponse.fromJson(json);
    final encoded = model.toJson();
    final again = VkResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IYandexResponse synthetic fields survive serialization', () {
    final json = fixtures['IYandexResponse'] as Map<String, dynamic>;
    final model = YandexResponse.fromJson(json);
    final encoded = model.toJson();
    final again = YandexResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannel synthetic fields survive serialization', () {
    final json = fixtures['IChannel'] as Map<String, dynamic>;
    final model = Channel.fromJson(json);
    final encoded = model.toJson();
    final again = Channel.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelCompact synthetic fields survive serialization', () {
    final json = fixtures['IChannelCompact'] as Map<String, dynamic>;
    final model = ChannelCompact.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelProfile synthetic fields survive serialization', () {
    final json = fixtures['IChannelProfile'] as Map<String, dynamic>;
    final model = ChannelProfile.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelProfile.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelBlock synthetic fields survive serialization', () {
    final json = fixtures['IChannelBlock'] as Map<String, dynamic>;
    final model = ChannelBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEditorChannel synthetic fields survive serialization', () {
    final json = fixtures['IEditorChannel'] as Map<String, dynamic>;
    final model = EditorChannel.fromJson(json);
    final encoded = model.toJson();
    final again = EditorChannel.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelBlockManageRequest synthetic fields survive serialization', () {
    final json = fixtures['IChannelBlockManageRequest'] as Map<String, dynamic>;
    final model = ChannelBlockManageRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelBlockManageRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelsFilterRequest synthetic fields survive serialization', () {
    final json = fixtures['IChannelsFilterRequest'] as Map<String, dynamic>;
    final model = ChannelsFilterRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelsFilterRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelCreateEditRequest synthetic fields survive serialization', () {
    final json = fixtures['IChannelCreateEditRequest'] as Map<String, dynamic>;
    final model = ChannelCreateEditRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelCreateEditRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IChannelPermissionManageRequest synthetic fields survive serialization',
    () {
      final json =
          fixtures['IChannelPermissionManageRequest'] as Map<String, dynamic>;
      final model = ChannelPermissionManageRequest.fromJson(json);
      final encoded = model.toJson();
      final again = ChannelPermissionManageRequest.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('ITypeChannelResponse synthetic fields survive serialization', () {
    final json = fixtures['ITypeChannelResponse'] as Map<String, dynamic>;
    final model = TypeChannelResponse.fromJson(json);
    final encoded = model.toJson();
    final again = TypeChannelResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IChannelUploadCoverAvatarResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['IChannelUploadCoverAvatarResponse'] as Map<String, dynamic>;
      final model = ChannelUploadCoverAvatarResponse.fromJson(json);
      final encoded = model.toJson();
      final again = ChannelUploadCoverAvatarResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IChannelBlockResponse synthetic fields survive serialization', () {
    final json = fixtures['IChannelBlockResponse'] as Map<String, dynamic>;
    final model = ChannelBlockResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelBlockResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelResponse synthetic fields survive serialization', () {
    final json = fixtures['IChannelResponse'] as Map<String, dynamic>;
    final model = ChannelResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelCreateEditResponse synthetic fields survive serialization', () {
    final json = fixtures['IChannelCreateEditResponse'] as Map<String, dynamic>;
    final model = ChannelCreateEditResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelCreateEditResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IBlogCreateResponse synthetic fields survive serialization', () {
    final json = fixtures['IBlogCreateResponse'] as Map<String, dynamic>;
    final model = BlogCreateResponse.fromJson(json);
    final encoded = model.toJson();
    final again = BlogCreateResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEditorAvailableResponse synthetic fields survive serialization', () {
    final json = fixtures['IEditorAvailableResponse'] as Map<String, dynamic>;
    final model = EditorAvailableResponse.fromJson(json);
    final encoded = model.toJson();
    final again = EditorAvailableResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEditorChannelsResponse synthetic fields survive serialization', () {
    final json = fixtures['IEditorChannelsResponse'] as Map<String, dynamic>;
    final model = EditorChannelsResponse.fromJson(json);
    final encoded = model.toJson();
    final again = EditorChannelsResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISubscriptionCountResponse synthetic fields survive serialization', () {
    final json = fixtures['ISubscriptionCountResponse'] as Map<String, dynamic>;
    final model = SubscriptionCountResponse.fromJson(json);
    final encoded = model.toJson();
    final again = SubscriptionCountResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICollection synthetic fields survive serialization', () {
    final json = fixtures['ICollection'] as Map<String, dynamic>;
    final model = Collection.fromJson(json);
    final encoded = model.toJson();
    final again = Collection.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICollectionResponse synthetic fields survive serialization', () {
    final json = fixtures['ICollectionResponse'] as Map<String, dynamic>;
    final model = CollectionResponse.fromJson(json);
    final encoded = model.toJson();
    final again = CollectionResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICollectionComment synthetic fields survive serialization', () {
    final json = fixtures['ICollectionComment'] as Map<String, dynamic>;
    final model = CollectionComment.fromJson(json);
    final encoded = model.toJson();
    final again = CollectionComment.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICollectionCommentCompact synthetic fields survive serialization', () {
    final json = fixtures['ICollectionCommentCompact'] as Map<String, dynamic>;
    final model = CollectionCommentCompact.fromJson(json);
    final encoded = model.toJson();
    final again = CollectionCommentCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICollectionCompact synthetic fields survive serialization', () {
    final json = fixtures['ICollectionCompact'] as Map<String, dynamic>;
    final model = CollectionCompact.fromJson(json);
    final encoded = model.toJson();
    final again = CollectionCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'ICollectionCreateEditRequest synthetic fields survive serialization',
    () {
      final json =
          fixtures['ICollectionCreateEditRequest'] as Map<String, dynamic>;
      final model = CollectionCreateEditRequest.fromJson(json);
      final encoded = model.toJson();
      final again = CollectionCreateEditRequest.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'ICollectionCreateEditResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['ICollectionCreateEditResponse'] as Map<String, dynamic>;
      final model = CollectionCreateEditResponse.fromJson(json);
      final encoded = model.toJson();
      final again = CollectionCreateEditResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'ICollectionEditImageResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['ICollectionEditImageResponse'] as Map<String, dynamic>;
      final model = CollectionEditImageResponse.fromJson(json);
      final encoded = model.toJson();
      final again = CollectionEditImageResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IResponse synthetic fields survive serialization', () {
    final json = fixtures['IResponse'] as Map<String, dynamic>;
    final model = ApiResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ApiResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IPageableResponse synthetic fields survive serialization', () {
    final json = fixtures['IPageableResponse'] as Map<String, dynamic>;
    final model = PageableResponse<int>.fromJson(
      json,
      (value) => (value as num).toInt(),
    );
    final encoded = model.toJson((value) => value);
    final again = PageableResponse<int>.fromJson(
      encoded,
      (value) => (value as num).toInt(),
    );
    expect(again.toJson((value) => value), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICommonComment synthetic fields survive serialization', () {
    final json = fixtures['ICommonComment'] as Map<String, dynamic>;
    final model = CommonComment<int>.fromJson(
      json,
      (value) => (value as num).toInt(),
    );
    final encoded = model.toJson((value) => value);
    final again = CommonComment<int>.fromJson(
      encoded,
      (value) => (value as num).toInt(),
    );
    expect(again.toJson((value) => value), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICommonCommentCompact synthetic fields survive serialization', () {
    final json = fixtures['ICommonCommentCompact'] as Map<String, dynamic>;
    final model = CommonCommentCompact.fromJson(json);
    final encoded = model.toJson();
    final again = CommonCommentCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICommonProfileNotification synthetic fields survive serialization', () {
    final json = fixtures['ICommonProfileNotification'] as Map<String, dynamic>;
    final model = CommonProfileNotification.fromJson(json);
    final encoded = model.toJson();
    final again = CommonProfileNotification.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICommonCommentEditRequest synthetic fields survive serialization', () {
    final json = fixtures['ICommonCommentEditRequest'] as Map<String, dynamic>;
    final model = CommonCommentEditRequest.fromJson(json);
    final encoded = model.toJson();
    final again = CommonCommentEditRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICommonCommentAddRequest synthetic fields survive serialization', () {
    final json = fixtures['ICommonCommentAddRequest'] as Map<String, dynamic>;
    final model = CommonCommentAddRequest.fromJson(json);
    final encoded = model.toJson();
    final again = CommonCommentAddRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ICommonCommentAddResponse synthetic fields survive serialization', () {
    final json = fixtures['ICommonCommentAddResponse'] as Map<String, dynamic>;
    final model = CommonCommentAddResponse<int>.fromJson(
      json,
      (value) => (value as num).toInt(),
    );
    final encoded = model.toJson((value) => value);
    final again = CommonCommentAddResponse<int>.fromJson(
      encoded,
      (value) => (value as num).toInt(),
    );
    expect(again.toJson((value) => value), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IAnixPlayerConfigResponse synthetic fields survive serialization', () {
    final json = fixtures['IAnixPlayerConfigResponse'] as Map<String, dynamic>;
    final model = AnixPlayerConfigResponse.fromJson(json);
    final encoded = model.toJson();
    final again = AnixPlayerConfigResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IToggleResponse synthetic fields survive serialization', () {
    final json = fixtures['IToggleResponse'] as Map<String, dynamic>;
    final model = ToggleResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ToggleResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IConfigUrlsResponse synthetic fields survive serialization', () {
    final json = fixtures['IConfigUrlsResponse'] as Map<String, dynamic>;
    final model = ConfigUrlsResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ConfigUrlsResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('INotificationCountResponse synthetic fields survive serialization', () {
    final json = fixtures['INotificationCountResponse'] as Map<String, dynamic>;
    final model = NotificationCountResponse.fromJson(json);
    final encoded = model.toJson();
    final again = NotificationCountResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IProfileCommentNotification synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileCommentNotification'] as Map<String, dynamic>;
      final model = ProfileCommentNotification<int>.fromJson(
        json,
        (value) => (value as num).toInt(),
      );
      final encoded = model.toJson((value) => value);
      final again = ProfileCommentNotification<int>.fromJson(
        encoded,
        (value) => (value as num).toInt(),
      );
      expect(again.toJson((value) => value), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IProfileFriendNotification synthetic fields survive serialization', () {
    final json = fixtures['IProfileFriendNotification'] as Map<String, dynamic>;
    final model = ProfileFriendNotification.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileFriendNotification.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IProfileArticleNotification synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileArticleNotification'] as Map<String, dynamic>;
      final model = ProfileArticleNotification.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileArticleNotification.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IProfileRelatedReleaseNotification synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileRelatedReleaseNotification']
              as Map<String, dynamic>;
      final model = ProfileRelatedReleaseNotification.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileRelatedReleaseNotification.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IProfileEpisodeNotification synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileEpisodeNotification'] as Map<String, dynamic>;
      final model = ProfileEpisodeNotification.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileEpisodeNotification.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IProfileTypeNotificationPreference synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileTypeNotificationPreference']
              as Map<String, dynamic>;
      final model = ProfileTypeNotificationPreference.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileTypeNotificationPreference.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IProfileStatusNotificationPreference synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileStatusNotificationPreference']
              as Map<String, dynamic>;
      final model = ProfileStatusNotificationPreference.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileStatusNotificationPreference.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IReleaseTypeNotificationEditRequest synthetic fields survive serialization',
    () {
      final json =
          fixtures['IReleaseTypeNotificationEditRequest']
              as Map<String, dynamic>;
      final model = ReleaseTypeNotificationEditRequest.fromJson(json);
      final encoded = model.toJson();
      final again = ReleaseTypeNotificationEditRequest.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IStatusNotificationEditRequest synthetic fields survive serialization',
    () {
      final json =
          fixtures['IStatusNotificationEditRequest'] as Map<String, dynamic>;
      final model = StatusNotificationEditRequest.fromJson(json);
      final encoded = model.toJson();
      final again = StatusNotificationEditRequest.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IProfileTypeNotificationEditRequest synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileTypeNotificationEditRequest']
              as Map<String, dynamic>;
      final model = ProfileTypeNotificationEditRequest.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileTypeNotificationEditRequest.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'INotificationPreferenceResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['INotificationPreferenceResponse'] as Map<String, dynamic>;
      final model = NotificationPreferenceResponse.fromJson(json);
      final encoded = model.toJson();
      final again = NotificationPreferenceResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IReleaseTypeNotificationResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['IReleaseTypeNotificationResponse'] as Map<String, dynamic>;
      final model = ReleaseTypeNotificationResponse.fromJson(json);
      final encoded = model.toJson();
      final again = ReleaseTypeNotificationResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IChangeEmailRequest synthetic fields survive serialization', () {
    final json = fixtures['IChangeEmailRequest'] as Map<String, dynamic>;
    final model = ChangeEmailRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChangeEmailRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangeEmailResendRequest synthetic fields survive serialization', () {
    final json = fixtures['IChangeEmailResendRequest'] as Map<String, dynamic>;
    final model = ChangeEmailResendRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChangeEmailResendRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangeEmailVerifyRequest synthetic fields survive serialization', () {
    final json = fixtures['IChangeEmailVerifyRequest'] as Map<String, dynamic>;
    final model = ChangeEmailVerifyRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChangeEmailVerifyRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangePasswordRequest synthetic fields survive serialization', () {
    final json = fixtures['IChangePasswordRequest'] as Map<String, dynamic>;
    final model = ChangePasswordRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChangePasswordRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISocialRequest synthetic fields survive serialization', () {
    final json = fixtures['ISocialRequest'] as Map<String, dynamic>;
    final model = SocialRequest.fromJson(json);
    final encoded = model.toJson();
    final again = SocialRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangeEmailResponse synthetic fields survive serialization', () {
    final json = fixtures['IChangeEmailResponse'] as Map<String, dynamic>;
    final model = ChangeEmailResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ChangeEmailResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangeEmailResendResponse synthetic fields survive serialization', () {
    final json = fixtures['IChangeEmailResendResponse'] as Map<String, dynamic>;
    final model = ChangeEmailResendResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ChangeEmailResendResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangeLoginResponse synthetic fields survive serialization', () {
    final json = fixtures['IChangeLoginResponse'] as Map<String, dynamic>;
    final model = ChangeLoginResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ChangeLoginResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ILoginInfoResponse synthetic fields survive serialization', () {
    final json = fixtures['ILoginInfoResponse'] as Map<String, dynamic>;
    final model = LoginInfoResponse.fromJson(json);
    final encoded = model.toJson();
    final again = LoginInfoResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangePasswordResponse synthetic fields survive serialization', () {
    final json = fixtures['IChangePasswordResponse'] as Map<String, dynamic>;
    final model = ChangePasswordResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ChangePasswordResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IProfileSelectThemeResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileSelectThemeResponse'] as Map<String, dynamic>;
      final model = ProfileSelectThemeResponse.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileSelectThemeResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IProfileSocialResponse synthetic fields survive serialization', () {
    final json = fixtures['IProfileSocialResponse'] as Map<String, dynamic>;
    final model = ProfileSocialResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileSocialResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfile synthetic fields survive serialization', () {
    final json = fixtures['IProfile'] as Map<String, dynamic>;
    final model = Profile.fromJson(json);
    final encoded = model.toJson();
    final again = Profile.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfileCompact synthetic fields survive serialization', () {
    final json = fixtures['IProfileCompact'] as Map<String, dynamic>;
    final model = ProfileCompact.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfileSlim synthetic fields survive serialization', () {
    final json = fixtures['IProfileSlim'] as Map<String, dynamic>;
    final model = ProfileSlim.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileSlim.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfileToken synthetic fields survive serialization', () {
    final json = fixtures['IProfileToken'] as Map<String, dynamic>;
    final model = ProfileToken.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileToken.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IPreferredType synthetic fields survive serialization', () {
    final json = fixtures['IPreferredType'] as Map<String, dynamic>;
    final model = PreferredType.fromJson(json);
    final encoded = model.toJson();
    final again = PreferredType.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRole synthetic fields survive serialization', () {
    final json = fixtures['IRole'] as Map<String, dynamic>;
    final model = Role.fromJson(json);
    final encoded = model.toJson();
    final again = Role.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IBadge synthetic fields survive serialization', () {
    final json = fixtures['IBadge'] as Map<String, dynamic>;
    final model = Badge.fromJson(json);
    final encoded = model.toJson();
    final again = Badge.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IWatchDynamics synthetic fields survive serialization', () {
    final json = fixtures['IWatchDynamics'] as Map<String, dynamic>;
    final model = WatchDynamics.fromJson(json);
    final encoded = model.toJson();
    final again = WatchDynamics.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChangeLogin synthetic fields survive serialization', () {
    final json = fixtures['IChangeLogin'] as Map<String, dynamic>;
    final model = ChangeLogin.fromJson(json);
    final encoded = model.toJson();
    final again = ChangeLogin.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfileEnforcement synthetic fields survive serialization', () {
    final json = fixtures['IProfileEnforcement'] as Map<String, dynamic>;
    final model = ProfileEnforcement.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileEnforcement.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfileRole synthetic fields survive serialization', () {
    final json = fixtures['IProfileRole'] as Map<String, dynamic>;
    final model = ProfileRole.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileRole.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IAvailableTheme synthetic fields survive serialization', () {
    final json = fixtures['IAvailableTheme'] as Map<String, dynamic>;
    final model = AvailableTheme.fromJson(json);
    final encoded = model.toJson();
    final again = AvailableTheme.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ITheme synthetic fields survive serialization', () {
    final json = fixtures['ITheme'] as Map<String, dynamic>;
    final model = Theme.fromJson(json);
    final encoded = model.toJson();
    final again = Theme.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IBookmarksExportRequest synthetic fields survive serialization', () {
    final json = fixtures['IBookmarksExportRequest'] as Map<String, dynamic>;
    final model = BookmarksExportRequest.fromJson(json);
    final encoded = model.toJson();
    final again = BookmarksExportRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IBookmarksImportRequest synthetic fields survive serialization', () {
    final json = fixtures['IBookmarksImportRequest'] as Map<String, dynamic>;
    final model = BookmarksImportRequest.fromJson(json);
    final encoded = model.toJson();
    final again = BookmarksImportRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfileInfoResponse synthetic fields survive serialization', () {
    final json = fixtures['IProfileInfoResponse'] as Map<String, dynamic>;
    final model = ProfileInfoResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileInfoResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfileResponse synthetic fields survive serialization', () {
    final json = fixtures['IProfileResponse'] as Map<String, dynamic>;
    final model = ProfileResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IFriendStatusResponse synthetic fields survive serialization', () {
    final json = fixtures['IFriendStatusResponse'] as Map<String, dynamic>;
    final model = FriendStatusResponse.fromJson(json);
    final encoded = model.toJson();
    final again = FriendStatusResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IProfileEnforcementResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileEnforcementResponse'] as Map<String, dynamic>;
      final model = ProfileEnforcementResponse.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileEnforcementResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test(
    'IProfileHealthStatusResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileHealthStatusResponse'] as Map<String, dynamic>;
      final model = ProfileHealthStatusResponse.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileHealthStatusResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IProfileDeletionResponse synthetic fields survive serialization', () {
    final json = fixtures['IProfileDeletionResponse'] as Map<String, dynamic>;
    final model = ProfileDeletionResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ProfileDeletionResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IProfilePreferenceResponse synthetic fields survive serialization', () {
    final json = fixtures['IProfilePreferenceResponse'] as Map<String, dynamic>;
    final model = ProfilePreferenceResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ProfilePreferenceResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IBookmarksExportResponse synthetic fields survive serialization', () {
    final json = fixtures['IBookmarksExportResponse'] as Map<String, dynamic>;
    final model = BookmarksExportResponse.fromJson(json);
    final encoded = model.toJson();
    final again = BookmarksExportResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRelease synthetic fields survive serialization', () {
    final json = fixtures['IRelease'] as Map<String, dynamic>;
    final model = Release.fromJson(json);
    final encoded = model.toJson();
    final again = Release.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseCompact synthetic fields survive serialization', () {
    final json = fixtures['IReleaseCompact'] as Map<String, dynamic>;
    final model = ReleaseCompact.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEpisodeUpdate synthetic fields survive serialization', () {
    final json = fixtures['IEpisodeUpdate'] as Map<String, dynamic>;
    final model = EpisodeUpdate.fromJson(json);
    final encoded = model.toJson();
    final again = EpisodeUpdate.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseStatus synthetic fields survive serialization', () {
    final json = fixtures['IReleaseStatus'] as Map<String, dynamic>;
    final model = ReleaseStatusInfo.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseStatusInfo.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseComment synthetic fields survive serialization', () {
    final json = fixtures['IReleaseComment'] as Map<String, dynamic>;
    final model = ReleaseComment.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseComment.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseCommentCompact synthetic fields survive serialization', () {
    final json = fixtures['IReleaseCommentCompact'] as Map<String, dynamic>;
    final model = ReleaseCommentCompact.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseCommentCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEpisode synthetic fields survive serialization', () {
    final json = fixtures['IEpisode'] as Map<String, dynamic>;
    final model = Episode.fromJson(json);
    final encoded = model.toJson();
    final again = Episode.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEpisodeCompact synthetic fields survive serialization', () {
    final json = fixtures['IEpisodeCompact'] as Map<String, dynamic>;
    final model = EpisodeCompact.fromJson(json);
    final encoded = model.toJson();
    final again = EpisodeCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISource synthetic fields survive serialization', () {
    final json = fixtures['ISource'] as Map<String, dynamic>;
    final model = Source.fromJson(json);
    final encoded = model.toJson();
    final again = Source.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISourceCompact synthetic fields survive serialization', () {
    final json = fixtures['ISourceCompact'] as Map<String, dynamic>;
    final model = SourceCompact.fromJson(json);
    final encoded = model.toJson();
    final again = SourceCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IProfileReleaseTypeNotificationPreference synthetic fields survive serialization',
    () {
      final json =
          fixtures['IProfileReleaseTypeNotificationPreference']
              as Map<String, dynamic>;
      final model = ProfileReleaseTypeNotificationPreference.fromJson(json);
      final encoded = model.toJson();
      final again = ProfileReleaseTypeNotificationPreference.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('IDubber synthetic fields survive serialization', () {
    final json = fixtures['IDubber'] as Map<String, dynamic>;
    final model = Dubber.fromJson(json);
    final encoded = model.toJson();
    final again = Dubber.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IDubberCompact synthetic fields survive serialization', () {
    final json = fixtures['IDubberCompact'] as Map<String, dynamic>;
    final model = DubberCompact.fromJson(json);
    final encoded = model.toJson();
    final again = DubberCompact.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseVideo synthetic fields survive serialization', () {
    final json = fixtures['IReleaseVideo'] as Map<String, dynamic>;
    final model = ReleaseVideo.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseVideo.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseVideoBanner synthetic fields survive serialization', () {
    final json = fixtures['IReleaseVideoBanner'] as Map<String, dynamic>;
    final model = ReleaseVideoBanner.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseVideoBanner.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IRelated synthetic fields survive serialization', () {
    final json = fixtures['IRelated'] as Map<String, dynamic>;
    final model = Related.fromJson(json);
    final encoded = model.toJson();
    final again = Related.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseStreamingPlatform synthetic fields survive serialization', () {
    final json = fixtures['IReleaseStreamingPlatform'] as Map<String, dynamic>;
    final model = ReleaseStreamingPlatform.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseStreamingPlatform.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseVideoCategory synthetic fields survive serialization', () {
    final json = fixtures['IReleaseVideoCategory'] as Map<String, dynamic>;
    final model = ReleaseVideoCategory.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseVideoCategory.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseVideoBlock synthetic fields survive serialization', () {
    final json = fixtures['IReleaseVideoBlock'] as Map<String, dynamic>;
    final model = ReleaseVideoBlock.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseVideoBlock.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IInteresting synthetic fields survive serialization', () {
    final json = fixtures['IInteresting'] as Map<String, dynamic>;
    final model = Interesting.fromJson(json);
    final encoded = model.toJson();
    final again = Interesting.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseVideoAppealRequest synthetic fields survive serialization', () {
    final json = fixtures['IReleaseVideoAppealRequest'] as Map<String, dynamic>;
    final model = ReleaseVideoAppealRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseVideoAppealRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IFilterRequest synthetic fields survive serialization', () {
    final json = fixtures['IFilterRequest'] as Map<String, dynamic>;
    final model = FilterRequest.fromJson(json);
    final encoded = model.toJson();
    final again = FilterRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEpisodeTargetResponse synthetic fields survive serialization', () {
    final json = fixtures['IEpisodeTargetResponse'] as Map<String, dynamic>;
    final model = EpisodeTargetResponse.fromJson(json);
    final encoded = model.toJson();
    final again = EpisodeTargetResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IEpisodeResponse synthetic fields survive serialization', () {
    final json = fixtures['IEpisodeResponse'] as Map<String, dynamic>;
    final model = EpisodeResponse.fromJson(json);
    final encoded = model.toJson();
    final again = EpisodeResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IDubbersResponse synthetic fields survive serialization', () {
    final json = fixtures['IDubbersResponse'] as Map<String, dynamic>;
    final model = DubbersResponse.fromJson(json);
    final encoded = model.toJson();
    final again = DubbersResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISourcesResponse synthetic fields survive serialization', () {
    final json = fixtures['ISourcesResponse'] as Map<String, dynamic>;
    final model = SourcesResponse.fromJson(json);
    final encoded = model.toJson();
    final again = SourcesResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseResponse synthetic fields survive serialization', () {
    final json = fixtures['IReleaseResponse'] as Map<String, dynamic>;
    final model = ReleaseResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IScheduleResponse synthetic fields survive serialization', () {
    final json = fixtures['IScheduleResponse'] as Map<String, dynamic>;
    final model = ScheduleResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ScheduleResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseVideoResponse synthetic fields survive serialization', () {
    final json = fixtures['IReleaseVideoResponse'] as Map<String, dynamic>;
    final model = ReleaseVideoResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseVideoResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test(
    'IReleaseVideoCategoriesResponse synthetic fields survive serialization',
    () {
      final json =
          fixtures['IReleaseVideoCategoriesResponse'] as Map<String, dynamic>;
      final model = ReleaseVideoCategoriesResponse.fromJson(json);
      final encoded = model.toJson();
      final again = ReleaseVideoCategoriesResponse.fromJson(encoded);
      expect(again.toJson(), encoded);
      expect(encoded.keys, containsAll(json.keys));
    },
  );
  test('ITypeResponse synthetic fields survive serialization', () {
    final json = fixtures['ITypeResponse'] as Map<String, dynamic>;
    final model = TypeResponse.fromJson(json);
    final encoded = model.toJson();
    final again = TypeResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReportReason synthetic fields survive serialization', () {
    final json = fixtures['IReportReason'] as Map<String, dynamic>;
    final model = ReportReason.fromJson(json);
    final encoded = model.toJson();
    final again = ReportReason.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReportRequest synthetic fields survive serialization', () {
    final json = fixtures['IReportRequest'] as Map<String, dynamic>;
    final model = ReportRequest<int>.fromJson(
      json,
      (value) => (value as num).toInt(),
    );
    final encoded = model.toJson((value) => value);
    final again = ReportRequest<int>.fromJson(
      encoded,
      (value) => (value as num).toInt(),
    );
    expect(again.toJson((value) => value), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IArticlesSearchRequest synthetic fields survive serialization', () {
    final json = fixtures['IArticlesSearchRequest'] as Map<String, dynamic>;
    final model = ArticlesSearchRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ArticlesSearchRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IChannelsSearchRequest synthetic fields survive serialization', () {
    final json = fixtures['IChannelsSearchRequest'] as Map<String, dynamic>;
    final model = ChannelsSearchRequest.fromJson(json);
    final encoded = model.toJson();
    final again = ChannelsSearchRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('ISearchRequest synthetic fields survive serialization', () {
    final json = fixtures['ISearchRequest'] as Map<String, dynamic>;
    final model = SearchRequest.fromJson(json);
    final encoded = model.toJson();
    final again = SearchRequest.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IReleaseSearchResponse synthetic fields survive serialization', () {
    final json = fixtures['IReleaseSearchResponse'] as Map<String, dynamic>;
    final model = ReleaseSearchResponse.fromJson(json);
    final encoded = model.toJson();
    final again = ReleaseSearchResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
  test('IFeedSearchResponse synthetic fields survive serialization', () {
    final json = fixtures['IFeedSearchResponse'] as Map<String, dynamic>;
    final model = FeedSearchResponse.fromJson(json);
    final encoded = model.toJson();
    final again = FeedSearchResponse.fromJson(encoded);
    expect(again.toJson(), encoded);
    expect(encoded.keys, containsAll(json.keys));
  });
}
