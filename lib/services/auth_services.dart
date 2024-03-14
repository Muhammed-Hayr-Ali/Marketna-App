import 'package:get/get.dart';
import 'package:marketna_app/src/home/data/services/home_services.dart';
import 'package:marketna_app/src/reset_password/data/services/reset_pass_service.dart';
import 'package:marketna_app/src/sign_in/data/services/login_amimation_service.dart';
import 'package:marketna_app/src/sign_in/data/services/signin_service.dart';
import 'package:marketna_app/src/sign_up/data/services/signup_service.dart';
import 'package:marketna_app/src/update_pass/data/services/updaet_pass_service.dart';

Future<void> authServices() async {
  await Get.putAsync(() => LoginAnimationService().init());
  await Get.putAsync(() => SigninService().init());
  await Get.putAsync(() => SignupService().init());
  await Get.putAsync(() => ResserPassService().init());
  await Get.putAsync(() => UpdatePassService().init());


  
  
}