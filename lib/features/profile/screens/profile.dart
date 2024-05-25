import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../auth/providers/auth_state.dart';
import '../providers/profile.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);

    final profileRecords = [
      (label: 'Name', text: profile?.fullName),
      (label: 'Username', text: profile?.username),
      (label: 'Email', text: profile?.email),
    ];

    void logout() {
      ref.read(currentAuthStateProvider.notifier).logout();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () => context.push('/settings'),
            icon: const Icon(Icons.settings),
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
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: logout,
          ),
        ],
      ),
    );
  }
}
