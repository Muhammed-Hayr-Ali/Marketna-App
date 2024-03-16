import 'package:marketna_app/translations/language/english/keys/api_exception.dart';
import 'package:marketna_app/translations/language/english/keys/date_picker.dart';
import 'package:marketna_app/translations/language/english/keys/dio_exception.dart';
import 'package:marketna_app/translations/language/english/keys/reser_pass_screen.dart';
import 'package:marketna_app/translations/language/english/keys/signup_screen.dart';
import 'package:marketna_app/translations/language/english/keys/auth_screen.dart';
import 'package:marketna_app/translations/language/english/keys/signin_screen.dart';
import 'package:marketna_app/translations/language/english/keys/splash_screen.dart';
import 'package:marketna_app/translations/language/english/keys/update_pass_screen.dart';
import 'package:marketna_app/translations/language/english/keys/validator.dart';

class EnglishTranslations {
  Map<String, String> get englishKeys => {
        ...SplashScreenTranslations().keys,
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
