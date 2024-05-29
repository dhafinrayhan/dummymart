import 'package:dummymart/features/products/providers/product.dart';
import 'package:dummymart/features/products/screens/product.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test ProductScreen', () {
    testWidgets(
      'should show details of the correct product item',
      (tester) async {
        const id = 24;

        await tester.pumpMaterialWidgetScoped(
          const ProductScreen(id),
          overrides: [
            apiServiceProvider.overrideWith(createMockedApiClientOverride),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(ProductScreen));
        final container = ProviderScope.containerOf(element);

        final product = await container.read(productProvider(id).future);

        final titleFinder = find.text(product.title);
        final descriptionFinder = find.text(product.description);
        final stockFinder = find.text(product.stock.toString());

        expect(titleFinder, findsWidgets);
        expect(descriptionFinder, findsWidgets);
        expect(stockFinder, findsWidgets);

        final brand = product.brand;
        if (brand != null) {
          final brandFinder = find.text(brand);
          expect(brandFinder, findsWidgets);
        }
      },
    );
  });
}
