import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/confetti_animation/confetti_animation_controller.dart';
import 'package:marketna_app/shared/loading_animation/loadin_animation_controller.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';

class ResetPassController extends GetxController {
  final ResetPasswordRepo resetPasswordRepo;
  ResetPassController({required this.resetPasswordRepo});
  final LoadingAnimationController _loadingAnimation =
      Get.find<LoadingAnimationController>();
  final ConfettiAnimationController _confettiAnimation =
      Get.find<ConfettiAnimationController>();
  RxBool isLoading = false.obs;
  RxBool isConfett = false.obs;

  Future<void> resetPassowrd({required String email}) async {
    // تحويل الانيميشن الى Loading
    _loadingAnimation.reset.fire();
    // اضهارة الانيميشن
    isLoading(true);
    isConfett(true);

    ApiResult apiResult = await resetPasswordRepo.resetPassowrd(email: email);
    apiResult.when(
      success: (status, message, data, v) {
        _loadingAnimation.check.fire();
        Future.delayed(const Duration(milliseconds: 1500), () {
          isLoading(false);
          _confettiAnimation.explosion.fire();
        });
        Future.delayed(const Duration(milliseconds: 3000),
            () => Get.toNamed(AppRoutes.updatePass, arguments: email));
      },
      failure: (status, message) {
        _loadingAnimation.error.fire();
        CustomNotification.showSnackbar(message: message);
      },
    );
    Future.delayed(const Duration(seconds: 2), () => isLoading(false));
  }
}
