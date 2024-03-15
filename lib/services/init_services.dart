import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/src/auth/data/services/auth_service.dart';
import 'package:marketna_app/src/reset_password/data/services/reset_pass_service.dart';
import 'package:marketna_app/src/sign_in/data/services/signin_service.dart';
import 'package:marketna_app/src/sign_up/data/services/signup_service.dart';
import 'package:marketna_app/src/splash/data/services/splash_service.dart';
import 'package:marketna_app/src/update_pass/data/services/updaet_pass_service.dart';

Future<void> initServices() async {
  await GetStorage.init();
  await Get.putAsync(() => SplashService().init());
  // await Get.putAsync(() => AuthService().init());
  // await Get.putAsync(() => SignupService().init());
  // await Get.putAsync(() => ResserPassService().init());
  // await Get.putAsync(() => UpdatePassService().init());
  // await Get.putAsync(() => SigninService().init());

}