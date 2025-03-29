import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/login/screens/login.dart';
import '../features/posts/screens/post.dart';
import '../features/posts/screens/posts.dart';
import '../features/products/screens/product.dart';
import '../features/products/screens/products.dart';
import '../features/profile/screens/profile.dart';
import '../features/settings/screens/settings.dart';
import '../features/todos/screens/add_todo.dart';
import '../features/todos/screens/todo.dart';
import '../features/todos/screens/todos.dart';
import '../features/todos/screens/update_todo.dart';
import '../widgets/scaffold_with_navigation.dart';
import 'auth_state.dart';

part 'router.g.dart';

/// The router config for the app.
@riverpod
GoRouter router(Ref ref) {
  // Local notifier for the current auth state. The purpose of this notifier is
  // to provide a [Listenable] to the [GoRouter] exposed by this provider.
  final authStateNotifier = ValueNotifier(AuthState.unknown);
  ref
    ..onDispose(authStateNotifier.dispose)
    ..listen(currentAuthStateProvider, (_, value) {
      authStateNotifier.value = value;
    });

  // This is the only place you need to define your navigation items. The items
  // will be propagated automatically to the router and the navigation bar/rail
  // of the scaffold.
  //
  // To configure the authentication state needed to access a particular item,
  // see [AuthState] enum.
  final navigationItems = [
    NavigationItem(
      path: '/products',
      body: (_) => const ProductsScreen(),
      icon: Icons.widgets_outlined,
      selectedIcon: Icons.widgets,
      label: 'Products',
      routes: [
        GoRoute(
          path: ':id',
          builder: (_, state) {
            final id = int.parse(state.pathParameters['id']!);
            return ProductScreen(id);
          },
        ),
      ],
    ),
    NavigationItem(
      path: '/todos',
      body: (_) => const TodosScreen(),
      icon: Icons.checklist_outlined,
      selectedIcon: Icons.checklist,
      label: 'Todos',
      routes: [
        GoRoute(
          path: 'add',
          builder: (_, __) => const AddTodoScreen(),
        ),
        GoRoute(
          path: ':id',
          builder: (_, state) {
            final id = int.parse(state.pathParameters['id']!);
            return TodoScreen(id);
          },
          routes: [
            GoRoute(
              path: 'update',
              builder: (_, state) {
                final id = int.parse(state.pathParameters['id']!);
                return UpdateTodoScreen(id);
              },
            ),
          ],
        ),
      ],
    ),
    NavigationItem(
      path: '/posts',
      body: (_) => const PostsScreen(),
      icon: Icons.article_outlined,
      selectedIcon: Icons.article,
      label: 'Posts',
      routes: [
        GoRoute(
          path: ':id',
          builder: (_, state) {
            final id = int.parse(state.pathParameters['id']!);
            return PostScreen(id);
          },
        ),
      ],
    ),
    NavigationItem(
      path: '/profile',
      body: (_) => const ProfileScreen(),
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      label: 'Profile',
    ),
  ];

  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: navigationItems.first.path,
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const Scaffold(),
      ),
      GoRoute(
        path: '/login',
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (_, __) => const SettingsScreen(),
      ),

      // Configuration for the bottom navigation bar routes. The routes themselves
      // should be defined in [navigationItems]. Modification to this [ShellRoute]
      // config is rarely needed.
      ShellRoute(
        builder: (_, __, child) => child,
        routes: [
          for (final (index, item) in navigationItems.indexed)
            GoRoute(
              path: item.path,
              pageBuilder: (context, _) => NoTransitionPage(
                child: ScaffoldWithNavigation(
                  selectedIndex: index,
                  navigationItems: navigationItems,
                  child: item.body(context),
                ),
              ),
              routes: item.routes,
            ),
        ],
      ),
    ],
    refreshListenable: authStateNotifier,
    redirect: (_, state) {
      // Get the current auth state.
      final authState = ref.read(currentAuthStateProvider);

      // Check if the current path is allowed for the current auth state. If not,
      // redirect to the redirect target of the current auth state.
      if (!authState.allowedPaths.contains(state.fullPath)) {
        return authState.redirectPath;
      }

      // If the current path is allowed for the current auth state, don't redirect.
      return null;
    },
  );
  ref.onDispose(router.dispose);

  return router;
}
