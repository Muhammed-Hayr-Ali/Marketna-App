import 'package:get/get.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';
import 'package:marketna_app/src/reset_password/presentation/manager/reser_pass_controller.dart';

class ResetPassBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<ResetPassController>(() =>
        ResetPassController(resetPasswordRepo: Get.find<ResetPasswordRepo>()));
  }
}
