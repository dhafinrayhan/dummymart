import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/auth/models/auth_state.dart';
import '../features/auth/providers/auth_state.dart';
import '../features/auth/screens/login.dart';
import '../features/auth/screens/splash.dart';
import '../features/posts/screens/post.dart';
import '../features/posts/screens/posts.dart';
import '../features/products/screens/product.dart';
import '../features/products/screens/products.dart';
import '../features/profile/screens/profile.dart';
import '../features/todos/screens/add_todo.dart';
import '../features/todos/screens/todo.dart';
import '../features/todos/screens/todos.dart';
import '../features/todos/screens/update_todo.dart';
import '../widgets/scaffold_with_navigation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  // Local notifier for the current auth state. The purpose of this notifier is
  // to provide a [Listenable] to the [GoRouter] exposed by this provider.
  final authStateNotifier = ValueNotifier(AuthState.unknown);
  ref
    ..onDispose(authStateNotifier.dispose)
    ..listen(currentAuthStateProvider, (_, value) {
      authStateNotifier.value = value;
    });

  final navigationItems = [
    NavigationItem(
      path: '/products',
      body: (_) => const ProductsScreen(),
      icon: Icons.category,
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
      icon: Icons.subject,
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
      icon: Icons.article,
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
      icon: Icons.person,
      label: 'Profile',
    ),
  ];

  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: navigationItems.first.path,
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (_, __) => const LoginScreen(),
      ),

      // Configuration for the bottom navigation bar routes. The routes
      // themselves should be defined in [navigationItems].
      ShellRoute(
        builder: (_, state, child) => ScaffoldWithNavigation(
          currentPath: state.uri.path,
          navigationItems: navigationItems,
          child: child,
        ),
        routes: [
          for (final item in navigationItems)
            GoRoute(
              path: item.path,
              pageBuilder: (context, __) => CustomTransitionPage(
                child: item.body(context),
                transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(
                    opacity: animation.drive(CurveTween(curve: Curves.ease)),
                    child: child,
                  );
                },
              ),
              routes: item.routes,
            ),
        ],
      ),
    ],
    refreshListenable: authStateNotifier,
    redirect: (_, state) {
      final authState = ref.read(currentAuthStateProvider);
      if (!authState.allowedPaths.contains(state.fullPath)) {
        return authState.redirectPath;
      }
      return null;
    },
  );
  ref.onDispose(router.dispose);

  return router;
}
