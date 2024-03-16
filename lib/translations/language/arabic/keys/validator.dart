import 'package:marketna_app/shared/text/validator_text.dart';

class ValidatorTranslations {
  Map<String, String> get keys => {
        ValidatorText.nameEmpty: 'لا يمكن أن يكون الاسم فارغًا',
        ValidatorText.nameMin:  'يجب أن يكون الاسم على الاقل 3 حروف',
        ValidatorText.nameMax: 'يجب أن يكون الاسم على الاكثر 20 حروف',
        ValidatorText.phoneEmpty: 'رقم الهاتف لا يمكن أن يكون فارغًا',
        ValidatorText.phoneInvalid: 'ادخل رقم هاتف صحيح',
        ValidatorText.emailEmpty: 'البريد الالكتروني لا يمكن أن يكون فارغًا',
        ValidatorText.emailInvalid: 'ادخل بريد الكتروني صحيح',
        ValidatorText.passwordEmpty: 'كلمة المرور لا يمكن أن تكون فارغة',
        ValidatorText.passwordMin: 'يجب أن تكون كلمة المرور على الاقل 8 حروف',
        ValidatorText.passwordConfirm: 'كلمة المرور غير متطابقة',
      };
}
