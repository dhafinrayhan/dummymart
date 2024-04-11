import 'package:dummymart/features/products/providers/products.dart';
import 'package:dummymart/features/products/screens/products.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test ProductsScreen', () {
    testWidgets(
      'should show title and brand of the first item',
      (tester) async {
        await tester.pumpMaterialWidgetScoped(
          const ProductsScreen(),
          overrides: [
            apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(ProductsScreen));
        final container = ProviderScope.containerOf(element);

        final products = await container.read(productsProvider.future);
        final firstProduct = products.first;

        final titleFinder = find.text(firstProduct.title);
        final brandFinder = find.text(firstProduct.brand);

        expect(titleFinder, findsWidgets);
        expect(brandFinder, findsWidgets);
      },
    );

    testWidgets(
      'should show title of the last item',
      (tester) async {
        await tester.pumpMaterialWidgetScoped(
          const ProductsScreen(),
          overrides: [
            apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(ProductsScreen));
        final container = ProviderScope.containerOf(element);

        final products = await container.read(productsProvider.future);
        final lastProduct = products.last;

        final listFinder = find.byType(Scrollable);
        final titleFinder = find.text(lastProduct.title);

        await tester.scrollUntilVisible(
          titleFinder,
          500,
          scrollable: listFinder,
        );

        expect(titleFinder, findsWidgets);
      },
    );
  });
}
