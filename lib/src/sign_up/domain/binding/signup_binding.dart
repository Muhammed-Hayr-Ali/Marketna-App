import 'package:get/get.dart';
import 'package:marketna_app/src/sign_up/presentation/manager/signup_controller.dart';

class SignupBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
        () => SignupController());
  }
}
