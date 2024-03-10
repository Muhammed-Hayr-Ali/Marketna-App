import 'package:get/get.dart';
import 'package:marketna_app/src/auth/domain/binding/auth_binding.dart';
import 'package:marketna_app/src/auth/presentation/page/auth.dart';
import 'package:marketna_app/src/sign_in/domain/binding/signin_binding.dart';
import 'package:marketna_app/src/sign_in/presentation/page/signin.dart';
import 'package:marketna_app/src/home/presentation/page/home.dart';
import 'package:marketna_app/src/sign_up/domain/binding/signup_binding.dart';
import 'package:marketna_app/src/sign_up/presentation/page/signup.dart';
import 'package:marketna_app/src/splash/domain/binding/splash_binding.dart';
import 'package:marketna_app/src/splash/presentation/page/splash.dart';
part './app_routes.dart';

class RouteGet {
  static final List<GetPage> getPages = [

    /// Splash
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),

    /// Auth
    GetPage(
      name: AppRoutes.auth,
      page: () => AuthScreen(),
      binding: AuthBinding(),
    ),

    /// Signun
    GetPage(
      name: AppRoutes.signin,
      page: () => SigninScreen(),
      binding: SigninBinding(),
    ),

    /// SignupScreen
    GetPage(
      name: AppRoutes.signup,
      page: () => SignupScreen(),
       binding: SignupBinding(),
    ),

    /// Home
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  ];
}
