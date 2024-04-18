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
            onPressed: () async {},
            label: label,
          ),
        );

        final labelFinder = find.text(label);

        expect(labelFinder, findsOneWidget);
      },
    );

    testWidgets(
      'should call the onPressed callback',
      (tester) async {
        var called = false;

        await tester.pumpMaterialWidget(
          AppButton(
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 1));
              called = true;
            },
            label: 'Submit',
          ),
        );

        final buttonFinder = find.byType(AppButton);
        await tester.tap(buttonFinder);
        await tester.pumpAndSettle();

        expect(called, isTrue);
      },
    );

    testWidgets(
      'should show loading indicator when doing async task',
      (tester) async {
        await tester.pumpMaterialWidget(
          AppButton(
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 2));
            },
            label: 'Submit',
          ),
        );

        final buttonFinder = find.byType(AppButton);
        await tester.tap(buttonFinder);
        await tester.pump(const Duration(seconds: 1));

        final loadingIndicatorFinder = find.byType(CircularProgressIndicator);

        expect(loadingIndicatorFinder, findsOneWidget);

        await tester.pumpAndSettle();
      },
    );

    testWidgets(
      'should hide loading indicator after doing async task',
      (tester) async {
        await tester.pumpMaterialWidget(
          AppButton(
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 1));
            },
            label: 'Submit',
          ),
        );

        final buttonFinder = find.byType(AppButton);
        await tester.tap(buttonFinder);
        await tester.pumpAndSettle();

        final loadingIndicatorFinder = find.byType(CircularProgressIndicator);

        expect(loadingIndicatorFinder, findsNothing);
      },
    );
  });
}
