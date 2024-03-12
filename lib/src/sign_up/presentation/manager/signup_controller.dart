import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';

class SignupController extends GetxController {
  final SignupRepo signupRepo;
  RxBool isLoading = false.obs;
  RxString gender = 'Unspecified'.obs;
  RxString path = ''.obs;
  RxBool invaldPath = false.obs;

  SignupController({required this.signupRepo});

  Future<void> signup({required Map<String, dynamic> profile}) async {
    isLoading.value = true;
    ApiResult apiResult = await signupRepo.signup(profile: profile);

    apiResult.when(success: (status, message, data, v) {
      Get.offAllNamed(AppRoutes.home);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
    isLoading.value = false;
  }
}
