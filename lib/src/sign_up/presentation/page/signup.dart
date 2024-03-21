import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketna_app/constants/app_colors.dart';
import 'package:marketna_app/constants/assets.dart';
import 'package:marketna_app/routes/app_pages.dart';
import 'package:marketna_app/constants/text/signup_text.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_avatar.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_date_picker.dart';
import 'package:marketna_app/shared/widget/custom_dropdown.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/shared/widget/custom_text_field.dart';
import 'package:marketna_app/shared/image_picker/image_picker.dart';
import 'package:marketna_app/shared/widget/ink.dart';
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
  final _gender = TextEditingController(text: SignUpText.unspecified);

  Future<void> login() async {
    if (_.isLoading.value) return;

    _.invaldPath.value = _.path.value == '' ? true : false;

    if (_formKey.currentState!.validate() && _.path.value != '') {
      Map<String, dynamic> profile = {
        'profile': _.path.value != '' ? _.path.value : null,
        'name': _name.text,
        'email': _email.text,
        'password': _password.text,
        'phoneNumber': _phoneNumber.text,
        'gender': _gender.text,
        'dateBirth': _dateBirth.text,
      };
      _.signup(profile: profile);
    } else {
      _.invaldPath.value = true;
    }
  }

  Future<void> selectImage() async {
    _.path.value = await ImageService.getImage(
            camera: SvgPicture.asset(Assets.camera),
            gallery: SvgPicture.asset(Assets.gallery)) ??
        '';
  }

  void _goToSignIn() {
    Get.toNamed(AppRoutes.signin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PageTitle(
                  title: SignUpText.title,
                  subTitle: SignUpText.subTitle,
                ),
                const SizedBox(height: 30),
                Center(
                  child: Inkk(
                    radius: 999,
                    onTap: selectImage,
                    child: Obx(
                      () => CustomAvatar(
                        borderColor: _.invaldPath.value
                            ? Colors.red
                            : Colors.transparent,
                        borderWidth: _.invaldPath.value ? 1 : 0,
                        sourceImage: SourceImage.localImage,
                        path: _.path.value,
                      ),
                    ),
                  ),
                ),
                CustomTextField(
                  label: SignUpText.name,
                  hintText: SignUpText.nameHint,
                  keyboardType: TextInputType.name,
                  validator: Validator.validateName,
                  controller: _name,
                  padding: const EdgeInsets.all(10),
                ),
                CustomTextField(
                  label: SignUpText.email,
                  hintText: SignUpText.example,
                  keyboardType: TextInputType.emailAddress,
                  validator: Validator.validateEmail,
                  controller: _email,
                  padding: const EdgeInsets.all(10),
                ),
                CustomTextField(
                  isPassword: true,
                  label: SignUpText.password,
                  hintText: '********',
                  keyboardType: TextInputType.visiblePassword,
                  validator: Validator.validatePassword,
                  controller: _password,
                  padding: const EdgeInsets.all(10),
                ),
                CustomTextField(
                  label: SignUpText.phoneNumber,
                  hintText: SignUpText.phoneNumberHint,
                  keyboardType: TextInputType.phone,
                  validator: Validator.validatePhoneNumber,
                  controller: _phoneNumber,
                  padding: const EdgeInsets.all(10),
                ),
                CustomDatePicker(
                    label: SignUpText.dateBirth, controller: _dateBirth),
                CustomDropdown(
                  label: SignUpText.gender,
                  items: [
                    SignUpText.unspecified,
                    SignUpText.male,
                    SignUpText.female
                  ],
                  value: SignUpText.unspecified,
                  controller: _gender,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: Row(
                    children: [
                      CustomText(
                        SignUpText.alreadyAccount,
                        fontSize: 12,
                      ),
                      Inkk(
                        onTap: _goToSignIn,
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 2),
                        child: CustomText(
                          SignUpText.signIn,
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
                      onPressed: login,
                      color: AppColors.primaryColor,
                      elevation: 0,
                      borderRadius: 100,
                      progressColor: Colors.white,
                      child: CustomText(SignUpText.createAccount,
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
