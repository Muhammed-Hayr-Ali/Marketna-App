class ApiUrl{


    /// API URl
  static const String baseUrl = 'http://192.168.0.103:8000';
  static const String checkUser = '/api/v1/auth/checkUser';
  static const String signIn = '/api/v1/auth/signIn';
  static const String signUp = '/api/v1/auth/signUp';
  static const String continueWithGoogle = '/api/v1/auth/googleSignIn';
  static const String resetPass = '/api/v1/auth/resetPass';
  static const String updatePass = '/api/v1/auth/updatePass';
  static const String getProfile = '/api/v1/auth/getProfile';
  static const String updateProfile = '/api/v1/auth/updateProfile';
  static const String updatePassword = '/api/v1/auth/updatePassword';
  static const String logout = '/api/v1/auth/logout';
  static const String deleteProfile = '/api/v1/auth/delete';


  static const String getPrimiumProducts = '/api/v1/product/getPrimiumProducts';
  static const String getAllProducts = '/api/v1/product/getAllProducts';
  static const String getCategory = '/api/v1/Category/getAllCategory';




}