import 'package:get/get.dart';
import 'package:marketna_app/src/update_pass/data/services/updaet_pass_service.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';
import 'package:marketna_app/src/update_pass/presentation/manager/update_pass_controller.dart';

class UpdatePassBinding extends Bindings {

  UpdatePassService updatePassService = UpdatePassService();

  @override

  void dependencies() {
    updatePassService.init();
    Get.lazyPut<UpdatePassController>(() =>
        UpdatePassController(updatePassRepo: Get.find<UpdatePassRepo>()));
  }
}