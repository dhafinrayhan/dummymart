import 'package:dummymart/features/todos/models/todo.dart';
import 'package:dummymart/features/todos/providers/todo.dart';
import 'package:dummymart/features/todos/providers/todos.dart';
import 'package:dummymart/features/todos/screens/todo.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test TodoScreen details', () {
    testWidgets(
      'should show details of the correct todo item',
      (tester) async {
        const id = 24;

        await tester.pumpMaterialWidgetScoped(
          const TodoScreen(id),
          overrides: [
            apiServiceProvider.overrideWith(createMockedApiClientOverride),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(TodoScreen));
        final container = ProviderScope.containerOf(element);

        final todo = await container.read(todoProvider(id).future);

        final todoFinder = find.text(todo.todo);
        final userIdFinder = find.text(todo.userId.toString());
        final statusFinder =
            find.text(todo.completed ? 'Completed' : 'Not completed');

        expect(todoFinder, findsWidgets);
        expect(userIdFinder, findsWidgets);
        expect(statusFinder, findsWidgets);
      },
    );
  });

  group('Test TodoScreen actions', () {
    testWidgets(
      'should delete todo with the delete button',
      (tester) async {
        const id = 1;

        await tester.pumpWidget(ProviderScope(
          overrides: [
            apiServiceProvider.overrideWith(createMockedApiClientOverride)
          ],
          child: MaterialApp.router(
            routerConfig: GoRouter(
              initialLocation: '/todos/$id',
              routes: [
                GoRoute(
                  path: '/todos',
                  builder: (_, __) => const SizedBox(),
                  routes: [
                    GoRoute(
                      path: '$id',
                      builder: (_, __) => const TodoScreen(id),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(TodoScreen));
        final container = ProviderScope.containerOf(element);

        final deleteButtonFinder = find.byIcon(Icons.delete);
        final yesButtonFinder = find.widgetWithText(TextButton, 'Yes');

        await tester.tap(deleteButtonFinder);
        await tester.pumpAndSettle();
        await tester.tap(yesButtonFinder);
        await tester.pumpAndSettle();

        await expectLater(
          tester.runAsync(() => container.read(todosProvider.future)),
          completion(
            isNot(contains(
                isA<Todo>().having((item) => item.id, 'id', equals(id)))),
          ),
        );
      },
    );

    testWidgets(
      'should go to the update todo screen when tapping on the edit button',
      (tester) async {
        const id = 1;
        final updateTodoScreenKey = GlobalKey();

        await tester.pumpWidget(ProviderScope(
          overrides: [
            apiServiceProvider.overrideWith(createMockedApiClientOverride)
          ],
          child: MaterialApp.router(
            routerConfig: GoRouter(
              initialLocation: '/todos/$id',
              routes: [
                GoRoute(
                  path: '/todos',
                  builder: (_, __) => const SizedBox(),
                  routes: [
                    GoRoute(
                      path: '$id',
                      builder: (_, __) => const TodoScreen(id),
                      routes: [
                        GoRoute(
                          path: 'update',
                          builder: (_, __) =>
                              SizedBox(key: updateTodoScreenKey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));

        await tester.pumpAndSettle();

        final editButtonFinder = find.byIcon(Icons.edit);

        await tester.tap(editButtonFinder);
        await tester.pumpAndSettle();

        final updateTodoScreenFinder = find.byKey(updateTodoScreenKey);

        expect(updateTodoScreenFinder, findsOneWidget);
      },
    );
  });
}
