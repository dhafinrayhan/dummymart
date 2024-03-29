import 'package:flutter/material.dart';

typedef ThemeDataTransformer = ThemeData Function(ThemeData);

/// Creates two [ThemeData]s (light and dark variants) from a given [seedColor].
///
/// This method is needed because once a [ThemeData] is generated, we cannot get
/// the [ColorScheme] seed to generate another one based on the same seed.
(ThemeData, ThemeData) createDualThemeData({
  required Color seedColor,
  TextTheme? textTheme,
  bool? useMaterial3,
  ThemeDataTransformer? transformer,
}) {
  var lightTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ),
    textTheme: textTheme,
    useMaterial3: useMaterial3,
  );
  var darkTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
    textTheme: textTheme,
    useMaterial3: useMaterial3,
  );

  if (transformer != null) {
    lightTheme = transformer(lightTheme);
    darkTheme = transformer(darkTheme);
  }

  return (lightTheme, darkTheme);
}
