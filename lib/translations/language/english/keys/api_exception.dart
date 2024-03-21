import 'package:marketna_app/constants/text/api_exception_text.dart';

class ApiExceptionTranslations {
  Map<String, String> get keys => {
        ApiExceptionText.invalidToken: 'Invalid token',
        ApiExceptionText.currentUserRetrieved:
            'Current user retrieved successfully',
        ApiExceptionText.userLoggedIn: 'User logged in successfully',
        ApiExceptionText.invalidCredentials: 'Invalid credentials',
        ApiExceptionText.userRegistered:
            'The user has been registered and logged in successfully',
        ApiExceptionText.nameRequired: 'Name is required',
        ApiExceptionText.profileUpdated: 'Profile updated successfully',
        ApiExceptionText.oldPasswordRequired: 'Old password is required',
        ApiExceptionText.newPasswordRequired: 'New password is required',
        ApiExceptionText.oldPasswordIncorrect: 'Old password is incorrect',
        ApiExceptionText.passwordUpdated: 'Password updated successfully',
        ApiExceptionText.userLoggedOut: 'User logged out successfully',
        ApiExceptionText.userDeleted: 'User deleted out successfully',
        ApiExceptionText.emailRequired: 'Please enter your email address',
        ApiExceptionText.validEmail: 'Please enter a valid email',
        ApiExceptionText.emailNotFound: 'Email not found',
        ApiExceptionText.codeSent: 'Code sent successfully',
        ApiExceptionText.failedToSend: 'Failed to send email',
        ApiExceptionText.emailLength:
            'The length of the email must not exceed 255 characters',
        ApiExceptionText.emailAlreadyExists: 'Email already exists',
        ApiExceptionText.passwordRequired: 'Password is required',
        ApiExceptionText.passwordLength:
            'Password must be at least 8 characters',
        ApiExceptionText.passwordConfirmationRequired:
            'Password confirmation is required',
        ApiExceptionText.passwordsNotMatch: 'Passwords do not match',
        ApiExceptionText.genderRequired: 'Gender must be selected',
        ApiExceptionText.genderInvalid: 'Gender is invalid',
        ApiExceptionText.statusLength: 'Status must not exceed 255 characters',
        ApiExceptionText.imageRequired: 'One image is required',
        ApiExceptionText.imageFormat:
            'The selected image must be in JPEG, PNG, JPG, or GIF format',
        ApiExceptionText.imageSize:
            'The selected image must not be larger than 5MB',
        ApiExceptionText.resetCodeRequired: 'Please enter your reset code',
        ApiExceptionText.invalidEmail: 'Invalid email',
        ApiExceptionText.invalidResetCode: 'Invalid reset code',
        ApiExceptionText.noCategories: 'No categories found',
        ApiExceptionText.categoriesRetrieved:
            'Categories retrieved successfully',
        ApiExceptionText.productNotFound: 'The product was not found',
        ApiExceptionText.productDetailsRetrieved:
            'Product Details retrieved successfully',
        ApiExceptionText.noProducts: 'No products found',
        ApiExceptionText.premiumProductsRetrieved:
            'Premium Products retrieved successfully',
        ApiExceptionText.allProductsRetrieved:
            'All Products retrieved successfully',
        ApiExceptionText.dataNotFound: 'The data were not found',
        ApiExceptionText.dataRetrieved: 'Data retrieved successfully',
      };
}
