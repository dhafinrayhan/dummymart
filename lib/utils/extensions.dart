import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

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

extension ThemeModeExtension on ThemeMode {
  String get label => switch (this) {
        ThemeMode.system => 'System',
        ThemeMode.light => 'Light',
        ThemeMode.dark => 'Dark',
      };
}
