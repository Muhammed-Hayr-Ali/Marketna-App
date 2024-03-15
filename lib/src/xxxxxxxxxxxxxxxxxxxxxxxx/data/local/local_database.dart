import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/local_storage_keys.dart';

abstract class ProfileLocalDatabase {
  Future<String> token();

  Future<String> getProfile();

  Future<void> saveProfile({required String profile});

  Future<void> deleteProfile();

  Future<void> updateProfile({required String profile});
}

class ProfileLocalDatabaseImpl implements ProfileLocalDatabase {
  final GetStorage storage = GetStorage();
  @override
  Future<String> token() async {
    final token = await storage.read(LocalStorageKeys.token);
    if (token == null) {
      return Future.value('');
    }
    return Future.value(token);
  }

  @override
  Future<void> deleteProfile() async {
    await storage.remove(LocalStorageKeys.profile);
    return Future.value();
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
}
