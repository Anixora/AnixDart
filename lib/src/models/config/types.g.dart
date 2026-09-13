// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnixPlayerConfigResponse _$AnixPlayerConfigResponseFromJson(
  Map<String, dynamic> json,
) => AnixPlayerConfigResponse(
  downloadLinks: (json['download_links'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  lastVersionCode: (json['last_version_code'] as num?)?.toInt(),
  whatsNew: json['whats_new'] as String?,
);

Map<String, dynamic> _$AnixPlayerConfigResponseToJson(
  AnixPlayerConfigResponse instance,
) => <String, dynamic>{
  'download_links': instance.downloadLinks,
  'last_version_code': instance.lastVersionCode,
  'whats_new': instance.whatsNew,
};

ToggleResponse _$ToggleResponseFromJson(Map<String, dynamic> json) =>
    ToggleResponse(
      adBannerDelay: (json['adBannerDelay'] as num?)?.toInt(),
      adBannerSizeType: (json['adBannerSizeType'] as num?)?.toInt(),
      adInterstitialDelay: (json['adInterstitialDelay'] as num?)?.toInt(),
      codecProfile: json['codecProfile'] as String?,
      impMessageEnabled: json['impMessageEnabled'] as bool?,
      inAppUpdates: json['inAppUpdates'] as bool?,
      inAppUpdatesFlexibleDelay: (json['inAppUpdatesFlexibleDelay'] as num?)
          ?.toInt(),
      inAppUpdatesImmediate: json['inAppUpdatesImmediate'] as bool?,
      kodikIframeAd: json['kodikIframeAd'] as bool?,
      lastGPVersionCode: (json['lastGPVersionCode'] as num?)?.toInt(),
      lastVersionCode: (json['lastVersionCode'] as num?)?.toInt(),
      minBlogCreateRatingScore: (json['minBlogCreateRatingScore'] as num?)
          ?.toInt(),
      minGPVersionCode: (json['minGPVersionCode'] as num?)?.toInt(),
      minVersionCode: (json['minVersionCode'] as num?)?.toInt(),
      overrideGPVersion: json['overrideGPVersion'] as bool?,
      sibnetRandUserAgent: json['sibnetRandUserAgent'] as bool?,
      snowfall: json['snowfall'] as bool?,
      sponsorshipAvailable: json['sponsorshipAvailable'] as bool?,
      sponsorshipPromotion: json['sponsorshipPromotion'] as bool?,
      whatsNew: json['whatsNew'] as String?,
      downloadLink: json['downloadLink'] as String?,
      gpWhatsNew: json['gpWhatsNew'] as String?,
      gpDownloadLink: json['gpDownloadLink'] as String?,
      impMessageText: json['impMessageText'] as String?,
      impMessageBackgroundColor: json['impMessageBackgroundColor'] as String?,
      impMessageTextColor: json['impMessageTextColor'] as String?,
      impMessageLink: json['impMessageLink'] as String?,
      adBannerBlockId: json['adBannerBlockId'] as String?,
      adInterstitialBlockId: json['adInterstitialBlockId'] as String?,
      kodikVideoLinksUrl: json['kodikVideoLinksUrl'] as String?,
      sibnetUserAgent: json['sibnetUserAgent'] as String?,
      torlookUrl: json['torlookUrl'] as String?,
      baseUrl: json['baseUrl'] as String?,
      iframeEmbedUrl: json['iframeEmbedUrl'] as String?,
      kodikAdIframeUrl: json['kodikAdIframeUrl'] as String?,
      editorUrl: json['editorUrl'] as String?,
      staticDomain: json['staticDomain'] as String?,
      sponsorshipText: json['sponsorshipText'] as String?,
      pageNoConnectionUrl: json['pageNoConnectionUrl'] as String?,
      searchBarIconUrl: json['searchBarIconUrl'] as String?,
      searchBarIconTint: json['searchBarIconTint'] as String?,
      searchBarIconAction: json['searchBarIconAction'] as String?,
      searchBarIconValue: json['searchBarIconValue'] as String?,
      googleAuthAvailable: json['googleAuthAvailable'] as bool?,
      telegramAuthAvailable: json['telegramAuthAvailable'] as bool?,
      vkAuthAvailable: json['vkAuthAvailable'] as bool?,
      consentRequired: json['consentRequired'] as bool?,
    );

Map<String, dynamic> _$ToggleResponseToJson(ToggleResponse instance) =>
    <String, dynamic>{
      'adBannerDelay': instance.adBannerDelay,
      'adBannerSizeType': instance.adBannerSizeType,
      'adInterstitialDelay': instance.adInterstitialDelay,
      'codecProfile': instance.codecProfile,
      'impMessageEnabled': instance.impMessageEnabled,
      'inAppUpdates': instance.inAppUpdates,
      'inAppUpdatesFlexibleDelay': instance.inAppUpdatesFlexibleDelay,
      'inAppUpdatesImmediate': instance.inAppUpdatesImmediate,
      'kodikIframeAd': instance.kodikIframeAd,
      'lastGPVersionCode': instance.lastGPVersionCode,
      'lastVersionCode': instance.lastVersionCode,
      'minBlogCreateRatingScore': instance.minBlogCreateRatingScore,
      'minGPVersionCode': instance.minGPVersionCode,
      'minVersionCode': instance.minVersionCode,
      'overrideGPVersion': instance.overrideGPVersion,
      'sibnetRandUserAgent': instance.sibnetRandUserAgent,
      'snowfall': instance.snowfall,
      'sponsorshipAvailable': instance.sponsorshipAvailable,
      'sponsorshipPromotion': instance.sponsorshipPromotion,
      'whatsNew': instance.whatsNew,
      'downloadLink': instance.downloadLink,
      'gpWhatsNew': instance.gpWhatsNew,
      'gpDownloadLink': instance.gpDownloadLink,
      'impMessageText': instance.impMessageText,
      'impMessageBackgroundColor': instance.impMessageBackgroundColor,
      'impMessageTextColor': instance.impMessageTextColor,
      'impMessageLink': instance.impMessageLink,
      'adBannerBlockId': instance.adBannerBlockId,
      'adInterstitialBlockId': instance.adInterstitialBlockId,
      'kodikVideoLinksUrl': instance.kodikVideoLinksUrl,
      'sibnetUserAgent': instance.sibnetUserAgent,
      'torlookUrl': instance.torlookUrl,
      'baseUrl': instance.baseUrl,
      'iframeEmbedUrl': instance.iframeEmbedUrl,
      'kodikAdIframeUrl': instance.kodikAdIframeUrl,
      'editorUrl': instance.editorUrl,
      'staticDomain': instance.staticDomain,
      'sponsorshipText': instance.sponsorshipText,
      'pageNoConnectionUrl': instance.pageNoConnectionUrl,
      'searchBarIconUrl': instance.searchBarIconUrl,
      'searchBarIconTint': instance.searchBarIconTint,
      'searchBarIconAction': instance.searchBarIconAction,
      'searchBarIconValue': instance.searchBarIconValue,
      'googleAuthAvailable': instance.googleAuthAvailable,
      'telegramAuthAvailable': instance.telegramAuthAvailable,
      'vkAuthAvailable': instance.vkAuthAvailable,
      'consentRequired': instance.consentRequired,
    };

ConfigUrlsResponse _$ConfigUrlsResponseFromJson(Map<String, dynamic> json) =>
    ConfigUrlsResponse(
      apiUrls: (json['api_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      editorUrl: json['editor_url'] as String?,
      staticDomain: json['static_domain'] as String?,
      shouldUseMirrorUrls: json['should_use_mirror_urls'] as bool?,
      googleAuthAvailable: json['google_auth_available'] as bool?,
      telegramAuthAvailable: json['telegram_auth_available'] as bool?,
      vkAuthAvailable: json['vk_auth_available'] as bool?,
      yandexAuthAvailable: json['yandex_auth_available'] as bool?,
      consentRequired: json['consent_required'] as bool?,
    );

Map<String, dynamic> _$ConfigUrlsResponseToJson(ConfigUrlsResponse instance) =>
    <String, dynamic>{
      'api_urls': instance.apiUrls,
      'editor_url': instance.editorUrl,
      'static_domain': instance.staticDomain,
      'should_use_mirror_urls': instance.shouldUseMirrorUrls,
      'google_auth_available': instance.googleAuthAvailable,
      'telegram_auth_available': instance.telegramAuthAvailable,
      'vk_auth_available': instance.vkAuthAvailable,
      'yandex_auth_available': instance.yandexAuthAvailable,
      'consent_required': instance.consentRequired,
    };
