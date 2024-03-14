import 'package:get/get.dart';
import 'package:marketna_app/src/home/data/services/home_services.dart';
import 'package:marketna_app/src/profile/data/services/profile_services.dart';

Future<void> appServices() async {
  await Get.putAsync(() => HomeServices().init());
  await Get.putAsync(() => ProfileServices().init());
}
