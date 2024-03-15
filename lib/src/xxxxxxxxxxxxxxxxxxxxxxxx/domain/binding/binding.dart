import 'package:get/get.dart';
import 'package:marketna_app/src/profile/presentation/manager/controller.dart';

class ProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileScreenController>(() => ProfileScreenController());
  }
}