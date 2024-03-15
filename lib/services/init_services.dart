import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/src/splash/data/services/splash_service.dart';

Future<void> initServices() async {
  await GetStorage.init();
  await Get.putAsync(() => SplashService().init());

}