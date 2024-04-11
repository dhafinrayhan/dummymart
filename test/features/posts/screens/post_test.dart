import 'package:dummymart/features/posts/providers/post.dart';
import 'package:dummymart/features/posts/screens/post.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test PostScreen', () {
    testWidgets(
      'should show details of the correct post item',
      (tester) async {
        const id = 24;

        await tester.pumpMaterialWidgetScoped(
          const PostScreen(id),
          overrides: [
            apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(PostScreen));
        final container = ProviderScope.containerOf(element);

        final post = await container.read(postProvider(id).future);

        final titleFinder = find.text(post.title);
        final bodyFinder = find.text(post.body);
        final tagsFinder = find.text(post.tags.join(', '));
        final reactionsFinder = find.text(post.reactions.toString());

        expect(titleFinder, findsWidgets);
        expect(bodyFinder, findsWidgets);
        expect(tagsFinder, findsWidgets);
        expect(reactionsFinder, findsWidgets);
      },
    );
  });
}
