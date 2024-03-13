import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/text.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/login_animation/login_animation.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
import 'package:marketna_app/src/sign_in/presentation/manager/signin_controller.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  final _ = Get.find<SigninController>();
  final LoginAnimationController controller =
      Get.find<LoginAnimationController>();

  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  Future<void> login() async {
    if (_.isLoading.value) return;
    if (_formKey.currentState!.validate()) {
      _.signin(email: _email.text, password: _password.text);
    }
  }

  void forgotPassword() {
    Get.toNamed(AppRoutes.resetPass);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.height - 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LoginAnimation(),
                  // PageTitle(
                  //   title: TEXT.signinTitle,
                  //   subTitle: TEXT.signinSubTitle,
                  // ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        CustomTextField(
                          onTap: controller.lookAround,
                          hintText: TEXT.email.tr,
                          keyboardType: TextInputType.emailAddress,
                          validator: Validator.validateEmail,
                          controller: _email,
                          padding: const EdgeInsets.all(10),
                          onChanged: (value) =>
                              controller.moveEyes(value.length),
                        ),
                        CustomTextField(
                          onTap: controller.handsUpOnEyes,
                          isPassword: true,
                          hintText: TEXT.password.tr,
                          keyboardType: TextInputType.visiblePassword,
                          validator: Validator.validatePassword,
                          controller: _password,
                          padding: const EdgeInsets.all(10),
                        ),
                        Obx(()=> CustomButton(
                              isLoading: _.isLoading.value,
                              onPressed: login,
                              color: AppColors.primaryColor,
                              elevation: 0,
                              progressColor: Colors.white,
                              child: CustomText(TEXT.login.tr,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              TEXT.forgotPassword,
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                            TextButton(
                                onPressed: forgotPassword,
                                child: CustomText(
                                  TEXT.reset,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
