import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
import 'package:marketna_app/shared/widget/title_page.dart';
import 'package:marketna_app/src/sign_in/presentation/manager/signin_controller.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  final _ = Get.find<SigninController>();
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      _.signin(email: _email.text, password: _password.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const PageTitle(
              title: 'Login',
              subTitle: 'Enter your email and password',
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  CustomTextField(
                    hintText: 'Email'.tr,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validator.validateEmail,
                    controller: _email,
                    padding: const EdgeInsets.all(10),
                  ),
                  CustomTextField(
                    isPassword: true,
                    hintText: 'Password'.tr,
                    keyboardType: TextInputType.visiblePassword,
                    validator: Validator.validatePassword,
                    controller: _password,
                    padding: const EdgeInsets.all(10),
                  ),
                  Obx(
                    () => CustomButton(
                      isLoading: _.isSigning.value,
                      onPressed: login,
                      color: AppColors.primaryColor,
                      elevation: 0,
                      progressColor: Colors.white,
                      child: Text('Login'.tr,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
