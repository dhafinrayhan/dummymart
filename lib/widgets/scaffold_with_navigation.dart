import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A scaffold that shows navigation bar/rail when the current path is a navigation
/// item.
///
/// When in a navigation item, a [NavigationBar] will be shown if the width of the
/// screen is less than 600dp. Otherwise, a [NavigationRail] will be shown.
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
    if (currentIndex < 0) {
      return Scaffold(body: child);
    }

    final width = MediaQuery.sizeOf(context).width;

    void onDestinationSelected(int index) =>
        context.go(navigationItems[index].path);

    // Use navigation rail instead of navigation bar when the screen width is
    // larger than 600dp.
    if (width > 600) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: currentIndex,
              onDestinationSelected: onDestinationSelected,
              destinations: [
                for (final item in navigationItems)
                  NavigationRailDestination(
                    icon: Icon(item.icon),
                    selectedIcon: item.selectedIcon != null
                        ? Icon(item.selectedIcon)
                        : null,
                    label: Text(item.label),
                  )
              ],
              extended: true,
            ),
            Expanded(child: child),
          ],
        ),
      );
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: [
          for (final item in navigationItems)
            NavigationDestination(
              icon: Icon(item.icon),
              selectedIcon:
                  item.selectedIcon != null ? Icon(item.selectedIcon) : null,
              label: item.label,
            )
        ],
      ),
    );
  }
}

/// An item that represents a navigation destination in a navigation bar/rail.
class NavigationItem {
  /// Path in the router.
  final String path;

  /// Widget to show when navigating to this [path].
  final WidgetBuilder body;

  /// Icon in the navigation bar.
  final IconData icon;

  /// Icon in the navigation bar when selected.
  final IconData? selectedIcon;

  /// Label in the navigation bar.
  final String label;

  /// The subroutes of the route from this [path].
  final List<RouteBase> routes;

  NavigationItem({
    required this.path,
    required this.body,
    required this.icon,
    this.selectedIcon,
    required this.label,
    this.routes = const [],
  });
}
