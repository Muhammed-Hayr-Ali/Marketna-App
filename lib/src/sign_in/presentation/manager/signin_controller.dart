import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/sign_in/domain/use_cases/signin.dart';

class SigninController extends GetxController {
  RxBool isLoading = false.obs;
  final LoginAnimationController controller =
      Get.find<LoginAnimationController>();


  final signinUseCase = Get.find<SigninUseCasesImpl>();





  Future<void> signin({required String email, required String password}) async {
    isLoading(true);
    controller.loginClick();
    ApiResult apiResult =
        await signinUseCase.call(email: email, password: password);
    apiResult.when(success: (status, message, data, v) async {
      Future.delayed(
          const Duration(milliseconds: 1000), () => controller.success());
      Future.delayed(const Duration(milliseconds: 2500),
          () => Get.offAllNamed(AppRoutes.bottomNavBar));
    }, failure: (status, message) {
      Future.delayed(
          const Duration(milliseconds: 1000), () => controller.fail());
      CustomNotification.showSnackbar(message: message);
    });
    isLoading(false);
  }
}
