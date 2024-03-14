import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/services/app_sercives.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';

class SignupController extends GetxController {
  final SignupRepo signupRepo;
  RxString path = ''.obs;
  RxBool invaldPath = false.obs;
//
  RxBool isLoading = false.obs;
  RxBool isConfett = false.obs;

  SignupController({required this.signupRepo});

  Future<void> signup({required Map<String, dynamic> profile}) async {
    isLoading(true);
    ApiResult apiResult = await signupRepo.signup(profile: profile);
    apiResult.when(success: (status, message, data, v) async {
      /// TODO: INIT APP SERVICES
      await appServices();
      Future.delayed(const Duration(milliseconds: 500),
          () => Get.offAllNamed(AppRoutes.bottomNavBar));
    }, failure: (status, message) {
      isConfett(false);
      CustomNotification.showSnackbar(message: message);
    });
    isLoading(false);
  }
}
