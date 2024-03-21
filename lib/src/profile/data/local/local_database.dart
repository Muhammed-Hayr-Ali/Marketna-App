import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/constants/local_storage_keys.dart';

abstract class ProfileLocalDatabase {
  Future<String> getToken();

  Future<String> getProfile();

  Future<void> saveProfile({required String profile});

  Future<void> updateProfile({required String profile});

  Future<void> deleteProfile();
  Future<void> deleteToken();
}

class ProfileLocalDatabaseImpl implements ProfileLocalDatabase {
  final GetStorage storage = GetStorage();
  @override
  Future<String> getToken() async {
    final token = await storage.read(LocalStorageKeys.token);
    if (token == null) {
      return Future.value('');
    }
    return Future.value(token);
  }

  @override
  Future<String> getProfile() async {
    final profile = await storage.read(LocalStorageKeys.profile);
    if (profile == null) {
      return Future.value('');
    }
    return Future.value(profile);
  }

  @override
  Future<void> saveProfile({required String profile}) async {
    await storage.write(LocalStorageKeys.profile, profile);
    return Future.value();
  }

  @override
  Future<void> updateProfile({required String profile}) async {
    await storage.write(LocalStorageKeys.profile, profile);
    return Future.value();
  }

  @override
  Future<void> deleteProfile() async {
    await storage.remove(LocalStorageKeys.profile);
    return Future.value();
  }

  @override
  Future<void> deleteToken() async {
    await storage.remove(LocalStorageKeys.token);
    return Future.value();
  }
}
