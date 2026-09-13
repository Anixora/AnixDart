final class AnixartError implements Exception {
  const AnixartError({
    required this.message,
    required this.path,
    required this.code,
    required this.codeName,
    this.data,
  });

  final String message;
  final String path;

  final int? code;
  final String codeName;

  final Object? data;

  @override
  String toString() => message;
}
