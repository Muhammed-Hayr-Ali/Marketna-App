import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';

class ResetPassController extends GetxController {
  final ResetPasswordRepo resetPasswordRepo;
  ResetPassController({required this.resetPasswordRepo});

  RxBool isLoading = false.obs;

  Future<void> resetPassowrd({required String email}) async {
    isLoading(true);
    ApiResult apiResult = await resetPasswordRepo.resetPassowrd(email: email);
    apiResult.when(
      success: (status, message, data, v) {
        Future.delayed(const Duration(milliseconds: 1500),
            () => Get.toNamed(AppRoutes.updatePass, arguments: email));
      },
      failure: (status, message) {
        CustomNotification.showSnackbar(message: message);
      },
    );
    isLoading(false);
  }
}
