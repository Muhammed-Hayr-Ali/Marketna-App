import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/services/app_sercives.dart';
import 'package:marketna_app/services/auth_services.dart';
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
      success:
          (bool status, String message, dynamic data, dynamic value) async {
        ///TODO: INIT APP SERVICES
        await appServices();
        Future.delayed(const Duration(seconds: 3), () {
          Get.offAllNamed(AppRoutes.bottomNavBar);
        });
      },
      failure: (bool status, String message) async {
        if (message == 'Connection error' ||
            message == 'Connection Timeout' ||
            message == 'Send Timeout' ||
            message == 'Receive Timeout') {
          hasError.value = true;
          errorMessage.value = message;
        } else {
          ///TODO: INIT AUTH SERVICES
          await authServices();
          Future.delayed(const Duration(seconds: 3), () {
            Get.offAllNamed(AppRoutes.auth);
          });
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
