import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/strings.dart';

abstract class AuthLocalDatabase {
  final GetStorage storage;

  AuthLocalDatabase({required this.storage});

  /// saveProfile
  Future<void> saveProfile({required Map<String, dynamic> profile});

  /// saveToken
  Future<void> saveToken({required String token});
}

class AuthLocalDatabaseImpl implements AuthLocalDatabase {
  @override
  GetStorage get storage => GetStorage();


  @override
  Future<void> saveProfile({required Map<String, dynamic>  profile}) {
    storage.write(Strings.profile, jsonEncode(profile));
    return Future.value();
  }

  @override
  Future<void> saveToken({required String token}) {
    storage.write(Strings.token, token);
    return Future.value();
  }
}
