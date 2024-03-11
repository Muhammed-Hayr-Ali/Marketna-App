import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/strings.dart';

abstract class UpdatePassLocalDatabase {
  final GetStorage storage;
  UpdatePassLocalDatabase({required this.storage});

  /// saveProfile
  Future<void> saveProfile({required Map<String, dynamic> profile});

  /// saveToken
  Future<void> saveToken({required String token});
}

class UpdatePassLocalDatabaseImpl implements UpdatePassLocalDatabase {
  @override
  GetStorage get storage => GetStorage();

  @override
  Future<void> saveProfile({required Map<String, dynamic> profile}) async {
    await storage.write(Strings.profile, profile);
    return Future.value();
  }

  @override
  Future<void> saveToken({required String token}) async {
    await storage.write(Strings.token, token);
    return Future.value();
  }
}