import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/shared/confetti_animation/confetti_animation_controller.dart';
import 'package:marketna_app/shared/loading_animation/loadin_animation_controller.dart';

Future<void> initServices() async {
  await GetStorage.init();
  Get.put<LoadingAnimationController>( LoadingAnimationController());
  Get.put<ConfettiAnimationController>( ConfettiAnimationController());
  // await Get.putAsync(() => AuthService().init());
  // await Get.putAsync(() => SigninService().init());
}
