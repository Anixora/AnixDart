# AnixDart

Неофициальный клиент API Anixart для Dart и Flutter. Основан на
[AnixartJS](https://github.com/theDesConnet/AnixartJS).

Запросы выполняются через `package:http`, ответы разбираются в Dart-модели.
Зависимости от Flutter нет.

## Установка

Требуется Dart **>=3.11.1 <4.0.0**. Пакет доступен на
[pub.dev](https://pub.dev/packages/anixdart).

Для Dart-проекта:

```sh
dart pub add anixdart
```

Для Flutter-проекта:

```sh
flutter pub add anixdart
```

Сериализаторы включены в пакет. Запускать `build_runner` при установке не нужно.

### Локальная версия для разработки

Для локальной копии репозитория:

```yaml
dependencies:
  anixdart:
    path: ../anixdart
```

## Быстрый старт

Получение информации о релизе без авторизации:

```dart
import 'package:anixdart/anixdart.dart';

Future<void> main() async {
  final client = Anixart();

  try {
    final response = await client.endpoints.release.get(101);
    final release = response.release;

    print(release.titleRu);
    print(release.description);
  } finally {
    client.close();
  }
}
```

Один клиент можно использовать для нескольких запросов. Когда он больше не
нужен, вызовите `close()`.

Методы находятся в `client.endpoints`. ID передаётся первым аргументом,
остальные параметры — по имени:

```dart
final response = await client.endpoints.release.get(
  101,
  extendedMode: true,
  options: const RequestOptions(timeout: Duration(seconds: 15)),
);

final profile = await client.endpoints.profile.get(1);
print(profile.profile.login);
```

В примерах ниже используется тот же `client`.

## Авторизация

Если у вас есть токен Anixart, передайте его при создании клиента:

```dart
final client = Anixart(token: 'YOUR_ANIXART_TOKEN');
```

Токен можно обновить после входа в аккаунт или удалить при выходе:

```dart
client.setToken('NEW_ANIXART_TOKEN');
client.setToken(null);
```

Токен отправляется только в методах с авторизацией. Вход, регистрация и
восстановление доступа доступны через `client.endpoints.auth`.

В конструкторе можно задать `baseUrl`, `userAgent` и `throwOnAnixartError`.
Для смены сервера у существующего клиента есть `setBaseUrl(...)`.

## Поиск релизов

```dart
final result = await client.endpoints.search.releases(
  const SearchRequest(query: 'Харухи'),
  page: 0,
);

final releases = switch (result) {
  CurrentReleaseSearchResult(:final response) => response.releases,
  LegacyReleaseSearchResult(:final response) => response.content,
};

for (final release in releases) {
  print(release.titleRu);
}
```

По умолчанию поиск использует API v2. Для старого формата ответа передайте
`options: const RequestOptions(apiVersion: 1)`.

## Параметры запросов

Каждый метод принимает необязательный аргумент `options`:

| Параметр `RequestOptions` | Назначение |
| --- | --- |
| `timeout` | Таймаут запроса |
| `cancelToken` | Отмена через `RequestCancelToken` |
| `apiVersion` | Версия API в заголовке `API-Version`, например `2` → `v2` |
| `throwOnAnixartError` | Выбрасывать ли `AnixartError` при ошибке API |

Для отмены создайте токен, передайте его в `RequestOptions` и вызовите
`cancel()` из обработчика отмены в приложении:

```dart
final cancelToken = RequestCancelToken();

final request = client.endpoints.release.get(
  101,
  options: RequestOptions(cancelToken: cancelToken),
);

cancelToken.cancel();

try {
  await request;
} on RequestCancelledException {
  print('Запрос отменён');
}
```

## Обработка ошибок

При ошибке API клиент выбрасывает `AnixartError`, при ошибке HTTP или сети —
`HttpError`:

```dart
try {
  final response = await client.endpoints.release.get(101);
  print(response.release.titleRu);
} on AnixartError catch (error) {
  print(error.code);
  print(error.codeName);
} on HttpError catch (error) {
  print(error.status);
  print(error.message);
} on RequestCancelledException {
  print('Запрос отменён');
}
```

У `HttpError` значение `status == 0` означает ошибку транспорта без HTTP-ответа.
При превышении времени ожидания выбрасывается `TimeoutException` из
`dart:async`.

Если удобнее самостоятельно проверять код ответа, отключите исключения API
для отдельного запроса:

```dart
final response = await client.endpoints.release.get(
  101,
  options: const RequestOptions(throwOnAnixartError: false),
);

print(response.code);
print(response.releaseOrNull?.titleRu);
```

Ответ с ошибкой может не содержать релиз. В этом случае `releaseOrNull` вернёт
`null`, а `release` выбросит `StateError`. Сетевые ошибки, таймауты и ошибки
декодирования по-прежнему выбрасываются. Если в другом ответе нет обязательных
полей, `throwOnAnixartError: false` не поможет его декодировать.

## Доступные разделы API

Все поля ниже доступны через `client.endpoints`:

| Раздел | Поля |
| --- | --- |
| Релизы и видео | `release`, `releaseComment`, `releaseStreamingPlatform`, `releaseVideo`, `releaseVideoAppeal`, `releaseVideoFavorite`, `episode`, `favorite`, `filter`, `history`, `related`, `schedule` |
| Профили | `profile`, `profileBadge`, `profileBlockList`, `profileDeletion`, `profileFriends`, `profileHealth`, `profileList`, `profilePreference`, `profileReleaseVote`, `profileRoleList` |
| Авторизация | `auth` |
| Поиск | `search` |
| Коллекции | `collection`, `collectionComment`, `collectionFavorite`, `collectionMy` |
| Статьи | `article`, `articleComment`, `articleSuggestion` |
| Уведомления | `notification`, `notificationPreference` |
| Каналы и лента | `channel`, `feed` |
| Остальные разделы | `config`, `discover`, `report`, `import`, `export`, `type` |

## Модели и совместимость

- Запросы и ответы используют Dart-модели с `fromJson` и `toJson`.
- Обязательные поля не допускают `null`. Например, `Release.titleRu` имеет
  тип `String`, а `Release.titleAlt` — `String?`.
- Значения enum соответствуют API и доступны через `.value`; `enum.index`
  не является значением для передачи серверу.
- У каждого вида блока статьи свой класс, общий тип — `ArticlePayloadBlock`.
- Поля, в которых API возвращает объект или числовую ссылку, используют
  `EntityReference<T>`.

## Разработка

После изменения моделей выполните генерацию сериализаторов и проверки:

```sh
dart run build_runner build --delete-conflicting-outputs
dart run tool/translate_generated_comments.dart
dart format .
dart analyze
dart test
```

Пример обращения к публичному API находится в
[example/anixdart_example.dart](example/anixdart_example.dart):

```sh
dart run example/anixdart_example.dart
```
