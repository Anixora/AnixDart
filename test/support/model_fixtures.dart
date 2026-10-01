import 'dart:convert';
import 'dart:io';

/// Загружает тестовый JSON модели.
Map<String, dynamic> modelFixture(String name) {
  final fixtures =
      jsonDecode(File('test/fixtures/model_samples.json').readAsStringSync())
          as Map<String, dynamic>;
  return fixtures[name] as Map<String, dynamic>;
}
