import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/login_animation/login_animation.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:marketna_app/constants/text/signin_text.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
import 'package:marketna_app/shared/widget/ink.dart';
import 'package:marketna_app/shared/widget/title_page.dart';
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
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PageTitle(
                  title: SignInText.title,
                  subTitle: SignInText.subTitle,
                ),
                const SizedBox(height: 30),
                Center(child: LoginAnimation()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      onTap: () => controller.lookAround(),
                      label: SignInText.email,
                      hintText: SignInText.example,
                      keyboardType: TextInputType.emailAddress,
                      validator: Validator.validateEmail,
                      controller: _email,
                      padding: const EdgeInsets.all(10),
                      onChanged: (value) => controller.moveEyes(value.length),
                    ),
                    CustomTextField(
                      onTap: controller.handsUpOnEyes,
                      isPassword: true,
                      label: SignInText.password.tr,
                      hintText: '*******',
                      keyboardType: TextInputType.visiblePassword,
                      validator: Validator.validatePassword,
                      controller: _password,
                      padding: const EdgeInsets.all(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16.0),
                      child: Inkk(
                        onTap: forgotPassword,
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 2),
                        child: CustomText(
                          SignInText.forgotPassword,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    Obx(
                      () => CustomButton(
                          isLoading: _.isLoading.value,
                          onPressed: login,
                          color: AppColors.primaryColor,
                          elevation: 0,
                          progressColor: Colors.white,
                          borderRadius: 100,
                          child: CustomText(SignInText.signIn,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
