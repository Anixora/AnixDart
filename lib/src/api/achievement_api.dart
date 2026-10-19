import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class AchievementApi {
  const AchievementApi(this._http);
  final AnixartHttpClient _http;

  Future<ApiResponse> get(
    String code, {
    int? badgeId,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/achievement/get/${Uri.encodeComponent(code)}',
        auth: const AnixartAuth(),
        query: {'badge_id': badgeId},
        resultEnum: {
          for (final e in AchievementResult.values) e.value: e.codeName,
        },
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<AchievementPreviewResponse> preview(
    String code, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<AchievementPreviewResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: '/achievement/preview/${Uri.encodeComponent(code)}',
        options: options,
      ),
      decoder: (value) =>
          AchievementPreviewResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
