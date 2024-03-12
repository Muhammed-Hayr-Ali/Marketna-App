import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/sign_in/domain/repositories/signin_repo.dart';

class SigninController extends GetxController {
  final SigninRepo signinRepo;
  RxBool isLoading = false.obs;
  SigninController({required this.signinRepo});

  Future<void> signin({required String email, required String password}) async {
    isLoading.value = true;
    ApiResult apiResult =
        await signinRepo.signin(email: email, password: password);

    apiResult.when(success: (status, message, data, v) {
      Get.offAllNamed(AppRoutes.home);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
    isLoading.value = false;
  }
}
