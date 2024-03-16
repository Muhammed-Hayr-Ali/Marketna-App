import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/local_storage_keys.dart';
import 'package:marketna_app/generated/strings.dart';

abstract class SignupLocalDatabase {
  /// saveProfile
  Future<void> saveProfile({required String profile});

  /// saveToken
  Future<void> saveToken({required String token});
}

class SignupLocalDatabaseImpl implements SignupLocalDatabase {
  final GetStorage storage = GetStorage();

  @override
  Future<void> saveProfile({required String profile}) async {
    await storage.write(Strings.profile, profile);
    return Future.value();
  }

  @override
  Future<void> saveToken({required String token}) async {
    await storage.write(LocalStorageKeys.token, token);
    return Future.value();
  }
}
