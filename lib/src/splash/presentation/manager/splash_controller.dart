import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/splash/domain/repositories/splash_repo.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';

class SplashController extends GetxController {
  final SplashRepo splashRepo;
  RxBool isLoading = false.obs;
  RxBool hasError = false.obs;
  RxString errorMessage = ''.obs;
  SplashController({required this.splashRepo});

  Future<void> checkExistsToken() async {
    ApiResult result = await splashRepo.checkExistsToken();
    result.when(
      success: (bool status, String message, dynamic data, dynamic value) {
        ///TODO:: Check data
        /// to Home Screen
        // Get.offAllNamed(AppRoutes.home);
        CustomNotification.showSnackbar(message: message);
        Get.offAllNamed(AppRoutes.auth);
      },
      errors: (bool status, String message) {
        /// to Login Screen
        Future.delayed(const Duration(seconds: 2), () {
          Get.offAllNamed(AppRoutes.auth);
        });
      },
      failure: (bool status, String message) {
        hasError.value = true;
        errorMessage.value = message;
      },
    );
    isLoading(false);
  }

  @override
  void onInit() {
    checkExistsToken();
    super.onInit();
  }

  void retry() {
    hasError.value = false;
    errorMessage.value = '';
    isLoading.value = true;
    checkExistsToken();
  }
}
