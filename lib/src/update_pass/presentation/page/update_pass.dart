import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/text.dart';
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
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.height - 35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageTitle(
                      title: TEXT.updatePassword,
                      subTitle: TEXT.createNewPassword,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        CustomTextField(
                          enabled: false,
                          hintText: TEXT.email.tr,
                          keyboardType: TextInputType.emailAddress,
                          validator: Validator.validateEmail,
                          controller: _email,
                          padding: const EdgeInsets.all(10),
                        ),
                        const SizedBox(height: 10),
                        CustomText(
                          TEXT.enterResetCode,
                          color: AppColors.grayColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Obx(
                            () => OtpTextField(
                                numberOfFields: 6,
                                borderColor: Colors.grey.shade200,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                showFieldAsBox: true,
                                enabledBorderColor: _.isObscure.value
                                    ? Colors.red
                                    : Colors.grey.shade200,
                                focusedBorderColor: AppColors.primaryColor,
                                onSubmit: (String verificationCode) {
                                  _resetCode.text = verificationCode;
                                  _.isObscure.value = false;
                                }),
                          ),
                        ),
                        CustomTextField(
                          isPassword: true,
                          hintText: TEXT.password.tr,
                          keyboardType: TextInputType.visiblePassword,
                          validator: Validator.validatePassword,
                          controller: _password,
                          padding: const EdgeInsets.all(10),
                        ),
                        CustomTextField(
                          isPassword: true,
                          hintText: TEXT.confirmPassword.tr,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) =>
                              Validator.validateconfirmPassword(
                                  value, _password.text),
                          controller: _confirmPassword,
                          padding: const EdgeInsets.all(10),
                        ),
                        Obx(
                          () => CustomButton(
                              isLoading: _.isLoading.value,
                              onPressed: resetPass,
                              color: AppColors.primaryColor,
                              elevation: 0,
                              progressColor: Colors.white,
                              child: CustomText(TEXT.updatePassword,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
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
