import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/src/auth/data/services/auth_service.dart';
import 'package:marketna_app/src/home/data/services/home_services.dart';

Future<void> initServices() async {
  await GetStorage.init();
  await Get.putAsync(() => AuthService().init());

}