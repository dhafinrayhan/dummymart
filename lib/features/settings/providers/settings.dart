import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings.g.dart';

/// The current theme mode of the app.
///
/// When this provider is first read, it will read the saved value from storage,
/// and defaults to [ThemeMode.system] if the theme mode has not been set before.
@riverpod
class CurrentThemeMode extends _$CurrentThemeMode {
  late final _box = Hive.box<String>('settings');

  @override
  ThemeMode build() {
    // Load the saved theme mode setting from Hive box.
    final themeModeName = _box.get('themeMode');

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
    _box.put('themeMode', themeMode.name);
  }
}
