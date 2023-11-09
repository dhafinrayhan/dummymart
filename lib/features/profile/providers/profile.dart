import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/profile.dart';

part 'profile.g.dart';

@Riverpod(keepAlive: true)
class CurrentProfile extends _$CurrentProfile {
  @override
  Profile? build() => null;

  void set(Profile profile) {
    state = profile;
  }
}
