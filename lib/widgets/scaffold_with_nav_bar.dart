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
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            screens.indexWhere((screen) => screen.path == currentPath),
        onTap: (index) => context.go(screens[index].path),
        type: BottomNavigationBarType.fixed,
        items: [
          for (final screen in screens)
            BottomNavigationBarItem(
              icon: Icon(screen.icon),
              label: screen.label,
            )
        ],
      ),
    );
  }
}
