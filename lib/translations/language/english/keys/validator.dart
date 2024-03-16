import 'package:marketna_app/shared/text/validator_text.dart';

class ValidatorTranslations {
  Map<String, String> get keys => {
        ValidatorText.nameEmpty: 'Name can\'t be empty',
        ValidatorText.nameMin: 'Name must be at least 3 characters',
        ValidatorText.nameMax: 'Name must be less than 20 characters',
        ValidatorText.phoneEmpty: 'Phone number can\'t be empty',
        ValidatorText.phoneInvalid: 'Enter a valid phone number',
        ValidatorText.emailEmpty: 'Email can\'t be empty',
        ValidatorText.emailInvalid: 'Enter a valid email',
        ValidatorText.passwordEmpty: 'Password can\'t be empty',
        ValidatorText.passwordMin: 'Password must be at least 8 characters',
        ValidatorText.passwordConfirm: 'Password doesn\'t match',
      };
}
