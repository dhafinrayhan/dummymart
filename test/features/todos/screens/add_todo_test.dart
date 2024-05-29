import 'package:dummymart/features/todos/models/todo.dart';
import 'package:dummymart/features/todos/providers/todos.dart';
import 'package:dummymart/features/todos/screens/add_todo.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:dummymart/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

final _completedFieldVariants = ValueVariant<bool>({false, true});

void main() {
  group('Test AddTodoScreen', () {
    testWidgets(
      'submitting a new todo should work',
      variant: _completedFieldVariants,
      (tester) async {
        // Need to set the minimal routes needed to allow the `pop` method call
        // after submitting the form.
        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              apiServiceProvider.overrideWith(createMockedApiClientOverride)
            ],
            child: MaterialApp.router(
              routerConfig: GoRouter(
                initialLocation: '/todos/add',
                routes: [
                  GoRoute(
                    path: '/todos',
                    builder: (_, __) => const SizedBox(),
                    routes: [
                      GoRoute(
                        path: 'add',
                        builder: (_, __) => const AddTodoScreen(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

        final element = tester.element(find.byType(AddTodoScreen));
        final container = ProviderScope.containerOf(element);

        final todoFieldFinder = find.widgetWithText(TextField, 'Todo');
        final userIdFieldFinder = find.widgetWithText(TextField, 'User ID');
        final notCompletedSegmentFinder = find.byIcon(Icons.close);
        final completedSegmentFinder = find.byIcon(Icons.check);
        final submitButtonFinder = find.widgetWithText(AppButton, 'Submit');

        const todo = 'Do something else';
        const userId = 12;
        final completed = _completedFieldVariants.currentValue!;

        await tester.enterText(todoFieldFinder, todo);
        await tester.enterText(userIdFieldFinder, userId.toString());
        await tester.tap(
            completed ? completedSegmentFinder : notCompletedSegmentFinder);
        await tester.tap(submitButtonFinder);
        await tester.pumpAndSettle();

        await expectLater(
          tester.runAsync(() => container.read(todosProvider.future)),
          completion(contains(
            allOf(
              isA<Todo>().having((item) => item.todo, 'todo', equals(todo)),
              isA<Todo>()
                  .having((item) => item.userId, 'userId', equals(userId)),
              isA<Todo>().having(
                  (item) => item.completed, 'completed', equals(completed)),
            ),
          )),
        );
      },
    );
  });
}
