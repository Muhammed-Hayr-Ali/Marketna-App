import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/src/profile/presentation/manager/controller.dart';
import 'package:marketna_app/src/profile/presentation/widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ProfileScreenController _ = Get.find<ProfileScreenController>();

  void _logout() {
    _.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => _.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [ProfileWidget()],
                      ),
                    ),
            ),
            Obx(() => CustomButton(
                onPressed: _logout,
                isLoading: _.isLoading.value,
                color: AppColors.primaryColor,
                child: const CustomText(
                  'Logout',
                  color: Colors.white,
                )))
          ],
        ),
      ),
    );
  }
}
