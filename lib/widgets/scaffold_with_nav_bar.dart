import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'models/nav_bar_item.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    super.key,
    required this.child,
    required this.currentPath,
    required this.screens,
  });

  final Widget child;
  final String currentPath;
  final List<NavBarItem> screens;

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        screens.indexWhere((screen) => screen.path == currentPath);
    final shouldShowNavBar = currentIndex >= 0;

    return Scaffold(
      body: child,
      bottomNavigationBar: shouldShowNavBar
          ? BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) => context.go(screens[index].path),
              type: BottomNavigationBarType.fixed,
              items: [
                for (final screen in screens)
                  BottomNavigationBarItem(
                    icon: Icon(screen.icon),
                    label: screen.label,
                  )
              ],
            )
          : null,
    );
  }
}
