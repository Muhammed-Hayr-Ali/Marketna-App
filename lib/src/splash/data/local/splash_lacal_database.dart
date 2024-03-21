import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/constants/local_storage_keys.dart';

abstract class SplashLocalDatabase {

  /// Returns the token
  Future<String> retrieveToken();


  /// Saves the [Profile] to the local database
  Future<void> saveCurrentUser({required String profile});


}

class SplashLocalDatabaseImpl implements SplashLocalDatabase {


 GetStorage  storage = GetStorage();



  @override
  Future<String> retrieveToken() async {
    final token = await storage.read(LocalStorageKeys.token);
    if (token == null) {
      return Future.value('');
    }
    return Future.value(token);
  }

  @override
  Future<void> saveCurrentUser({required String profile}) async {
    await storage.write(LocalStorageKeys.profile, profile);
  }


  

}
