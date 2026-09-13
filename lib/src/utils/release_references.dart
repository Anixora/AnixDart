/// Разворачивает ссылки Jackson `@id`, не путая их с идентификаторами релизов.
/// Исходные данные не изменяются. Отсутствующие и циклические ссылки вызывают явную ошибку.
Map<String, dynamic> resolveReleaseReferences(Map<String, dynamic> json) {
  final identities = <int, Map<String, dynamic>>{};
  void collect(Object? value) {
    if (value is Map<String, dynamic>) {
      if (value['@id'] case final int id) {
        identities[id] = value;
      }
      value.values.forEach(collect);
    } else if (value is List) {
      value.forEach(collect);
    }
  }

  collect(json);

  Object? expand(Object? value, Set<int> active, {bool release = false}) {
    if (release && value is int) {
      final target = identities[value];
      if (target == null) {
        throw FormatException('Unresolved release @id reference: $value');
      }
      return expand(target, active);
    }
    if (value is Map<String, dynamic>) {
      final id = value['@id'];
      if (id is int && active.contains(id)) {
        throw FormatException('Cyclic release @id reference: $id');
      }
      final next = {...active, if (id is int) id};
      return <String, dynamic>{
        for (final entry in value.entries)
          entry.key: expand(
            entry.value,
            next,
            release: const {
              'release',
              'related_releases',
              'recommended_releases',
            }.contains(entry.key),
          ),
      };
    }
    if (value is List) {
      return value
          .map((item) => expand(item, active, release: release))
          .toList();
    }
    return value;
  }

  return expand(json, {}) as Map<String, dynamic>;
}
