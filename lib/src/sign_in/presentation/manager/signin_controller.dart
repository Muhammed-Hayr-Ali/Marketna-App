import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/confetti_animation/confetti_animation_controller.dart';
import 'package:marketna_app/shared/loading_animation/loadin_animation_controller.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/sign_in/domain/repositories/signin_repo.dart';

class SigninController extends GetxController {
  final SigninRepo signinRepo;
  RxBool isLoading = false.obs;

  SigninController({required this.signinRepo});
  final LoginAnimationController controller =
      Get.put<LoginAnimationController>(LoginAnimationController());

  Future<void> signin({required String email, required String password}) async {
    isLoading(true);
    controller.loginClick();
    ApiResult apiResult =
        await signinRepo.signin(email: email, password: password);
    apiResult.when(success: (status, message, data, v) {
      Future.delayed(const Duration(milliseconds: 1000),
          () => controller.success());
      Future.delayed(const Duration(milliseconds: 2500),
          () => Get.offAllNamed(AppRoutes.home));
    }, failure: (status, message) {
     Future.delayed(const Duration(milliseconds: 1000),()=> controller.fail());
      CustomNotification.showSnackbar(message: message);
    });isLoading(false);
  }
}
