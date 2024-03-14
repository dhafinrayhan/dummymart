import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode.g.dart';

/// The current theme mode of the app.
///
/// When this provider is first read, it will read the saved value from storage,
/// and defaults to [ThemeMode.system] if the theme mode was not set before.
@Riverpod(keepAlive: true)
class CurrentThemeMode extends _$CurrentThemeMode {
  @override
  ThemeMode build() {
    // Load the saved theme mode setting from Hive box.
    final themeModeName = Hive.box<String>('settings').get('themeMode');

    // Return [ThemeMode] based on the saved setting, or [ThemeMode.system]
    // if there's no saved setting yet.
    return ThemeMode.values.singleWhere(
      (themeMode) => themeMode.name == themeModeName,
      orElse: () => ThemeMode.system,
    );
  }

  void set(ThemeMode themeMode) {
    state = themeMode;

    // Save the new theme mode to Hive box.
    Hive.box<String>('settings').put('themeMode', themeMode.name);
  }
}
