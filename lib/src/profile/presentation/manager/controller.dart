import 'dart:convert';

import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/profile/domain/entities/profile_model.dart';
import 'package:marketna_app/src/profile/domain/use_cases/use_cases.dart';

class ProfileScreenController extends GetxController {
  final useCases = Get.find<ProfileUseCasesImpl>();
  RxBool isLoading = false.obs;
  RxBool isLogout = false.obs;
  ProfileModel profile = ProfileModel.empty();

  Future<void> getProfileFromLocal() async {
    isLoading(true);
    final data = await useCases.getProfileFromLocal();
    if (data != '') {
      profile = ProfileModel.fromJson(jsonDecode(data));
      update();
    }
    isLoading(false);
  }

  Future<void> logout() async {
    isLogout(true);
    ApiResult apiResult = await useCases.logout();
    apiResult.when(success: (status, message, data, v) {
      Get.offAllNamed(AppRoutes.auth);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
    isLogout(false);
  }

  @override
  void onInit() {
    getProfileFromLocal();
    super.onInit();
  }
}
