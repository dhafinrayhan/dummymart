import 'package:dummymart/features/products/providers/product.dart';
import 'package:dummymart/features/products/screens/product.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test ProductScreen', () {
    testWidgets(
      'should show details of the correct product item',
      (tester) async {
        const id = 24;

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              apiServiceProvider.overrideWith((ref) => createMockedApiClient())
            ],
            child: const MaterialApp(home: ProductScreen(id)),
          ),
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(ProductScreen));
        final container = ProviderScope.containerOf(element);

        final product = await container.read(productProvider(id).future);

        final titleFinder = find.text(product.title);
        final descriptionFinder = find.text(product.description);
        final brandFinder = find.text(product.brand);
        final stockFinder = find.text(product.stock.toString());

        expect(titleFinder, findsWidgets);
        expect(descriptionFinder, findsWidgets);
        expect(brandFinder, findsWidgets);
        expect(stockFinder, findsWidgets);
      },
    );
  });
}
