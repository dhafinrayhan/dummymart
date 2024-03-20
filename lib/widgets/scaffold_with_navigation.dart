import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'scaffold_with_navigation.freezed.dart';

class ScaffoldWithNavigation extends StatelessWidget {
  const ScaffoldWithNavigation({
    super.key,
    required this.child,
    required this.currentPath,
    required this.navigationItems,
  });

  final Widget child;
  final String currentPath;
  final List<NavigationItem> navigationItems;

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        navigationItems.indexWhere((item) => item.path == currentPath);

    // Only show navigation bar/rail when the current path is a navigation item.
    final shouldShowNavigation = currentIndex >= 0;

    return shouldShowNavigation
        ? AdaptiveScaffold(
            body: (_) => child,
            selectedIndex: currentIndex,
            onSelectedIndexChange: (index) =>
                context.go(navigationItems[index].path),
            destinations: [
              for (final item in navigationItems)
                NavigationDestination(
                  icon: Icon(item.icon),
                  label: item.label,
                )
            ],
            largeBreakpoint: Breakpoints.mediumAndUp,
            useDrawer: false,
            internalAnimations: false,
          )
        : Scaffold(body: child);
  }
}

@freezed
class NavigationItem with _$NavigationItem {
  factory NavigationItem({
    /// Path in the router.
    required String path,

    /// Widget to show when navigating to this [path].
    required Widget widget,

    /// Icon in the navigation bar.
    required IconData icon,

    /// Label in the navigation bar.
    required String label,

    /// The subroutes of the route from this [path].
    @Default(<RouteBase>[]) final List<RouteBase> routes,
  }) = _NavigationItem;
}
