import 'dart:convert';

import 'package:get/get.dart';
import 'package:marketna_app/src/profile/domain/entities/profile_model.dart';
import 'package:marketna_app/src/profile/domain/use_cases/use_cases.dart';

class ProfileScreenController extends GetxController {
  final useCases = Get.find<ProfileUseCasesImpl>();
  RxBool isLoading = false.obs;
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

  @override
  void onInit() {
    getProfileFromLocal();
    super.onInit();
  }
}
