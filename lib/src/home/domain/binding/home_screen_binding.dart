import 'package:get/get.dart';
import 'package:marketna_app/src/home/domain/repositories/repositories.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(
        () => HomeScreenController(homeRepo: Get.find<HomeRepo>()));
  }
}
