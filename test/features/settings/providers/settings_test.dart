import 'package:dummymart/features/settings/providers/settings.dart';
import 'package:dummymart/services/storage/prefs.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

import '../../../utils/testing_utils.dart';

void main() {
  group('Test theme mode provider', () {
    test('theme should initially be ThemeMode.system', () async {
      final prefs = await createPrefs();
      final container = createContainer(overrides: [
        prefsProvider.overrideWith((ref) => prefs),
      ]);

      expect(
        container.read(currentThemeModeProvider),
        equals(ThemeMode.system),
      );
    });

    test('theme should read the saved value from prefs', () async {
      final prefs = await createPrefs(
        initialValues: {'themeMode': ThemeMode.dark.name},
      );
      final container = createContainer(overrides: [
        prefsProvider.overrideWith((ref) => prefs),
      ]);

      expect(
        container.read(currentThemeModeProvider),
        equals(ThemeMode.dark),
      );
    });

    test(
        'value exposed by the provider should update when the theme is changed',
        () async {
      final prefs = await createPrefs();
      final container = createContainer(overrides: [
        prefsProvider.overrideWith((ref) => prefs),
      ]);

      // Change the theme mode to dark.
      container.read(currentThemeModeProvider.notifier).set(ThemeMode.dark);

      expect(
        container.read(currentThemeModeProvider),
        equals(ThemeMode.dark),
      );
    });

    test('value on the prefs should be updated when the theme is changed',
        () async {
      final prefs = await createPrefs();
      final container = createContainer(overrides: [
        prefsProvider.overrideWith((ref) => prefs),
      ]);

      // Change the theme mode to light.
      container.read(currentThemeModeProvider.notifier).set(ThemeMode.light);

      expect(
        prefs.getString('themeMode'),
        equals(ThemeMode.light.name),
      );
    });
  });
}
