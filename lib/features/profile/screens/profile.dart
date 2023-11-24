import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../auth/providers/auth_state.dart';
import '../providers/profile.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(currentProfileProvider);
    final profileRecords = [
      (label: 'Name', text: profile?.fullName),
      (label: 'Username', text: profile?.username),
      (label: 'Email', text: profile?.email),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(currentAuthStateProvider.notifier).logout(),
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: profileRecords.length,
        itemBuilder: (_, index) {
          final record = profileRecords[index];
          return ListTile(
            title: Text(record.label),
            subtitle: Text(record.text ?? ''),
          );
        },
      ),
    );
  }
}
