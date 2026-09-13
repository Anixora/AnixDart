final class HttpError implements Exception {
  const HttpError({required this.message, required this.status, this.response});

  final String message;
  final int status;

  final Object? response;

  @override
  String toString() => message;
}

final class RequestCancelledException implements Exception {
  const RequestCancelledException();

  @override
  String toString() => 'HTTP request cancelled';
}
