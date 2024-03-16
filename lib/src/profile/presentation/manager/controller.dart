import 'dart:convert';

import 'package:get/get.dart';
import 'package:marketna_app/src/profile/domain/entities/profile_model.dart';
import 'package:marketna_app/src/profile/domain/use_cases/use_cases.dart';

class ProfileScreenController extends GetxController {
  final useCases = Get.find<ProfileUseCasesImpl>();
  Rx<ProfileModel> profile = ProfileModel.empty().obs;

  Future<void> getProfileFromLocal() async {
    final data = await useCases.getProfileFromLocal();
    profile.value = ProfileModel.fromJson(jsonDecode(data));
  }

  @override
  void onInit() {
    getProfileFromLocal();
    super.onInit();
  }
}
