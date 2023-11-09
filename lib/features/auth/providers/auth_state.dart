import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api_client.dart';
import '../../profile/providers/profile.dart';
import '../models/auth_state.dart';
import '../models/login.dart';

part 'auth_state.g.dart';

@riverpod
class CurrentAuthState extends _$CurrentAuthState {
  @override
  AuthState build() => AuthState.unknown;

  Future<void> login(Login data) async {
    final profile = await ref.read(apiClientProvider.notifier).login(data);
    ref.read(currentProfileProvider.notifier).set(profile);

    state = AuthState.authenticated;
  }

  void logout() {
    ref.invalidate(currentProfileProvider);

    state = AuthState.unauthenticated;
  }

  void restore() {
    state = AuthState.unauthenticated;
  }
}
