import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/splash/domain/repositories/splash_repo.dart';

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
       Get.offAllNamed(AppRoutes.home);
      },
      failure: (bool status, String message) {
        if (message == 'Bad Response' || message == 'Unauthorized') {
          Get.offAndToNamed(AppRoutes.auth);
        } else {
          hasError.value = true;
          errorMessage.value = message;
        }
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
