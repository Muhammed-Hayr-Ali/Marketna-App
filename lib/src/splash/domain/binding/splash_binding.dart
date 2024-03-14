import 'package:get/get.dart';
import 'package:marketna_app/src/splash/data/services/splash_service.dart';
import 'package:marketna_app/src/splash/domain/repositories/splash_repo.dart';
import 'package:marketna_app/src/splash/presentation/manager/splash_controller.dart';

class SplashBinding extends Bindings {
  SplashService splashService = SplashService();

  @override
  void dependencies() async {

    splashService.dependencies();
    Get.lazyPut<SplashController>(
        () => SplashController(splashRepo: Get.find<SplashRepo>()));
  }
}
