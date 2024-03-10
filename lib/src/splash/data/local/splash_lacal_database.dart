import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/strings.dart';

abstract class SplashLocalDatabase {

  final GetStorage storage;

  SplashLocalDatabase({required this.storage});

  /// Returns the token
  Future<String> retrieveToken();


  /// Saves the [Profile] to the local database
  Future<void> saveCurrentUser({required String profile});


}

class SplashLocalDatabaseImpl implements SplashLocalDatabase {


  @override
  GetStorage get storage => GetStorage();



  @override
  Future<String> retrieveToken() async {
    final token = storage.read(Strings.token);
    if (token == null) {
      return Future.value('');
    }
    return Future.value(token);
  }

  @override
  Future<void> saveCurrentUser({required String profile}) async {
    await storage.write(Strings.profile, profile);
  }


  

}
