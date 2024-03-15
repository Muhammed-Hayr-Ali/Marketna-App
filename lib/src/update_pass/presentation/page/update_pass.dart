import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/shared/text/update_pass_text.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
import 'package:marketna_app/shared/widget/title_page.dart';
import 'package:marketna_app/src/update_pass/presentation/manager/update_pass_controller.dart';

class UpdatePassScreen extends StatelessWidget {
  UpdatePassScreen({super.key});

  final arguments = Get.arguments as String;
  final _ = Get.find<UpdatePassController>();
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _resetCode = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  Future<void> resetPass() async {
    if (_.isLoading.value) return;
    if (_resetCode.text.length < 6) {
      _.isObscure.value = true;
      return;
    }
    if (_formKey.currentState!.validate()) {
      Map<String, dynamic> data = {
        "email": _email.text,
        "resetCode": _resetCode.text,
        "password": _password.text,
        "confirmPassword": _confirmPassword.text
      };
      _.updatePassword(data: data);
    }
  }

  @override
  Widget build(BuildContext context) {
    _email.text = arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PageTitle(
                  title: UpdatePassText.title,
                  subTitle: UpdatePassText.subTitle,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  enabled: false,
                  label: UpdatePassText.email,
                  hintText: UpdatePassText.example,
                  keyboardType: TextInputType.emailAddress,
                  validator: Validator.validateEmail,
                  controller: _email,
                  padding: const EdgeInsets.all(10),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomText(
                    UpdatePassText.resetCode,
                    fontSize: 12,
                    color: AppColors.grayColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 2.0),
                  child: Obx(
                    () => OtpTextField(
                      numberOfFields: 6,
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      borderWidth: 0,
                      borderColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      showFieldAsBox: true,
                      enabledBorderColor:
                          _.isObscure.value ? Colors.red : Colors.grey.shade200,
                      focusedBorderColor: Colors.transparent,
                      onSubmit: (String verificationCode) {
                        _resetCode.text = verificationCode;
                        _.isObscure.value = false;
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  isPassword: true,
                  label: UpdatePassText.password,
                  hintText: '********',
                  keyboardType: TextInputType.visiblePassword,
                  validator: Validator.validatePassword,
                  controller: _password,
                  padding: const EdgeInsets.all(10),
                ),
                CustomTextField(
                  isPassword: true,
                  label: UpdatePassText.confirmPassword,
                  hintText: '********',
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) =>
                      Validator.validateconfirmPassword(value, _password.text),
                  controller: _confirmPassword,
                  padding: const EdgeInsets.all(10),
                ),
                const SizedBox(height: 32),
                Obx(
                  () => CustomButton(
                      isLoading: _.isLoading.value,
                      onPressed: resetPass,
                      color: AppColors.primaryColor,
                      elevation: 0,
                      borderRadius: 100,
                      progressColor: Colors.white,
                      child: CustomText(UpdatePassText.updatePassword,
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
