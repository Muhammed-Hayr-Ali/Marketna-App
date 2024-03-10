import 'package:get_storage/get_storage.dart';

Future<void> initServices() async {
  await GetStorage.init();
  // await Get.putAsync(() => AuthService().init());
  // await Get.putAsync(() => SigninService().init());
}
