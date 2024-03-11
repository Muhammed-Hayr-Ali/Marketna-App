class Strings {
  Strings._();

  /// Constants
  static const String appTitle = 'Marketna';
  static const String appversion = '1.0.0';
  static const String defaultFont = 'ReadexPro';

  /// API URl
  static const String baseUrl = 'http://192.168.55.252:8000';
  static const String signIn = '/api/v1/auth/signIn';
  static const String signUp = '/api/v1/auth/signUp';
  static const String continueWithGoogle = '/api/v1/auth/googleSignIn';
  static const String resetPassword = '/api/v1/auth/resetPassword';

  /// LocalStorageKey
  static const String profile = 'profile';
  static const String token = 'token';
}
