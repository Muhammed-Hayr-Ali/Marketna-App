import 'package:get/get.dart';
import 'package:marketna_app/constants/text/validator_text.dart';

class Validator {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorText.nameEmpty.tr;
    }
    if (value.length < 3) {
      return ValidatorText.nameMin.tr;
    }
    if (value.length > 20) {
      return ValidatorText.nameMax.tr;
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorText.phoneEmpty.tr;
    }
    if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)) {
      return ValidatorText.phoneInvalid.tr;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorText.emailEmpty.tr;
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return ValidatorText.emailInvalid.tr;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorText.passwordEmpty.tr;
    }
    if (value.length < 8) {
      return ValidatorText.passwordMin.tr;
    }
    return null;
  } 
  
  
   static String? validateconfirmPassword(String? value, String? pass) {
    if (value == null || value.isEmpty) {
      return ValidatorText.passwordEmpty.tr;
    }
    if (value.length < 6) {
      return ValidatorText.passwordMin.tr;
    }
    if(value != pass){
      return ValidatorText.passwordConfirm.tr;
    }
    return null;
  }


  
}
