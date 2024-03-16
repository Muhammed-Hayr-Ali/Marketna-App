import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/local_storage_keys.dart';

abstract class SigninLocalDatabase {
  /// saveProfile
  Future<void> saveProfile({required String profile});

  /// saveToken
  Future<void> saveToken({required String token});
}

class SigninLocalDatabaseImpl implements SigninLocalDatabase {
  final GetStorage storage = GetStorage();

  @override
  Future<void> saveProfile({required String profile}) async {
    await storage.write(LocalStorageKeys.profile, profile);
    return Future.value();
  }

  @override
  Future<void> saveToken({required String token}) async {
    await storage.write(LocalStorageKeys.token, token);
    return Future.value();
  }
}
