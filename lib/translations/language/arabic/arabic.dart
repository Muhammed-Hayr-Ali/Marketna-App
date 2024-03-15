import 'package:marketna_app/translations/language/arabic/keys/auth_screen.dart';
import 'package:marketna_app/translations/language/arabic/keys/signin_screen.dart';
import 'package:marketna_app/translations/language/arabic/keys/signup_screen.dart';

class ArabicTranslations {
  Map<String, String> get arabicKeys => {
        ...AuthScreenTranslations().keys,
        ...SignUpScreenTranslations().keys,
        ...SigninScreenTranslations().keys,
      };
}
