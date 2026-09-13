import 'dart:convert';

import 'package:http/http.dart' as http_pkg;

import 'endpoints.dart';
import 'http/http_client.dart';
import 'errors/http_error.dart';

const String defaultBaseUrl = 'https://api.anixsekai.com';

const String defaultUserAgent =
    'AnixartApp/10.0-26090418 '
    '(Android 14; SDK 34; x86_64; OnePlus NE2210; ru)';

const String apiEndpointsUrl =
    'https://raw.githubusercontent.com/'
    'AnixHelper/pages/refs/heads/main/urls.json';

final class Anixart {
  Anixart({
    String? baseUrl,
    String? token,
    String? userAgent,
    bool throwOnAnixartError = true,
    AnixartHttpClient? httpClient,
  }) {
    http =
        httpClient ??
        AnixartHttpClient(
          baseUrl: baseUrl ?? defaultBaseUrl,
          userAgent: userAgent ?? defaultUserAgent,
          throwOnAnixartError: throwOnAnixartError,
          token: token,
        );

    endpoints = Endpoints(this);
  }

  late final AnixartHttpClient http;
  late final Endpoints endpoints;

  void setToken(String? token) {
    http.setToken(token);
  }

  String getBaseUrl() {
    return http.getBaseUrl();
  }

  void setBaseUrl(String baseUrl) {
    http.setBaseUrl(baseUrl);
  }

  void close() {
    http.close();
  }

  static Future<Map<String, AnixartEndpointUrl>?> getEndpointUrls() async {
    final httpClient = http_pkg.Client();

    try {
      final response = await httpClient.get(Uri.parse(apiEndpointsUrl));

      if (response.statusCode < 200 || response.statusCode >= 300) {
        return null;
      }

      final decoded = jsonDecode(response.body);

      if (decoded is! Map<String, dynamic>) {
        return null;
      }

      final result = <String, AnixartEndpointUrl>{};

      for (final entry in decoded.entries) {
        final value = entry.value;

        if (value is! Map<String, dynamic>) {
          continue;
        }

        result[entry.key] = AnixartEndpointUrl.fromJson(value);
      }

      return result;
    } on http_pkg.ClientException catch (error) {
      throw HttpError(message: error.message, status: 0);
    } finally {
      httpClient.close();
    }
  }
}

final class AnixartEndpointUrl {
  const AnixartEndpointUrl({
    required this.apiUrl,
    required this.shouldUseMirrorUrls,
  });

  final String apiUrl;
  final bool shouldUseMirrorUrls;

  factory AnixartEndpointUrl.fromJson(Map<String, dynamic> json) {
    return AnixartEndpointUrl(
      apiUrl: json['api_url'] as String,
      shouldUseMirrorUrls: json['should_use_mirror_urls'] as bool,
    );
  }
}
