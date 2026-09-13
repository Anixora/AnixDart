import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ReleaseStreamingPlatformApi {
  const ReleaseStreamingPlatformApi(this._http);
  final AnixartHttpClient _http;

  Future<PageableResponse<ReleaseStreamingPlatform>> get(
    int releaseId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http
        .request<PageableResponse<ReleaseStreamingPlatform>>(
          HttpRequest(
            method: HttpMethod.get,
            path: "/release/streaming/platform/${releaseId}",
            options: options,
          ),
          decoder: (value) =>
              PageableResponse<ReleaseStreamingPlatform>.fromJson(
                value as Map<String, dynamic>,
                (value) => ReleaseStreamingPlatform.fromJson(
                  value as Map<String, dynamic>,
                ),
              ),
        );
    return response.data;
  }
}
