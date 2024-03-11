import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/text.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              PageTitle(
                title: TEXT.resetPassword,
                subTitle: TEXT.enterEmail,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: TEXT.email.tr,
                      keyboardType: TextInputType.emailAddress,
                      validator: Validator.validateEmail,
                      controller: _email,
                      padding: const EdgeInsets.all(10),
                    ),
                    Obx(
                      () => CustomButton(
                          isLoading: _.isLoading.value,
                          onPressed: resetPass,
                          color: AppColors.primaryColor,
                          elevation: 0,
                          progressColor: Colors.white,
                          child: CustomText(TEXT.reset,
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
    );
  }
}
