import 'dart:io';

/// Переводит служебные комментарии после генерации JSON-сериализаторов.
void main() {
  for (final root in ['lib', 'test']) {
    for (final file in Directory(
      root,
    ).listSync(recursive: true).whereType<File>()) {
      if (!file.path.endsWith('.g.dart')) continue;
      final original = file.readAsStringSync();
      final translated = original
          .replaceAll(
            '// GENERATED CODE - DO NOT MODIFY BY HAND',
            '// СГЕНЕРИРОВАННЫЙ КОД — НЕ РЕДАКТИРОВАТЬ ВРУЧНУЮ',
          )
          .replaceAll(
            '// JsonSerializableGenerator',
            '// Генератор: JsonSerializableGenerator',
          );
      if (translated != original) file.writeAsStringSync(translated);
    }
  }
}
