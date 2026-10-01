import 'package:anixdart/anixdart.dart';
import 'package:test/test.dart';
import '../support/contract_client.dart';
import '../support/model_fixtures.dart';

void main() {
  test('все типы блоков статьи выбирают правильные классы', () {
    final types = <String, Type>{
      'paragraph': ArticleParagraphPayloadBlock,
      'header': ArticleHeaderPayloadBlock,
      'quote': ArticleQuotePayloadBlock,
      'delimiter': ArticleDelimiterPayloadBlock,
      'list': ArticleListPayloadBlock,
      'media': ArticleMediaPayloadBlock,
      'embed': ArticleEmbedPayloadBlock,
    };
    for (final entry in types.entries) {
      final block = ArticlePayloadBlock.fromJson(
        modelFixture(entry.value.toString()),
      );
      expect(block.runtimeType, entry.value);
      expect(block.toJson()['type'], entry.key);
    }
    expect(
      () => ArticlePayloadBlock.fromJson({'type': 'unknown'}),
      throwsFormatException,
    );
  });

  test('ссылка на сущность сохраняет числа и вложенные объекты', () {
    for (final json in <Object>[
      42,
      {'id': 7, 'name': 'reason'},
    ]) {
      final reference = EntityReference<ReportReason>.fromJson(
        json,
        (value) => ReportReason.fromJson(value as Map<String, dynamic>),
      );
      expect(reference.toJson((value) => value.toJson()), json);
    }
  });

  test('поиск релизов декодирует новый и старый форматы ответа', () {
    final current = ReleaseSearchResult.fromJson({
      'code': 0,
      'releases': [],
      'related': modelFixture('Related'),
    });
    final legacy = ReleaseSearchResult.fromJson({
      'code': 0,
      'content': [],
      'total_page_count': 1,
      'total_count': 0,
      'current_page': 0,
    });
    expect(current, isA<CurrentReleaseSearchResult>());
    expect(legacy, isA<LegacyReleaseSearchResult>());
    expect((legacy as LegacyReleaseSearchResult).response.totalPageCount, 1);
    expect(
      ReleaseSearchResult.fromJson(legacy.toJson()),
      isA<LegacyReleaseSearchResult>(),
    );
  });

  test(
    'коды подтверждения сохраняют ведущие нули, а пустые поля не сериализуются',
    () {
      final request = VerifyRequest.fromJson({
        'login': 'test',
        'email': 'test@example.test',
        'hash': 'hash',
        'code': '001234',
      });
      expect(request.code, '001234');
      expect(request.toJson()['code'], '001234');
      expect(request.toJson().containsKey('password'), isFalse);
      expect(request.toJson().containsKey('googleIdToken'), isFalse);
    },
  );

  test('жалоба на эпизод отправляет типизированный объект эпизода', () async {
    final episode = Episode.fromJson(modelFixture('Episode'));
    final fixture = <String, dynamic>{
      'expected': {
        'path': '/report/episode',
        'method': 'POST',
        'auth': {'type': 'Anixart'},
        'body': {
          'type': 'JSON',
          'data': {
            'entity_id': episode.toJson(),
            'message': 'broken',
            'reason': 2,
          },
        },
        'resultEnum': {
          for (final e in ReportResult.values) '${e.value}': e.codeName,
        },
      },
      'response': {'code': 0},
    };
    final http = ContractClient(fixture);
    final client = Anixart(httpClient: http);
    addTearDown(client.close);
    await client.endpoints.report.send(
      ReportType.episode,
      ReportRequest(entityId: episode, message: 'broken', reason: 2),
    );
    expect(http.calls, 1);
    await expectLater(
      client.endpoints.report.send(
        ReportType.release,
        ReportRequest(entityId: episode, message: 'broken', reason: 2),
      ),
      throwsArgumentError,
    );
    await expectLater(
      client.endpoints.report.send(
        ReportType.episode,
        const ReportRequest(entityId: 7, message: 'broken', reason: 2),
      ),
      throwsArgumentError,
    );
    expect(http.calls, 1);
  });
}
