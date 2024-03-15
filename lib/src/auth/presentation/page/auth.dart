import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/assets.dart';
import 'package:marketna_app/generated/text.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/ink.dart';
import 'package:marketna_app/shared/widget/logo.dart';
import 'package:marketna_app/src/auth/presentation/manager/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final _ = Get.find<AuthController>();

  void continueWithGoogle() {
    if (_.isLoading.value) return;
    _.continueWithGoogle();
  }

  void _signIn() async {
    Get.toNamed(AppRoutes.signin);
  }

  void _createNewAccount() async {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(),
          const Logo(logoSize: 64),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(children: [
              Obx(
                () => CustomButton(
                  isLoading: _.isLoading.value,
                  onPressed: continueWithGoogle,
                  borderRadius: 100,
                  color: Colors.grey.shade200,
                  height: 55,
                  progressColor: AppColors.primaryColor,
                  elevation: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        TEXT.continueWithGoogle,
                        color: AppColors.grayColor,
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(Assets.googleLogo),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomText(TEXT.youCanAlso, fontSize: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Inkk(
                    onTap: _createNewAccount,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomText(TEXT.createAnAccount,
                          fontSize: 12,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  CustomText(
                    TEXT.or,
                    fontSize: 12,
                  ),
                  Inkk(
                    onTap: _signIn,
                    child: CustomText(TEXT.signIn,
                        fontSize: 12,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 0.5,
                    child: Checkbox(
                      visualDensity:
                          const VisualDensity(horizontal: -4.0, vertical: 0),
                      value: true,
                      checkColor: AppColors.primaryColor,
                      activeColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(
                            width: 2.0, color: AppColors.primaryColor),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onChanged: (newValue) {},
                    ),
                  ),
                  CustomText(
                    TEXT.byContinuingYouAgreeTo,
                    fontSize: 10,
                  ),
                  CustomText(
                    TEXT.ourDataPolicy,
                    fontSize: 10,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
