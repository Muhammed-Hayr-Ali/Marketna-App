import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/shared/text/reset_pass_text.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
import 'package:marketna_app/shared/widget/ink.dart';
import 'package:marketna_app/shared/widget/title_page.dart';
import 'package:marketna_app/src/reset_password/presentation/manager/reser_pass_controller.dart';

class ResetPassScreen extends StatelessWidget {
  ResetPassScreen({super.key});

  final _ = Get.find<ResetPassController>();
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();

  Future<void> resetPass() async {
    if (_.isLoading.value) return;
    if (_formKey.currentState!.validate()) {
      _.resetPassowrd(email: _email.text);
    }
  }

  void _goToSignUp() {
    Get.offNamed(AppRoutes.signup);
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
              children: [
                PageTitle(
                  title: ResetPassText.title,
                  subTitle: ResetPassText.subTitle,
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    CustomTextField(
                      label: ResetPassText.email,
                      hintText: ResetPassText.example,
                      keyboardType: TextInputType.emailAddress,
                      validator: Validator.validateEmail,
                      controller: _email,
                      padding: const EdgeInsets.all(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16.0),
                      child: Row(
                        children: [
                          CustomText(
                            ResetPassText.dontHaveAccount,
                            fontSize: 12,
                            color: AppColors.grayColor,
                          ),
                          Inkk(
                            onTap: _goToSignUp,
                            padding: const EdgeInsets.fromLTRB(4, 0, 4, 2),
                            child: CustomText(
                              ResetPassText.signUp,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Obx(
                      () => CustomButton(
                          isLoading: _.isLoading.value,
                          onPressed: resetPass,
                          color: AppColors.primaryColor,
                          elevation: 0,
                          borderRadius: 100,
                          progressColor: Colors.white,
                          child: CustomText(ResetPassText.resetPassword,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
