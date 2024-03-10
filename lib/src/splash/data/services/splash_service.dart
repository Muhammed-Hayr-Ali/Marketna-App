import 'package:get/get.dart';
import 'package:marketna_app/src/splash/data/local/splash_lacal_database.dart';
import 'package:marketna_app/src/splash/data/remote/splash_remote_database.dart';
import 'package:marketna_app/src/splash/data/repositories/splash_repo_impl.dart';
import 'package:marketna_app/src/splash/domain/repositories/splash_repo.dart';

class SplashService extends Bindings {

  
  @override
  void dependencies() {
    Get.lazyPut<SplashLocalDatabase>(() => SplashLocalDatabaseImpl());
    Get.lazyPut<SplashRemoteDatabase>(() => SplashRemoteDatabaseImpl());

    Get.lazyPut<SplashRepo>(() => SplashRepoImpl(
        localDatabase: Get.find<SplashLocalDatabase>(),
        remoteDatabase: Get.find<SplashRemoteDatabase>()));
  }
}
