import 'package:get/get.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:marketna_app/src/sign_in/data/services/signin_service.dart';
import 'package:marketna_app/src/sign_in/presentation/manager/signin_controller.dart';

class SigninBinding extends Bindings {
  SigninService signinService = SigninService();

  @override
  void dependencies() {
    Get.lazyPut<SigninController>(() => SigninController());
  }
}
