import 'package:dummymart/services/settings.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:test/test.dart';

import '../utils/testing_utils.dart';

void main() {
  group('Test theme mode provider', () {
    test('theme should initally be ThemeMode.system', () async {
      await openTemporaryBox<String>('settings');
      final container = createContainer();

      expect(
        container.read(currentThemeModeProvider),
        equals(ThemeMode.system),
      );
    });

    test(
        'value exposed by the provider should update when the theme is changed',
        () async {
      await openTemporaryBox<String>('settings');
      final container = createContainer();

      // Change the theme mode to dark.
      container.read(currentThemeModeProvider.notifier).set(ThemeMode.dark);

      expect(
        container.read(currentThemeModeProvider),
        equals(ThemeMode.dark),
      );
    });

    test(
        'value on the settings box should be updated when the theme is changed',
        () async {
      await openTemporaryBox<String>('settings');
      final container = createContainer();

      // Change the theme mode to light.
      container.read(currentThemeModeProvider.notifier).set(ThemeMode.light);

      expect(
        Hive.box<String>('settings').get('themeMode'),
        equals(ThemeMode.light.name),
      );
    });
  });
}
