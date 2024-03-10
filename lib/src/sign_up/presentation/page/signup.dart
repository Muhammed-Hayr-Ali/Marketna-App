import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_date_picker.dart';
import 'package:marketna_app/shared/widget/custom_dropdown.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
import 'package:marketna_app/shared/widget/title_page.dart';
import 'package:marketna_app/src/sign_up/presentation/manager/signup_controller.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final _ = Get.find<SignupController>();
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _dateBirth = TextEditingController();
  final _gender = TextEditingController(text: 'Unspecified');

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      Map<String, dynamic> profile = {
        'name': _name.text,
        'email': _email.text,
        'password': _password.text,
        'phoneNumber': _phoneNumber.text
      };
      _.signup(profile: profile);
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
              title: 'Sign Up',
              subTitle: 'Create your account',
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
                    hintText: 'Name'.tr,
                    keyboardType: TextInputType.name,
                    validator: Validator.validateName,
                    controller: _name,
                    padding: const EdgeInsets.all(10),
                  ),
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
                  CustomTextField(
                    hintText: 'Phone Number'.tr,
                    keyboardType: TextInputType.phone,
                    validator: Validator.validatePhoneNumber,
                    controller: _phoneNumber,
                    padding: const EdgeInsets.all(10),
                  ),
                   CustomDatePicker(controller: _dateBirth),
                  CustomDropdown(
                    items: const ['Unspecified', 'Male', 'Female'],
                    controller: _gender,
                  ),
                  Obx(
                    () => CustomButton(
                      isLoading: _.isSignuping.value,
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
