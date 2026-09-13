import '../core/http/http_client.dart';
import '../core/http/http_types.dart';
import '../models/models.dart';

final class TypeApi {
  const TypeApi(this._http);
  final AnixartHttpClient _http;

  Future<TypeChannelResponse> channel(
    int typeId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<TypeChannelResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/type/${typeId}/channel",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) =>
          TypeChannelResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> hideWidget(
    int typeId, {
    bool? permanent,
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/type/widget/hide/${typeId}",
        auth: const AnixartAuth(),
        query: {"permanent": permanent ?? false},
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> pin(
    int releaseId,
    int typeId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/type/pin/${releaseId}/${typeId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<TypeResponse> all({
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<TypeResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/type/all",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => TypeResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> unhideWidget(
    int typeId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/type/widget/unhide/${typeId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }

  Future<ApiResponse> unpin(
    int releaseId,
    int typeId, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final response = await _http.request<ApiResponse>(
      HttpRequest(
        method: HttpMethod.get,
        path: "/type/unpin/${releaseId}/${typeId}",
        auth: const AnixartAuth(),
        options: options,
      ),
      decoder: (value) => ApiResponse.fromJson(value as Map<String, dynamic>),
    );
    return response.data;
  }
}
