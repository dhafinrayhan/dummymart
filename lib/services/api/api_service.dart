import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/models/login.dart';
import '../../features/profile/models/profile.dart';
import 'api_client.dart';

part 'api_service.g.dart';

@Riverpod(keepAlive: true)
class ApiService extends _$ApiService {
  @override
  ApiClient build() => ApiClient();

  void setToken(String token) {
    state = state.copyWithToken(token);
  }

  Future<Profile> login(Login data) async {
    final (profile, token) = await state.login(data);

    setToken(token);

    // Save the new [token] to Hive box.
    Hive.box<String>('token').put('current', token);

    return profile;
  }

  void logout() {
    // Delete the current [token] from Hive box.
    Hive.box<String>('token').delete('current');

    // Invalidate the state so that a new client with no token will be created
    // and used as the new state.
    ref.invalidateSelf();
  }
}
