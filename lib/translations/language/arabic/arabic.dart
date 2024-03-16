import 'package:marketna_app/translations/language/arabic/keys/api_exception.dart';
import 'package:marketna_app/translations/language/arabic/keys/auth_screen.dart';
import 'package:marketna_app/translations/language/arabic/keys/date_picker.dart';
import 'package:marketna_app/translations/language/arabic/keys/dio_exception.dart';
import 'package:marketna_app/translations/language/arabic/keys/reser_pass_screen.dart';
import 'package:marketna_app/translations/language/arabic/keys/signin_screen.dart';
import 'package:marketna_app/translations/language/arabic/keys/signup_screen.dart';
import 'package:marketna_app/translations/language/arabic/keys/update_pass_screen.dart';
import 'package:marketna_app/translations/language/arabic/keys/validator.dart';

class ArabicTranslations {
  Map<String, String> get arabicKeys => {
        ...AuthScreenTranslations().keys,
        ...SignUpScreenTranslations().keys,
        ...SigninScreenTranslations().keys,
        ...ReserPassScreenTranslations().keys,
        ...UpdatePassScreenTranslations().keys,
        ...DatePickerTranslations().keys,
        ...DioExceptionTranslations().keys,
        ...ApiExceptionTranslations().keys,
        ...ValidatorTranslations().keys,
      };
}
