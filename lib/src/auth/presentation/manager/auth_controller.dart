import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/auth/domain/repositories/auth_repo.dart';

class AuthController extends GetxController {
  final AuthRepo authRepo;

  RxBool isLoading = false.obs;

  AuthController({required this.authRepo});

  Future<void> continueWithGoogle() async {
    isLoading.value = true;
    ApiResult apiResult = await authRepo.continueWithGoogle();

    apiResult.when(success: (status, message, data, v) async {
      Get.offAllNamed(AppRoutes.bottomNavBar);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
    isLoading.value = false;
  }
}
