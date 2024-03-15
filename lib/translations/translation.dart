import 'package:get/get.dart';
import 'package:marketna_app/translations/language/arabic/arabic.dart';
import 'package:marketna_app/translations/language/english/english.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': EnglishTranslations().englishKeys,
        'ar': ArabicTranslations().arabicKeys,
      };
}
