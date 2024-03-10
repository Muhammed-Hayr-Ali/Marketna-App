import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/assets.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/src/auth/presentation/manager/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final _ = Get.find<AuthController>();

  void continueWithGoogle() {
    _.continueWithGoogle();
  }

  void continueWithEmail(context) async {
    Get.toNamed(AppRoutes.signin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(backgroundColor: Colors.grey.shade100),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(),
          Image.asset(Assets.login),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadiusDirectional.vertical(top: Radius.circular(20)),
                color: Colors.white),
            child: Column(children: [
              Obx(
                () => CustomButton(
                  isLoading: _.isLoading.value,
                  onPressed: continueWithGoogle,
                  color: Colors.grey.shade300,
                  progressColor: AppColors.primaryColor,
                  elevation: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Continue with Google'.tr),
                      const SizedBox(width: 10),
                      SvgPicture.asset(Assets.googleLogo),
                    ],
                  ),
                ),
              ),
              CustomButton(
                isLoading: false,
                onPressed: () => continueWithEmail(context),
                color: AppColors.primaryColor,
                elevation: 0,
                child: Text('Continue with Email'.tr,
                    style: const TextStyle(color: Colors.white)),
              ),
              const SizedBox(),
              Text('Don\'t have an account?'.tr),
              TextButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.signup);
                },
                child: Text('Sign Up'.tr),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
