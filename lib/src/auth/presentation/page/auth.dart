import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/assets.dart';
import 'package:marketna_app/generated/text.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/src/auth/presentation/manager/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final _ = Get.find<AuthController>();

  void continueWithGoogle() {
    if (_.isLoading.value) return;
    _.continueWithGoogle();
  }

  void continueWithEmail(context) async {
    Get.toNamed(AppRoutes.signin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Image.asset(Assets.login),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 4,
                    //offset: const Offset(0, 5),
                    spreadRadius: 0)
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
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
                        CustomText(TEXT.continueWithGoogle),
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
                  child: CustomText(
                    TEXT.continueWithEmail,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(),
                CustomText(TEXT.dontHaveAnAccount,
                    color: Colors.grey, fontSize: 12),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.signup);
                  },
                  child: CustomText(TEXT.signUp),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
