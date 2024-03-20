import 'package:dummymart/features/posts/models/post.dart';
import 'package:dummymart/features/posts/providers/posts.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Get data from postsProvider', () {
    test('should expose a non-empty List<Post>', () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      await expectLater(
        container.read(postsProvider().future),
        completion(allOf(
          isA<List<Post>>(),
          isNotEmpty,
        )),
      );
    });

    test('passing search query should work', () async {
      final container = createContainer(overrides: [
        apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
      ]);

      const search = 'hiLl';
      await expectLater(
        container.read(postsProvider(search: search).future),
        completion(everyElement(
          anyOf(
            isA<Post>().having((item) => item.title.toLowerCase(), 'title',
                contains(search.toLowerCase())),
            isA<Post>().having((item) => item.body.toLowerCase(), 'body',
                contains(search.toLowerCase())),
          ),
        )),
      );
    });
  });
}
