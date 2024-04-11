import 'package:dummymart/features/todos/providers/todos.dart';
import 'package:dummymart/features/todos/screens/todos.dart';
import 'package:dummymart/services/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test TodosScreen list', () {
    testWidgets(
      'should show todo of the first item',
      (tester) async {
        await tester.pumpMaterialWidgetScoped(
          const TodosScreen(),
          overrides: [
            apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(TodosScreen));
        final container = ProviderScope.containerOf(element);

        final todos = await container.read(todosProvider.future);
        final firstTodo = todos.first;

        final todoFinder = find.text(firstTodo.todo);

        expect(todoFinder, findsWidgets);
      },
    );

    testWidgets(
      'should show todo of the last item',
      (tester) async {
        await tester.pumpMaterialWidgetScoped(
          const TodosScreen(),
          overrides: [
            apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(TodosScreen));
        final container = ProviderScope.containerOf(element);

        final todos = await container.read(todosProvider.future);
        final lastTodo = todos.last;

        final listFinder = find.byType(Scrollable);
        final todoFinder = find.text(lastTodo.todo);

        await tester.scrollUntilVisible(
          todoFinder,
          500,
          scrollable: listFinder,
        );

        expect(todoFinder, findsWidgets);
      },
    );
  });

  group('Test TodosScreen list item', () {
    testWidgets(
      'uncompleted todo should not be strikethrough',
      (tester) async {
        await tester.pumpMaterialWidgetScoped(
          const TodosScreen(),
          overrides: [
            apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(TodosScreen));
        final container = ProviderScope.containerOf(element);

        final todos = await container.read(todosProvider.future);
        final uncompletedTodo = todos.firstWhere((todo) => !todo.completed);

        final todoFinder = find.text(uncompletedTodo.todo);
        final textWidget = tester.firstWidget<Text>(todoFinder);

        expect(
          textWidget,
          isNot(predicate<Text>(
            (widget) => widget.style?.decoration == TextDecoration.lineThrough,
          )),
        );
      },
    );

    testWidgets(
      'completed todo should be strikethrough',
      (tester) async {
        await tester.pumpMaterialWidgetScoped(
          const TodosScreen(),
          overrides: [
            apiServiceProvider.overrideWith((ref) => createMockedApiClient()),
          ],
        );

        await tester.pumpAndSettle();

        final element = tester.element(find.byType(TodosScreen));
        final container = ProviderScope.containerOf(element);

        final todos = await container.read(todosProvider.future);
        final completedTodo = todos.firstWhere((todo) => todo.completed);

        final todoFinder = find.text(completedTodo.todo);
        final textWidget = tester.firstWidget<Text>(todoFinder);

        expect(
          textWidget,
          predicate<Text>(
            (widget) => widget.style?.decoration == TextDecoration.lineThrough,
          ),
        );
      },
    );
  });

  group('Test TodosScreen actions', () {
    testWidgets(
      'should be able to go to add todo screen',
      (tester) async {
        final addTodoScreenKey = GlobalKey();

        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              apiServiceProvider.overrideWith((ref) => createMockedApiClient())
            ],
            child: MaterialApp.router(
              routerConfig: GoRouter(
                initialLocation: '/todos',
                routes: [
                  GoRoute(
                    path: '/todos',
                    builder: (_, __) => const TodosScreen(),
                    routes: [
                      GoRoute(
                        path: 'add',
                        builder: (_, __) => SizedBox(key: addTodoScreenKey),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

        await tester.pumpAndSettle();

        final addTodoButtonFinder = find.byIcon(Icons.add);

        expect(addTodoButtonFinder, findsOneWidget);

        await tester.tap(addTodoButtonFinder);
        await tester.pumpAndSettle();

        final addTodoScreenFinder = find.byKey(addTodoScreenKey);

        expect(addTodoScreenFinder, findsOneWidget);
      },
    );
  });
}
