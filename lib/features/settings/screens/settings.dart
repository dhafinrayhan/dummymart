import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/extensions.dart';
import '../../settings/providers/settings.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(currentThemeModeProvider);

    void showThemeModeDialog() {
      showDialog(
        context: context,
        builder: (_) => const _ThemeModeDialog(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: const Text('Theme mode'),
            trailing: Text(themeMode.label),
            onTap: showThemeModeDialog,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Open-source licenses'),
            onTap: () => context.showAppLicensePage(),
          ),
        ],
      ),
    );
  }
}

class _ThemeModeDialog extends ConsumerWidget {
  const _ThemeModeDialog();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void setThemeMode(ThemeMode themeMode) {
      ref.read(currentThemeModeProvider.notifier).set(themeMode);
      Navigator.of(context).pop();
    }

    return SimpleDialog(
      clipBehavior: Clip.antiAlias,
      children: [
        for (final themeMode in ThemeMode.values)
          _ThemeModeDialogOption(
            value: themeMode,
            onTap: () => setThemeMode(themeMode),
          )
      ],
    );
  }
}

class _ThemeModeDialogOption extends StatelessWidget {
  const _ThemeModeDialogOption({required this.value, required this.onTap});

  final ThemeMode value;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(value.label),
    );
  }
}
