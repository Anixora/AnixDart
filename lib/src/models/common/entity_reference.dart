/// JSON-объект или числовая ссылка на сущность, полученная от API.
/// Числовые ссылки сохраняются как есть и не трактуются автоматически как ID сущности.
final class EntityReference<T> {
  const EntityReference.object(T object) : value = object, reference = null;
  const EntityReference.reference(int identity)
    : value = null,
      reference = identity;
  final T? value;
  final int? reference;

  factory EntityReference.fromJson(
    Object json,
    T Function(Object?) fromJsonT,
  ) => json is num
      ? EntityReference.reference(json.toInt())
      : EntityReference.object(fromJsonT(json));

  Object? toJson(Object? Function(T) toJsonT) =>
      reference ?? toJsonT(value as T);
}
