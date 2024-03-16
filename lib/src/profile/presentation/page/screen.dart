import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/src/profile/domain/entities/profile_model.dart';
import 'package:marketna_app/src/profile/presentation/manager/controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
// final ProfileScreenController controller = Get.put(ProfileScreenController());
  final ProfileScreenController _ = Get.find<ProfileScreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _.profile.value == ProfileModel.empty()
          ? const Center(child: CircularProgressIndicator())
          : CustomButton(
              onPressed: () => Get.toNamed(AppRoutes.test),
              isLoading: false,
              child: Center(child: Text(_.profile.value.name)))),
    );
  }
}
