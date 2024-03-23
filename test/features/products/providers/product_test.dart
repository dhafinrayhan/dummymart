import 'package:dummymart/features/products/models/product.dart';
import 'package:dummymart/features/products/providers/product.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Get data from productProvider', () {
    test('should expose a Product with the correct id', () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const id = 24;
      await expectLater(
        container.read(productProvider(24).future),
        completion(isA<Product>().having((item) => item.id, 'id', equals(id))),
      );
    });
  });
}
