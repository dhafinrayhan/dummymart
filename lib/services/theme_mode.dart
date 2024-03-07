import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode.g.dart';

@Riverpod(keepAlive: true)
class CurrentThemeMode extends _$CurrentThemeMode {
  @override
  ThemeMode build() => ThemeMode.system;

  void set(ThemeMode themeMode) {
    state = themeMode;
  }
}
