import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../services/settings.dart';
import '../../../utils/extensions.dart';
import '../../auth/providers/auth_state.dart';
import '../providers/profile.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(currentProfileProvider);
    final themeMode = ref.watch(currentThemeModeProvider);

    final profileRecords = [
      (label: 'Name', text: profile?.fullName),
      (label: 'Username', text: profile?.username),
      (label: 'Email', text: profile?.email),
    ];

    void showThemeModeDialog() {
      showDialog(
        context: context,
        builder: (_) => const _ThemeModeDialog(),
      );
    }

    void logout() {
      ref.read(currentAuthStateProvider.notifier).logout();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () => context.showAppLicensePage(),
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: ListView(
        children: [
          for (final record in profileRecords)
            ListTile(
              title: Text(record.label),
              subtitle: Text(record.text ?? ''),
            ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: const Text('Theme mode'),
            trailing: Text(themeMode.label),
            onTap: showThemeModeDialog,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: logout,
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
      context.pop();
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
