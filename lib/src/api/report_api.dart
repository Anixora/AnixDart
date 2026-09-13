import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class ReportApi {
  const ReportApi(this._http);
  final AnixartHttpClient _http;

  Future<List<ReportReason>> reasons(
    ReportType type, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<List<ReportReason>>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/report/${type.value}/reasons",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => (value as List)
          .map((item) => ReportReason.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
    return response.data;
  }

  Future<ApiResponse> send<T>(
    ReportType type,
    ReportRequest<T> data, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final entity = data.entityId;
    if (entity != null &&
        (type == ReportType.episode ? entity is! Episode : entity is! num)) {
      throw ArgumentError.value(
        entity,
        'data.entityId',
        'Payload does not match report type',
      );
    }
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.post,
        path: "/report/${type.value}",
        auth: const AnixartAuth(),
        body: JsonBody(
          data.toJson((value) => value is Episode ? value.toJson() : value),
        ),
        resultEnum: {for (final e in ReportResult.values) e.value: e.codeName},
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
