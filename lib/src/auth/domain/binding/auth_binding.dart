import 'package:get/get.dart';
import 'package:marketna_app/services/auth_services.dart';
import 'package:marketna_app/src/auth/data/services/auth_service.dart';
import 'package:marketna_app/src/auth/domain/repositories/auth_repo.dart';
import 'package:marketna_app/src/auth/presentation/manager/auth_controller.dart';

class AuthBinding extends Bindings {
  AuthService authService = AuthService();
  @override
  void dependencies() {
    authServices();
    Get.lazyPut<AuthController>(
        () => AuthController(authRepo: Get.find<AuthRepo>()));
  }
}
