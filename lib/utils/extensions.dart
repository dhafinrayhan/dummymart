import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  /// A convenient way to access [ThemeData.colorScheme] of the current context.
  ///
  /// This also prevents confusion with a bunch of other properties of [ThemeData]
  /// that are less commonly used.
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// A convenient way to access [ThemeData.textTheme] of the current context.
  ///
  /// This also prevents confusion with a bunch of other properties of [ThemeData]
  /// that are less commonly used.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Shows a floating snack bar with text as its content.
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showTextSnackBar(
    String text,
  ) =>
      ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(text),
      ));

  void showAppLicensePage() => showLicensePage(
        context: this,
        useRootNavigator: true,
        applicationName: 'DummyMart',
      );
}

extension ThemeModeX on ThemeMode {
  String get label => switch (this) {
        ThemeMode.system => 'System',
        ThemeMode.light => 'Light',
        ThemeMode.dark => 'Dark',
      };
}
