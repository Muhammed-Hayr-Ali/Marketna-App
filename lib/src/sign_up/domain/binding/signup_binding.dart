import 'package:get/get.dart';
import 'package:marketna_app/src/sign_up/data/services/signup_service.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';
import 'package:marketna_app/src/sign_up/presentation/manager/signup_controller.dart';

class SignupBinding extends Bindings {
  SignupService signupService = SignupService();

  @override
  void dependencies() {
    signupService.dependencies();

    Get.lazyPut<SignupController>(
        () => SignupController(signupRepo: Get.find<SignupRepo>()));
  }
}
