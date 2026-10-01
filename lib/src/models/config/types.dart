import 'package:json_annotation/json_annotation.dart';
part 'types.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class AnixPlayerConfigResponse {
  const AnixPlayerConfigResponse({
    required this.downloadLinks,
    required this.lastVersionCode,
    required this.whatsNew,
  });

  @JsonKey(name: 'download_links')
  final Map<String, String> downloadLinks;

  @JsonKey(name: 'last_version_code')
  final int lastVersionCode;

  @JsonKey(name: 'whats_new')
  final String whatsNew;

  factory AnixPlayerConfigResponse.fromJson(Map<String, dynamic> json) =>
      _$AnixPlayerConfigResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AnixPlayerConfigResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ToggleResponse {
  const ToggleResponse({
    required this.adBannerDelay,
    required this.adBannerSizeType,
    required this.adInterstitialDelay,
    required this.codecProfile,
    required this.impMessageEnabled,
    required this.inAppUpdates,
    required this.inAppUpdatesFlexibleDelay,
    required this.inAppUpdatesImmediate,
    required this.kodikIframeAd,
    required this.lastGPVersionCode,
    required this.lastVersionCode,
    required this.minBlogCreateRatingScore,
    required this.minGPVersionCode,
    required this.minVersionCode,
    required this.overrideGPVersion,
    required this.sibnetRandUserAgent,
    required this.snowfall,
    required this.sponsorshipAvailable,
    required this.sponsorshipPromotion,
    required this.whatsNew,
    required this.downloadLink,
    required this.gpWhatsNew,
    required this.gpDownloadLink,
    required this.impMessageText,
    required this.impMessageBackgroundColor,
    required this.impMessageTextColor,
    required this.impMessageLink,
    required this.adBannerBlockId,
    required this.adInterstitialBlockId,
    required this.kodikVideoLinksUrl,
    required this.sibnetUserAgent,
    required this.torlookUrl,
    required this.baseUrl,
    required this.iframeEmbedUrl,
    required this.kodikAdIframeUrl,
    required this.editorUrl,
    required this.staticDomain,
    required this.sponsorshipText,
    required this.pageNoConnectionUrl,
    required this.searchBarIconUrl,
    required this.searchBarIconTint,
    required this.searchBarIconAction,
    required this.searchBarIconValue,
    required this.googleAuthAvailable,
    required this.telegramAuthAvailable,
    required this.vkAuthAvailable,
    required this.consentRequired,
  });

  @JsonKey(name: 'adBannerDelay')
  final int adBannerDelay;

  @JsonKey(name: 'adBannerSizeType')
  final int adBannerSizeType;

  @JsonKey(name: 'adInterstitialDelay')
  final int adInterstitialDelay;

  @JsonKey(name: 'codecProfile')
  final String codecProfile;

  @JsonKey(name: 'impMessageEnabled')
  final bool impMessageEnabled;

  @JsonKey(name: 'inAppUpdates')
  final bool inAppUpdates;

  @JsonKey(name: 'inAppUpdatesFlexibleDelay')
  final int inAppUpdatesFlexibleDelay;

  @JsonKey(name: 'inAppUpdatesImmediate')
  final bool inAppUpdatesImmediate;

  @JsonKey(name: 'kodikIframeAd')
  final bool kodikIframeAd;

  @JsonKey(name: 'lastGPVersionCode')
  final int lastGPVersionCode;

  @JsonKey(name: 'lastVersionCode')
  final int lastVersionCode;

  @JsonKey(name: 'minBlogCreateRatingScore')
  final int minBlogCreateRatingScore;

  @JsonKey(name: 'minGPVersionCode')
  final int minGPVersionCode;

  @JsonKey(name: 'minVersionCode')
  final int minVersionCode;

  @JsonKey(name: 'overrideGPVersion')
  final bool overrideGPVersion;

  @JsonKey(name: 'sibnetRandUserAgent')
  final bool sibnetRandUserAgent;

  @JsonKey(name: 'snowfall')
  final bool snowfall;

  @JsonKey(name: 'sponsorshipAvailable')
  final bool sponsorshipAvailable;

  @JsonKey(name: 'sponsorshipPromotion')
  final bool sponsorshipPromotion;

  @JsonKey(name: 'whatsNew')
  final String whatsNew;

  @JsonKey(name: 'downloadLink')
  final String downloadLink;

  @JsonKey(name: 'gpWhatsNew')
  final String gpWhatsNew;

  @JsonKey(name: 'gpDownloadLink')
  final String gpDownloadLink;

  @JsonKey(name: 'impMessageText')
  final String impMessageText;

  @JsonKey(name: 'impMessageBackgroundColor')
  final String impMessageBackgroundColor;

  @JsonKey(name: 'impMessageTextColor')
  final String impMessageTextColor;

  @JsonKey(name: 'impMessageLink')
  final String impMessageLink;

  @JsonKey(name: 'adBannerBlockId')
  final String adBannerBlockId;

  @JsonKey(name: 'adInterstitialBlockId')
  final String adInterstitialBlockId;

  @JsonKey(name: 'kodikVideoLinksUrl')
  final String kodikVideoLinksUrl;

  @JsonKey(name: 'sibnetUserAgent')
  final String sibnetUserAgent;

  @JsonKey(name: 'torlookUrl')
  final String torlookUrl;

  @JsonKey(name: 'baseUrl')
  final String baseUrl;

  @JsonKey(name: 'iframeEmbedUrl')
  final String iframeEmbedUrl;

  @JsonKey(name: 'kodikAdIframeUrl')
  final String kodikAdIframeUrl;

  @JsonKey(name: 'editorUrl')
  final String editorUrl;

  @JsonKey(name: 'staticDomain')
  final String staticDomain;

  @JsonKey(name: 'sponsorshipText')
  final String sponsorshipText;

  @JsonKey(name: 'pageNoConnectionUrl')
  final String pageNoConnectionUrl;

  @JsonKey(name: 'searchBarIconUrl')
  final String searchBarIconUrl;

  @JsonKey(name: 'searchBarIconTint')
  final String searchBarIconTint;

  @JsonKey(name: 'searchBarIconAction')
  final String searchBarIconAction;

  @JsonKey(name: 'searchBarIconValue')
  final String searchBarIconValue;

  @JsonKey(name: 'googleAuthAvailable')
  final bool googleAuthAvailable;

  @JsonKey(name: 'telegramAuthAvailable')
  final bool telegramAuthAvailable;

  @JsonKey(name: 'vkAuthAvailable')
  final bool vkAuthAvailable;

  @JsonKey(name: 'consentRequired')
  final bool consentRequired;

  factory ToggleResponse.fromJson(Map<String, dynamic> json) =>
      _$ToggleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ToggleResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ConfigUrlsResponse {
  const ConfigUrlsResponse({
    required this.apiUrls,
    this.editorUrl,
    this.staticDomain,
    required this.shouldUseMirrorUrls,
    required this.googleAuthAvailable,
    required this.telegramAuthAvailable,
    required this.vkAuthAvailable,
    required this.yandexAuthAvailable,
    required this.consentRequired,
  });

  @JsonKey(name: 'api_urls')
  final List<String> apiUrls;

  @JsonKey(name: 'editor_url')
  final String? editorUrl;

  @JsonKey(name: 'static_domain')
  final String? staticDomain;

  @JsonKey(name: 'should_use_mirror_urls')
  final bool shouldUseMirrorUrls;

  @JsonKey(name: 'google_auth_available')
  final bool googleAuthAvailable;

  @JsonKey(name: 'telegram_auth_available')
  final bool telegramAuthAvailable;

  @JsonKey(name: 'vk_auth_available')
  final bool vkAuthAvailable;

  @JsonKey(name: 'yandex_auth_available')
  final bool yandexAuthAvailable;

  @JsonKey(name: 'consent_required')
  final bool consentRequired;

  factory ConfigUrlsResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfigUrlsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigUrlsResponseToJson(this);
}
