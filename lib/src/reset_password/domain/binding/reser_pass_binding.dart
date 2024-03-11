import 'package:get/get.dart';
import 'package:marketna_app/src/reset_password/data/services/reset_pass_service.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';
import 'package:marketna_app/src/reset_password/presentation/manager/reser_pass_controller.dart';

class ResetPassBinding extends Bindings {
  final ResserPassService resserPassService = ResserPassService();

  @override
  void dependencies() {
    resserPassService.init();
    Get.lazyPut<ResetPassController>(() =>
        ResetPassController(resetPasswordRepo: Get.find<ResetPasswordRepo>()));
  }
}
