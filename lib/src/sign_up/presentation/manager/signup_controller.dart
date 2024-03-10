import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';

class SignupController extends GetxController {
  final SignupRepo signupRepo;
  RxBool isSignuping = false.obs;
  RxString gender = 'Unspecified'.obs;
  SignupController({required this.signupRepo});

  Future<void> signup({required Map<String, dynamic> profile}) async {
    isSignuping.value = true;
    ApiResult apiResult = await signupRepo.signup(profile: profile);

    apiResult.when(success: (status, message, data, v) {
      Get.offAllNamed(AppRoutes.home);
    }, errors: (status, message) {
      Get.snackbar('Error'.tr, message);
    }, failure: (status, message) {
      Get.snackbar('Error'.tr, message);
    });
    isSignuping.value = false;
  }
}
