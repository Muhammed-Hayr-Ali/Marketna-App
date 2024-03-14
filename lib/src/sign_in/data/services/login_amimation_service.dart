import 'package:get/get.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';

class LoginAnimationService extends GetxService {
  Future<LoginAnimationService> init() async {
    Get.lazyPut<LoginAnimationController>(() => LoginAnimationController());
    return this;
  }
}
