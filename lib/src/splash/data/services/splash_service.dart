import 'package:get/get.dart';
import 'package:marketna_app/src/splash/data/local/splash_lacal_database.dart';
import 'package:marketna_app/src/splash/data/remote/splash_remote_database.dart';
import 'package:marketna_app/src/splash/data/repositories/splash_repo_impl.dart';
import 'package:marketna_app/src/splash/domain/repositories/splash_repo.dart';
import 'package:marketna_app/src/splash/domain/use_cases/use_cases.dart';

class SplashService extends GetxService {
  Future<SplashService> init() async {
    Get.put<SplashLocalDatabase>(SplashLocalDatabaseImpl());
    Get.put<SplashRemoteDatabase>(SplashRemoteDatabaseImpl());
    Get.put<SplashRepo>(SplashRepoImpl(
        localDatabase: Get.find<SplashLocalDatabase>(),
        remoteDatabase: Get.find<SplashRemoteDatabase>()));

    Get.put<SplashUseCasesImpl>(
        SplashUseCasesImpl(splashRepo: Get.find<SplashRepo>()));

    return this;
  }
}
