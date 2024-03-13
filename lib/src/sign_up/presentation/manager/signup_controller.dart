import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/confetti_animation/confetti_animation_controller.dart';
import 'package:marketna_app/shared/loading_animation/loadin_animation_controller.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';

class SignupController extends GetxController {
  final SignupRepo signupRepo;
  RxString gender = 'Unspecified'.obs;
  RxString path = ''.obs;
  RxBool invaldPath = false.obs;
//
  RxBool isLoading = false.obs;
  RxBool isConfett = false.obs;
  final LoadingAnimationController _loadingAnimation =
      Get.find<LoadingAnimationController>();
  final ConfettiAnimationController _confettiAnimation =
      Get.find<ConfettiAnimationController>();

  SignupController({required this.signupRepo});

  Future<void> signup({required Map<String, dynamic> profile}) async {
    // تحويل الانيميشن الى Loading
    _loadingAnimation.reset.fire();
    // اضهارة الانيميشن
    isLoading(true);
    isConfett(true);
    ApiResult apiResult = await signupRepo.signup(profile: profile);

    apiResult.when(success: (status, message, data, v) {
      _loadingAnimation.check.fire();
      Future.delayed(const Duration(milliseconds: 1500), () {
        isLoading(false);
        _confettiAnimation.explosion.fire();
      });
      Future.delayed(const Duration(milliseconds: 3000),
          () => Get.offAllNamed(AppRoutes.home));
    }, failure: (status, message) {
      isConfett(false);
      _loadingAnimation.error.fire();
      Future.delayed(const Duration(seconds: 2), () => isLoading(false));
      CustomNotification.showSnackbar(message: message);
    });
  }
}
