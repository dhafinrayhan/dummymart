import 'package:dummymart/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/testing_utils.dart';

void main() {
  group('Test AppButton', () {
    testWidgets(
      'should show label',
      (tester) async {
        const label = 'Submit';

        await tester.pumpMaterialWidget(
          AppButton(
            onPressed: () {},
            label: label,
          ),
        );

        final labelFinder = find.text(label);

        expect(labelFinder, findsOneWidget);
      },
    );

    testWidgets(
      'should not show loading indicator when loading is false',
      (tester) async {
        await tester.pumpMaterialWidget(
          AppButton(
            onPressed: () {},
            label: 'Submit',
            loading: false,
          ),
        );

        final loadingIndicatorFinder = find.byType(CircularProgressIndicator);

        expect(loadingIndicatorFinder, findsNothing);
      },
    );

    testWidgets(
      'should show loading indicator when loading is true',
      (tester) async {
        await tester.pumpMaterialWidget(
          AppButton(
            onPressed: () {},
            label: 'Submit',
            loading: true,
          ),
        );

        final loadingIndicatorFinder = find.byType(CircularProgressIndicator);

        expect(loadingIndicatorFinder, findsOneWidget);
      },
    );

    testWidgets(
      'should call the onPressed callback',
      (tester) async {
        var called = false;

        await tester.pumpMaterialWidget(
          AppButton(
            onPressed: () {
              called = true;
            },
            label: 'Submit',
            loading: true,
          ),
        );

        final buttonFinder = find.byType(AppButton);
        await tester.tap(buttonFinder);

        expect(called, isTrue);
      },
    );
  });
}
