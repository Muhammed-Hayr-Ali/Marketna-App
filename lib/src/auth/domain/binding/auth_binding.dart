import 'package:get/get.dart';
import 'package:marketna_app/src/auth/presentation/manager/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
