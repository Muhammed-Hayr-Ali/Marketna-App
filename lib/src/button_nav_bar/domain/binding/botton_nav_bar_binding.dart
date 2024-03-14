import 'package:get/get.dart';
import 'package:marketna_app/src/button_nav_bar/presentation/manager/bottom_nav_bar_controller.dart';
class BottomNavBarBinding extends Bindings {
  @override
  void dependencies() {
    
    Get.put(BottomNavBarController());
  }
}
