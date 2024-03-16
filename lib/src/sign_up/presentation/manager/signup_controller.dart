import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/sign_up/domain/usecases/signup_use_cases_impl.dart';

class SignupController extends GetxController {
  RxString path = ''.obs;
  RxBool invaldPath = false.obs;
//
  RxBool isLoading = false.obs;

  final signUpUseCases = Get.find<SignUpUseCasesImpl>();

  Future<void> signup({required Map<String, dynamic> profile}) async {
    isLoading(true);
    ApiResult apiResult = await signUpUseCases.signup(profile: profile);
    apiResult.when(success: (status, message, data, v) async {
      Future.delayed(const Duration(milliseconds: 500),
          () => Get.offAllNamed(AppRoutes.bottomNavBar));
    }, failure: (status, message) {
      print(message);
      // CustomNotification.showSnackbar(message: message);
    });
    isLoading(false);
  }
}
