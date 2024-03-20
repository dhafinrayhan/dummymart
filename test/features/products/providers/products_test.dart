import 'package:dummymart/features/products/models/product.dart';
import 'package:dummymart/features/products/providers/products.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Get data from productsProvider', () {
    test('should expose a non-empty List<Product>', () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      await expectLater(
        container.read(productsProvider.future),
        completion(allOf(
          isA<List<Product>>(),
          isNotEmpty,
        )),
      );
    });
  });
}
