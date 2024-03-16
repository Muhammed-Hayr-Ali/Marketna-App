import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/strings.dart';

abstract class AuthLocalDatabase {

  /// saveProfile
  Future<void> saveProfile({required String  profile});

  /// saveToken
  Future<void> saveToken({required String token});
}

class AuthLocalDatabaseImpl implements AuthLocalDatabase {
  GetStorage storage = GetStorage();


  @override
  Future<void> saveProfile({required String   profile}) {
    storage.write(Strings.profile, profile);
    return Future.value();
  }

  @override
  Future<void> saveToken({required String token}) {
    storage.write(Strings.token, token);
    return Future.value();
  }
}
