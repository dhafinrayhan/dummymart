import 'package:dummymart/features/posts/models/post.dart';
import 'package:dummymart/features/products/models/product.dart';
import 'package:dummymart/features/todos/models/todo.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test product-related methods in ApiClient', () {
    test('fetchProducts() should return a non-empty list', () async {
      final client = createMockedApiClient();

      await expectLater(
        client.fetchProducts(),
        completion(isNotEmpty),
      );
    });

    test('fetchProduct(id) should return the related product', () async {
      final client = createMockedApiClient();

      const id = 24;
      await expectLater(
        client.fetchProduct(id),
        completion(
          const TypeMatcher<Product>()
              .having((item) => item.id, 'id', equals(id)),
        ),
      );
    });
  });

  group('Test todo-related methods in ApiClient', () {
    test('fetchTodos() should return a non-empty list', () async {
      final client = createMockedApiClient();

      await expectLater(
        client.fetchTodos(),
        completion(isNotEmpty),
      );
    });

    test('fetchTodo(id) should return the related todo', () async {
      final client = createMockedApiClient();

      const id = 24;
      await expectLater(
        client.fetchTodo(id),
        completion(
          const TypeMatcher<Todo>().having((item) => item.id, 'id', equals(id)),
        ),
      );
    });

    test('addTodo(id) should add the todo to the list of todos', () async {
      final client = createMockedApiClient();

      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      final Todo(:id) = await client.addTodo(todo);
      await expectLater(
        client.fetchTodo(id),
        completion(equals(todo.copyWith(id: id))),
      );
    });

    test('updateTodo(id) should update the related todo with the new value',
        () async {
      final client = createMockedApiClient();

      const id = 24;
      const todo = Todo(
        id: -1,
        todo: 'Do something else',
        completed: false,
        userId: 12,
      );
      await client.updateTodo(id, todo);
      await expectLater(
        client.fetchTodo(id),
        completion(equals(todo.copyWith(id: id))),
      );
    });

    test('deleteTodo(id) should delete an existing todo from the list of todos',
        () async {
      final client = createMockedApiClient();

      const id = 24;
      await expectLater(
        client.fetchTodos(),
        completion(
          contains(
            const TypeMatcher<Todo>()
                .having((item) => item.id, 'id', equals(id)),
          ),
        ),
      );
      await client.deleteTodo(id);
      await expectLater(
        client.fetchTodos(),
        completion(
          isNot(contains(
            const TypeMatcher<Todo>()
                .having((item) => item.id, 'id', equals(id)),
          )),
        ),
      );
    });
  });

  group('Test post-related methods in ApiClient', () {
    test('fetchPosts() should return a non-empty list', () async {
      final client = createMockedApiClient();

      await expectLater(
        client.fetchPosts(),
        completion(isNotEmpty),
      );
    });

    test('passing limit argument to fetchPosts should work', () async {
      final client = createMockedApiClient();

      const limit = 45;
      await expectLater(
        client.fetchPosts(limit: limit),
        completion(hasLength(limit)),
      );
    });

    test('passing a large limit should be no problem', () async {
      final client = createMockedApiClient();

      const limit = 9999999;
      await expectLater(
        client.fetchPosts(limit: limit),
        completion(hasLength(lessThanOrEqualTo(limit))),
      );
    });

    test('passing search argument to fetchPosts should work', () async {
      final client = createMockedApiClient();

      const search = 'trEe';
      await expectLater(
        client.fetchPosts(search: search),
        completion(everyElement(
          anyOf(
            const TypeMatcher<Post>().having((item) => item.title.toLowerCase(),
                'title', contains(search.toLowerCase())),
            const TypeMatcher<Post>().having((item) => item.body.toLowerCase(),
                'title', contains(search.toLowerCase())),
          ),
        )),
      );
    });

    test('passing both limit and search arguments to fetchPosts should work',
        () async {
      final client = createMockedApiClient();

      const search = 'can';
      const limit = 5;
      await expectLater(
        client.fetchPosts(search: search, limit: limit),
        completion(allOf(
          hasLength(limit),
          everyElement(
            anyOf(
              const TypeMatcher<Post>().having(
                  (item) => item.title.toLowerCase(),
                  'title',
                  contains(search.toLowerCase())),
              const TypeMatcher<Post>().having(
                  (item) => item.body.toLowerCase(),
                  'title',
                  contains(search.toLowerCase())),
            ),
          ),
        )),
      );
    });

    test('fetchPost(id) should return the related post', () async {
      final client = createMockedApiClient();

      const id = 24;
      await expectLater(
        client.fetchPost(id),
        completion(
          const TypeMatcher<Post>().having((item) => item.id, 'id', equals(id)),
        ),
      );
    });
  });
}
