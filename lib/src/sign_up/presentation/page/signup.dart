import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:marketna_app/generated/app_colors.dart';
import 'package:marketna_app/generated/assets.dart';
import 'package:marketna_app/generated/text.dart';
import 'package:marketna_app/shared/validator/validator.dart';
import 'package:marketna_app/shared/widget/custom_avatar.dart';
import 'package:marketna_app/shared/widget/custom_button.dart';
import 'package:marketna_app/shared/widget/custom_date_picker.dart';
import 'package:marketna_app/shared/widget/custom_dropdown.dart';
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
  final _gender = TextEditingController(text: TEXT.unspecified);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 200,
                  child: PageTitle(
                    title: TEXT.signUp,
                    subTitle: TEXT.createYourAccount,
                  ),
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
                      Inkk(
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
                      CustomTextField(
                        hintText: TEXT.name.tr,
                        keyboardType: TextInputType.name,
                        validator: Validator.validateName,
                        controller: _name,
                        padding: const EdgeInsets.all(10),
                      ),
                      CustomTextField(
                        hintText: TEXT.email.tr,
                        keyboardType: TextInputType.emailAddress,
                        validator: Validator.validateEmail,
                        controller: _email,
                        padding: const EdgeInsets.all(10),
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
                        hintText: TEXT.phoneNumber.tr,
                        keyboardType: TextInputType.phone,
                        validator: Validator.validatePhoneNumber,
                        controller: _phoneNumber,
                        padding: const EdgeInsets.all(10),
                      ),
                      CustomDatePicker(
                          hintText: TEXT.dateBirth, controller: _dateBirth),
                      CustomDropdown(
                        hintText: TEXT.gender,
                        items: [TEXT.unspecified, TEXT.mail, TEXT.female],
                        value: TEXT.unspecified,
                        controller: _gender,
                      ),
                      Obx(
                        () => CustomButton(
                          isLoading: _.isLoading.value,
                          onPressed: login,
                          color: AppColors.primaryColor,
                          elevation: 0,
                          progressColor: Colors.white,
                          child: Text(TEXT.login.tr,
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
        ),
      ),
    );
  }
}
