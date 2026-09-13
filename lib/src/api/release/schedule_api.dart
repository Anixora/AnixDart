import '../../core/http/http_client.dart';
import '../../core/http/http_types.dart';
import '../../models/models.dart';

final class ScheduleApi {
  const ScheduleApi(this._http);
  final AnixartHttpClient _http;

  Future<ScheduleResponse> get({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ScheduleResponse>(
      HttpRequest(method: HttpMethod.get, path: "/schedule", options: options),
      decoder: (value) =>
          ScheduleResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
