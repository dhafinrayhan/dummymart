import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
@HiveType(typeId: 0)
class Profile with _$Profile {
  const factory Profile({
    @HiveField(0) required int id,
    @HiveField(1) required String username,
    @HiveField(2) required String email,
    @HiveField(3) required String firstName,
    @HiveField(4) required String lastName,
    @HiveField(5) required Gender gender,
    @HiveField(6) required String image,
  }) = _Profile;

  String get fullName => '$firstName $lastName';

  const Profile._();

  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
}

@HiveType(typeId: 1)
enum Gender {
  @HiveField(0)
  male,
  @HiveField(1)
  female,
}
