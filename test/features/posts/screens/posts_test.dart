import 'package:dummymart/features/posts/providers/posts.dart';
import 'package:dummymart/features/posts/screens/posts.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test PostsScreen', () {
    testWidgets(
      'should show title and tags of the first item',
      (tester) async {
        await tester.pumpMaterialWidgetScoped(
          const PostsScreen(),
          overrides: [
            apiServiceProvider.overrideWith(createMockedApiClientOverride),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(PostsScreen));
        final container = ProviderScope.containerOf(element);

        final posts = (await tester.runAsync(
          () => container.read(postsProvider().future),
        ))!;
        final firstPost = posts.first;

        final titleFinder = find.text(firstPost.title);
        expect(titleFinder, findsWidgets);

        final listTileFinder = find.widgetWithText(ListTile, firstPost.title);
        for (final tag in firstPost.tags) {
          final tagFinder = find.text(tag);
          final tagInListTileFinder =
              find.descendant(of: listTileFinder, matching: tagFinder);

          expect(tagInListTileFinder, findsOneWidget);
        }
      },
    );
  });
}
