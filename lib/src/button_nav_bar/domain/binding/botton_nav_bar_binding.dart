import 'package:get/get.dart';
import 'package:marketna_app/src/button_nav_bar/presentation/manager/bottom_nav_bar_controller.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';
import 'package:marketna_app/src/profile/presentation/manager/controller.dart';

class BottomNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => ProfileScreenController());
  }
}
