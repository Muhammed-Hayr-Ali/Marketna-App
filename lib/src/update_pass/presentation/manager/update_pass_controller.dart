import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';

class UpdatePassController extends GetxController {
  final UpdatePassRepo updatePassRepo;
  RxBool isLoading = false.obs;
  UpdatePassController({required this.updatePassRepo});

  Future<void> updatePassword({required Map<String, dynamic> data}) async {
    isLoading.value = true;
    ApiResult apiResult = await updatePassRepo.updatePassword(data: data);
    apiResult.when(success: (statua, message, data, v) {
      Get.offAllNamed(AppRoutes.home);
    }, errors: (statua, message) {
      CustomNotification.showSnackbar(message: message);
    }, failure: (statua, message) {
      CustomNotification.showSnackbar(message: message);
    });
    isLoading.value = false;
  }
}
