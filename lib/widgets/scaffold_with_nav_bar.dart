import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'models/nav_bar_item.dart';

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
