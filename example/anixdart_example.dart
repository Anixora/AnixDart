import 'package:anixdart/anixdart.dart';

Future<void> main() async {
  final client = Anixart();
  try {
    final result = await client.endpoints.release.get(
      101,
      extendedMode: true,
      options: const RequestOptions(timeout: Duration(seconds: 15)),
    );
    print(result.release.id);
    print(result.release.titleRu);
  } finally {
    client.close();
  }
}
