import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/constants/local_storage_keys.dart';

abstract class AuthLocalDatabase {
  Future<void> saveProfile({required String profile});
  Future<void> saveToken({required String token});
}

class AuthLocalDatabaseImpl implements AuthLocalDatabase {
  GetStorage storage = GetStorage();

  @override
  Future<void> saveProfile({required String profile}) {
    storage.write(LocalStorageKeys.profile, profile);
    return Future.value();
  }

  @override
  Future<void> saveToken({required String token}) {
    storage.write(LocalStorageKeys.token, token);
    return Future.value();
  }
}
