import 'package:get/get.dart';

class Validator {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name can\'t be empty'.tr;
    }
    if (value.length < 3) {
      return 'Name must be at least 3 characters'.tr;
    }
    if (value.length > 20) {
      return 'Name must be less than 20 characters'.tr;
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number can\'t be empty'.tr;
    }
    if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)) {
      return 'Enter a valid phone number'.tr;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email can\'t be empty'.tr;
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Enter a valid email'.tr;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password can\'t be empty'.tr;
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters'.tr;
    }
    return null;
  }
}
