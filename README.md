# AnixDart

Неофициальная библиотека для работы с API Anixart на Dart, основанная на
[AnixartJS](https://github.com/theDesConnet/AnixartJS). Подходит для Dart- и
Flutter-проектов; сам пакет не зависит от Flutter.

Библиотека предоставляет типизированные методы для работы с релизами, профилями,
коллекциями, статьями и другими разделами Anixart. Для HTTP используется
`package:http`, для преобразования JSON — `json_serializable`.

## Подключение

Требуется **Dart 3.11.1 или новее в пределах 3.x**. Для Flutter-проекта нужна
версия Flutter с подходящим Dart SDK.

Добавьте локальную копию библиотеки в `pubspec.yaml` приложения:

```yaml
dependencies:
  anixdart:
    path: ../anixdart
```

Замените путь на расположение пакета относительно вашего приложения и выполните:

```sh
dart pub get
```

В Flutter-проекте используйте `flutter pub get`. Сгенерированные сериализаторы
уже включены в пакет — для использования библиотеки запускать генерацию не нужно.

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

Переиспользуйте клиент для нескольких запросов и вызывайте `close()`, когда он
больше не нужен. В приложении это обычно момент освобождения сервиса, который
владеет клиентом.

Все методы доступны через `client.endpoints`. Обязательные идентификаторы
передаются позиционно, дополнительные параметры — по имени:

```dart
final response = await client.endpoints.release.get(
  101,
  extendedMode: true,
  options: const RequestOptions(timeout: Duration(seconds: 15)),
);

final profile = await client.endpoints.profile.get(1);
print(profile.profile?.login);
```

Здесь и в следующих фрагментах `client` — уже созданный экземпляр `Anixart`.

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

Клиент передаёт токен в запросах, для которых это предусмотрено соответствующим
методом API. Методы входа, регистрации и восстановления доступа находятся в
`client.endpoints.auth`.

При необходимости конструктор также принимает `baseUrl`, `userAgent` и
`throwOnAnixartError`. Адрес сервера можно изменить у существующего клиента
через `setBaseUrl(...)`.

## Поиск релизов

Для тела запроса используются отдельные модели:

```dart
final result = await client.endpoints.search.releases(
  const SearchRequest(query: 'Харухи'),
  page: 0,
);

final releases = switch (result) {
  CurrentReleaseSearchResult(:final response) => response.releases,
  LegacyReleaseSearchResult(:final response) => response.content,
};

for (final release in releases ?? <Release>[]) {
  print(release.titleRu);
}
```

Поиск релизов использует API v2 по умолчанию. Ответы текущего и старого формата
представлены разными типами. Для явного выбора версии передайте
`options: const RequestOptions(apiVersion: 1)`.

## Параметры запросов

Каждый метод принимает необязательный аргумент `options`:

| Параметр `RequestOptions` | Назначение |
| --- | --- |
| `timeout` | Ограничение времени выполнения запроса |
| `cancelToken` | Отмена через `RequestCancelToken` |
| `apiVersion` | Версия API в заголовке `API-Version`, например `2` → `v2` |
| `throwOnAnixartError` | Управление исключениями при ошибках Anixart для конкретного запроса |

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

По умолчанию ошибки Anixart превращаются в `AnixartError`. Ошибки HTTP и
транспорта представлены отдельно:

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

В таком режиме полезная нагрузка может отсутствовать. Для `ReleaseResponse`
используйте `releaseOrNull`: обращение к `release` при отсутствии релиза
выбрасывает `StateError`. Отключение ошибок API не отключает сетевые ошибки,
таймауты и отмену запроса.

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
- Необязательные и допускающие `null` поля имеют nullable-типы.
- Значения enum соответствуют API и доступны через `.value`; `enum.index`
  не является значением для передачи серверу.
- Блоки статей представлены типизированным объединением `ArticlePayloadBlock`.
- Поля, в которых API возвращает объект или числовую ссылку, используют
  `EntityReference<T>`.

## Разработка

После изменения моделей выполните генерацию сериализаторов и проверки:

```sh
dart run build_runner build --delete-conflicting-outputs
dart format .
dart analyze
dart test
```

Пример обращения к публичному API находится в
[example/anixdart_example.dart](example/anixdart_example.dart):

```sh
dart run example/anixdart_example.dart
```
