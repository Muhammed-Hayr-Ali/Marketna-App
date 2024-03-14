import 'package:get/get.dart';
import 'package:marketna_app/src/profile/presentation/manager/profile_controller.dart';

Future<void> appServices() async {
  Get.put(ProfileController());
}
