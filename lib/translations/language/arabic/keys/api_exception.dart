import 'package:marketna_app/constants/text/api_exception_text.dart';

class ApiExceptionTranslations {
  Map<String, String> get keys => {
        ApiExceptionText.invalidToken: 'رمز مميز غير صالح',
        ApiExceptionText.currentUserRetrieved:
            'تم استعادة المستخدم الحالي بنجاح',
        ApiExceptionText.userLoggedIn: 'تم تسجيل الدخول بنجاح',
        ApiExceptionText.invalidCredentials: 'معلومات غير صالحة',
        ApiExceptionText.userRegistered:
            'تم تسجيل المستخدم وتسجيل الدخول بنجاح',
        ApiExceptionText.nameRequired: 'الاسم مطلوب',
        ApiExceptionText.profileUpdated: 'تم تحديث الملف الشخصي بنجاح',
        ApiExceptionText.oldPasswordRequired: 'كلمة المرور القديمة مطلوبة',
        ApiExceptionText.newPasswordRequired: 'كلمة المرور الجديدة مطلوبة',
        ApiExceptionText.oldPasswordIncorrect: 'كلمة المرور القديمة غير صحيحة',
        ApiExceptionText.passwordUpdated: 'تم تحديث كلمة المرور بنجاح',
        ApiExceptionText.userLoggedOut: 'تم تسجيل الخروج بنجاح',
        ApiExceptionText.userDeleted: 'تم حذف الحساب بنجاح',
        ApiExceptionText.emailRequired: 'الرجاء كتابة عنوان البريد الالكتروني',
        ApiExceptionText.validEmail: 'الرجاء كتابة عنوان بريد الكتروني صالح',
        ApiExceptionText.emailNotFound: 'البريد الالكتروني غير موجود',
        ApiExceptionText.codeSent: 'تم ارسال الكود بنجاح',
        ApiExceptionText.failedToSend: 'فشل في ارسال البريد الالكتروني',
        ApiExceptionText.emailLength:
            'الطول من عنوان البريد الالكتروني لا يجب ان يتعدى 255 حرفًا',
        ApiExceptionText.emailAlreadyExists: 'البريد الالكتروني موجود مسبقا',
        ApiExceptionText.passwordRequired: 'كلمة المرور مطلوبة',
        ApiExceptionText.passwordLength:
            'كلمة المرور يجب ان تكون على الاقل 8 حروف',
        ApiExceptionText.passwordConfirmationRequired:
            'تأكيد كلمة المرور مطلوب',
        ApiExceptionText.passwordsNotMatch: 'كلمات المرور غير متطابقة',
        ApiExceptionText.genderRequired: 'الجنس مطلوب',
        ApiExceptionText.genderInvalid: 'الجنس غير صالح',
        ApiExceptionText.statusLength: 'الحالة لا يجب ان تتعدى 255 حرفًا',
        ApiExceptionText.imageRequired: 'يجب عليك تحميل صورة واحدة',
        ApiExceptionText.imageFormat:
            'الصورة المحددة يجب ان تكون JPEG, PNG, JPG, او GIF',
        ApiExceptionText.imageSize: 'الصورة المحددة لا يجب ان تزيد عن 5MB',
        ApiExceptionText.resetCodeRequired: 'الرجاء كتابة رمز التحقق',
        ApiExceptionText.invalidEmail: 'البريد الالكتروني غير صالح',
        ApiExceptionText.invalidResetCode: 'رمز التحقق غير صالح',
        ApiExceptionText.noCategories: 'لا يوجد تصنيفات',
        ApiExceptionText.categoriesRetrieved: 'تم استعادة التصنيفات بنجاح',
        ApiExceptionText.productNotFound: 'المنتج غير موجود',
        ApiExceptionText.productDetailsRetrieved:
            'تم استعادة تفاصيل المنتج بنجاح',
        ApiExceptionText.noProducts: 'لا يوجد منتجات',
        ApiExceptionText.premiumProductsRetrieved:
            'تم استعادة المنتجات الممتاز بنجاح',
        ApiExceptionText.allProductsRetrieved: 'تم استعادة جميع المنتجات بنجاح',
        ApiExceptionText.dataNotFound: 'لم يتم العثور على البيانات',
        ApiExceptionText.dataRetrieved: 'تم استعادة البيانات بنجاح',
      };
}
