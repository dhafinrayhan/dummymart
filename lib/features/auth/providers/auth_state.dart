import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/auth_state.dart';

part 'auth_state.g.dart';

@riverpod
class CurrentAuthState extends _$CurrentAuthState {
  @override
  AuthState build() => AuthState.unknown;

  void login() {
    state = AuthState.authenticated;
  }

  void logout() {
    state = AuthState.unauthenticated;
  }

  void restore() {
    state = AuthState.unauthenticated;
  }
}
