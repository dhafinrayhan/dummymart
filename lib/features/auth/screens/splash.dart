import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../services/api_client.dart';
import '../../profile/models/profile.dart';
import '../providers/auth_state.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  /// Checks the last [AuthState] of the app, restores token and the current
  /// [Profile] if authenticated.
  void _restoreAuthState() {
    final tokenBox = Hive.box<String>(name: 'token');
    final token = tokenBox['current'];

    final profileBox = Hive.box<Profile>(name: 'profile');
    final profile = profileBox['current'];

    if (token != null && profile != null) {
      ref.read(apiClientProvider.notifier).setToken(token);
      ref.read(currentAuthStateProvider.notifier).restore(profile);
    } else {
      ref.read(currentAuthStateProvider.notifier).reset();
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _restoreAuthState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
