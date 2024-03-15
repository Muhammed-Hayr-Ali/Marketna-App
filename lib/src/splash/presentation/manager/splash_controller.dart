import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/splash/domain/use_cases/use_cases.dart';

class SplashController extends GetxController {
  final useCases = Get.find<SplashUseCasesImpl>();

  RxBool isLoading = false.obs;
  RxBool hasError = false.obs;
  RxString errorMessage = ''.obs;

  Future<void> checkExistsToken() async {
    ApiResult result = await useCases.checkExistsToken();
    result.when(
      success:
          (bool status, String message, dynamic data, dynamic value) async {
        Get.offAllNamed(AppRoutes.bottomNavBar);
      },
      failure: (bool status, String message) async {
        if (message == 'Connection error' ||
            message == 'Connection Timeout' ||
            message == 'Send Timeout' ||
            message == 'Receive Timeout') {
          hasError.value = true;
          errorMessage.value = message;
        } else {
          Get.offAllNamed(AppRoutes.auth);
        }
      },
    );
    isLoading(false);
  }

  @override
  void onInit() {
    Future.delayed(
        const Duration(milliseconds: 3500), () => checkExistsToken());
    super.onInit();
  }

  void retry() {
    hasError.value = false;
    errorMessage.value = '';
    isLoading.value = true;
    checkExistsToken();
  }
}
