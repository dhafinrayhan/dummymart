import 'package:dummymart/services/router.dart';
import 'package:go_router/go_router.dart';
import 'package:test/test.dart';

import '../utils/testing_utils.dart';

void main() {
  group('Test routerProvider', () {
    test('should expose a GoRouter instance', () async {
      final container = createContainer();

      expect(container.read(routerProvider), isA<GoRouter>());
    });
  });
}
