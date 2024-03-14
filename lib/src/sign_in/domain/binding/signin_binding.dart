import 'package:get/get.dart';
import 'package:marketna_app/shared/login_animation/login_animation.dart';
import 'package:marketna_app/src/sign_in/data/services/signin_service.dart';
import 'package:marketna_app/src/sign_in/domain/repositories/signin_repo.dart';
import 'package:marketna_app/src/sign_in/presentation/manager/signin_controller.dart';

class SigninBinding extends Bindings {
  SigninService signinService = SigninService();

  @override
  void dependencies() {
    Get.put<LoginAnimation>(LoginAnimation());
    Get.lazyPut<SigninController>(
        () => SigninController(signinRepo: Get.find<SigninRepo>()));
  }
}
