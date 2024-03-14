class Strings {
  Strings._();

  /// Constants
  static const String appTitle = 'Marketna';
  static const String appversion = '1.0.0';
  static const String defaultFont = 'ReadexPro';

  /// API URl
  static const String baseUrl = 'http://192.168.0.103:8000';
  static const String signIn = '/api/v1/auth/signIn';
  static const String signUp = '/api/v1/auth/signUp';
  static const String continueWithGoogle = '/api/v1/auth/googleSignIn';
  static const String resetPass = '/api/v1/auth/resetPass';
  static const String updatePass = '/api/v1/auth/updatePass';
  static const String getPrimiumProducts = '/api/v1/product/getPrimiumProducts';
  static const String getAllProducts = '/api/v1/product/getAllProducts';
  static const String getCategory = '/api/v1/Category/getAllCategory';
  

  /// LocalStorageKey
  static const String profile = 'profile';
  static const String token = 'token';
  static const String allProduct = 'allProduct';
  static const String category = 'category';
  static const String premiumProduct = 'premiumProduct';
}
