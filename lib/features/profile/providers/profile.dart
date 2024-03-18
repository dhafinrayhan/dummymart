import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/profile.dart';

part 'profile.g.dart';

@riverpod
class CurrentProfile extends _$CurrentProfile {
  final _box = Hive.box<Profile>('profile');

  @override
  Profile? build() {
    final profile = _box.get('current');
    return profile;
  }

  void set(Profile profile) {
    _box.put('current', profile);
    state = profile;
  }

  void reset() {
    _box.delete('current');
    state = null;
  }
}
