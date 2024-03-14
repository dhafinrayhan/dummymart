import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../services/api/api_service.dart';
import '../../profile/models/profile.dart';
import '../providers/auth_state.dart';

/// The screen shown at the beginning after the app is launched.
///
/// This screen is not meant to be the usual "splash screen" where it shows some
/// logo or animation representing the app's brand, but rather it's used as a
/// temporary screen to show when the authentication state is still unknown and
/// the app needs to determine what authentication state should be used based on
/// the saved profile/token.
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  /// Checks the last [AuthState] of the app, restores token and the current
  /// [Profile] if authenticated.
  void _restoreAuthState() {
    final tokenBox = Hive.box<String>('token');
    final token = tokenBox.get('current');

    final profileBox = Hive.box<Profile>('profile');
    final profile = profileBox.get('current');

    if (token != null && profile != null) {
      ref.read(apiServiceProvider.notifier).setToken(token);
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
