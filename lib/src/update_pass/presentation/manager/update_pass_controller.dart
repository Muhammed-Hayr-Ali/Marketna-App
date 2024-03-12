import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';

class UpdatePassController extends GetxController {
  final UpdatePassRepo updatePassRepo;
  RxBool isLoading = false.obs;
  RxBool isObscure = false.obs;
  UpdatePassController({required this.updatePassRepo});

  Future<void> updatePassword({required Map<String, dynamic> data}) async {
    isLoading.value = true;
    ApiResult apiResult = await updatePassRepo.updatePassword(data: data);
    apiResult.when(success: (statua, message, data, v) {
      CustomNotification.showSnackbar(message: message);
      Get.offNamed(AppRoutes.signin);
    }, failure: (statua, message) {
      CustomNotification.showSnackbar(message: message);
    });
    isLoading.value = false;
  }
}
