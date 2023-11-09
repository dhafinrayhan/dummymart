import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_bar_item.freezed.dart';

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
  }) = _NavBarItem;
}
