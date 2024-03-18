import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'scaffold_with_nav_bar.freezed.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    super.key,
    required this.child,
    required this.currentPath,
    required this.navBarItems,
  });

  final Widget child;
  final String currentPath;
  final List<NavBarItem> navBarItems;

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        navBarItems.indexWhere((item) => item.path == currentPath);

    // Only show nav bar when the current path is a nav bar item.
    final shouldShowNavBar = currentIndex >= 0;

    return Scaffold(
      body: child,
      bottomNavigationBar: shouldShowNavBar
          ? NavigationBar(
              selectedIndex: currentIndex,
              onDestinationSelected: (index) =>
                  context.go(navBarItems[index].path),
              destinations: [
                for (final item in navBarItems)
                  NavigationDestination(
                    icon: Icon(item.icon),
                    label: item.label,
                  )
              ],
            )
          : null,
    );
  }
}

@freezed
class NavBarItem with _$NavBarItem {
  factory NavBarItem({
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
  }) = _NavBarItem;
}
