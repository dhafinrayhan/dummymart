import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../profile/models/profile.dart';
import '../providers/auth_state.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  /// Checks the last [AuthState] of the app and restores the current [Profile]
  /// if authenticated.
  void _restoreAuthState() {
    final box = Hive.box<Profile>('profile');
    final profile = box.get('current');
    if (profile != null) {
      ref.read(currentAuthStateProvider.notifier).restore(profile);
    } else {
      ref.read(currentAuthStateProvider.notifier).logout();
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
