import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/auth/models/auth_state.dart';
import '../features/auth/providers/auth_state.dart';
import '../features/auth/screens/login.dart';
import '../features/auth/screens/splash.dart';
import '../features/products/screens/product.dart';
import '../features/products/screens/products.dart';
import '../features/profile/screens/profile.dart';
import '../features/todos/screens/add_todo.dart';
import '../features/todos/screens/todos.dart';
import '../widgets/models/nav_bar_item.dart';
import '../widgets/scaffold_with_nav_bar.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  // Local notifier for the current auth state. The purpose of this notifier is
  // to provide a [Listenable] to the [GoRouter] exposed by this provider.
  final authStateNotifier = ValueNotifier(AuthState.unknown);
  ref
    ..onDispose(authStateNotifier.dispose)
    ..listen(currentAuthStateProvider, (_, value) {
      authStateNotifier.value = value;
    });

  final navBarItems = [
    NavBarItem(
      path: '/products',
      widget: const ProductsScreen(),
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
    NavBarItem(
      path: '/todos',
      widget: const TodosScreen(),
      icon: Icons.list_alt,
      label: 'Todos',
      routes: [
        GoRoute(
          path: 'add',
          builder: (_, __) => const AddTodoScreen(),
        ),
      ],
    ),
    NavBarItem(
      path: '/profile',
      widget: const ProfileScreen(),
      icon: Icons.person,
      label: 'Profile',
    ),
  ];

  final router = GoRouter(
    initialLocation: navBarItems.first.path,
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
      // themselves should be defined in [navBarItems].
      ShellRoute(
        builder: (_, state, child) => ScaffoldWithNavBar(
          currentPath: state.uri.path,
          navBarItems: navBarItems,
          child: child,
        ),
        routes: [
          for (final item in navBarItems)
            GoRoute(
              path: item.path,
              pageBuilder: (_, __) => CustomTransitionPage(
                child: item.widget,
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
