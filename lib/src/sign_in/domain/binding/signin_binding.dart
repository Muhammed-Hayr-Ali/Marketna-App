import 'package:get/get.dart';
import 'package:marketna_app/src/sign_in/presentation/manager/signin_controller.dart';

class SigninBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<SigninController>(() => SigninController());
  }
}
