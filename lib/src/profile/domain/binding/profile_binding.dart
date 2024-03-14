import 'package:get/get.dart';
import 'package:marketna_app/src/profile/presentation/manager/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    print('Profile Binding');
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}