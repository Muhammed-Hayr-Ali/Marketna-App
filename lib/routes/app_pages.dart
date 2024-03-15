import 'package:get/get.dart';
import 'package:marketna_app/src/auth/domain/binding/auth_binding.dart';
import 'package:marketna_app/src/auth/presentation/page/auth_screen.dart';
import 'package:marketna_app/src/button_nav_bar/domain/binding/botton_nav_bar_binding.dart';
import 'package:marketna_app/src/button_nav_bar/presentation/page/buttom_nav_bar.dart';
import 'package:marketna_app/src/reset_password/domain/binding/reser_pass_binding.dart';
import 'package:marketna_app/src/reset_password/presentation/page/reset_pass.dart';
import 'package:marketna_app/src/sign_in/domain/binding/signin_binding.dart';
import 'package:marketna_app/src/sign_in/presentation/page/signin.dart';
import 'package:marketna_app/src/sign_up/domain/binding/signup_binding.dart';
import 'package:marketna_app/src/sign_up/presentation/page/signup.dart';
import 'package:marketna_app/src/splash/domain/binding/splash_binding.dart';
import 'package:marketna_app/src/splash/presentation/page/splash.dart';
import 'package:marketna_app/src/update_pass/domain/binding/update_pass_binding.dart';
import 'package:marketna_app/src/update_pass/presentation/page/update_pass.dart';
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

    /// ResetPassword
    GetPage(
      name: AppRoutes.resetPass,
      page: () => ResetPassScreen(),
      binding: ResetPassBinding(),
    ),

    /// UpdatePassword
    GetPage(
      name: AppRoutes.updatePass,
      page: () => UpdatePassScreen(),
      binding: UpdatePassBinding(),
    ),

    /// Home
    GetPage(name: AppRoutes.bottomNavBar, page: () => BottonNavBar(), binding: BottomNavBarBinding()),
    // GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  ];
}
