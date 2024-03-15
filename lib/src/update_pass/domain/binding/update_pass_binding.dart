import 'package:get/get.dart';
import 'package:marketna_app/src/update_pass/presentation/manager/update_pass_controller.dart';

class UpdatePassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdatePassController>(
        () => UpdatePassController());
  }
}
