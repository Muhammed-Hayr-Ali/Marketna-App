import 'package:get/get.dart';
import 'package:marketna_app/src/update_pass/data/services/updaet_pass_service.dart';

class ResetPassBinding extends Bindings {

  UpdatePassService updatePassService = UpdatePassService();

  @override

  void dependencies() {
    updatePassService.init();
    // Get.lazyPut<ResetPassController>(() =>
    //     ResetPassController(resetPasswordRepo: Get.find<ResetPasswordRepo>()));
  }
}