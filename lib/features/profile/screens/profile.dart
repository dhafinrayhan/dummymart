import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../services/auth_state.dart';
import '../../../utils/extensions.dart';
import '../providers/profile.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);

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
      body: profile.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('An error occurred')),
        data: (profile) {
          final records = [
            (label: 'Name', text: profile.fullName),
            (label: 'Username', text: profile.username),
            (label: 'Email', text: profile.email),
          ];

          return ListView(
            children: [
              for (final record in records)
                ListTile(
                  title: Text(record.label),
                  subtitle: Text(record.text),
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.logout),
        label: const Text('Logout'),
        onPressed: logout,
        backgroundColor: context.colorScheme.errorContainer,
      ),
    );
  }
}
