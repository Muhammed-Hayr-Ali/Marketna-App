import 'package:marketna_app/translations/language/english/keys/signup_screen.dart';
import 'package:marketna_app/translations/language/english/keys/auth_screen.dart';
import 'package:marketna_app/translations/language/english/keys/signin_screen.dart';

class EnglishTranslations {
  Map<String, String> get englishKeys => {
        ...AuthScreenTranslations().keys,
        ...SignUpScreenTranslations().keys,
        ...SigninScreenTranslations().keys
      };
}
