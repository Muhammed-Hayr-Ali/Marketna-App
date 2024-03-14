import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:marketna_app/src/home/data/local/local_database.dart';
import 'package:marketna_app/src/home/data/remote/remote_database.dart';
import 'package:marketna_app/src/home/data/repositories/repositories_impl.dart';
import 'package:marketna_app/src/home/domain/repositories/repositories.dart';
import 'package:marketna_app/src/home/presentation/manager/home_controller.dart';

class HomeServices extends GetxService {
  Future<void> init() async {
    Get.lazyPut<HomeLocalDatabase>(() => HomeLocalDatabaseImpl());
    Get.lazyPut<HomeRemoteDatabase>(() => HomeRemoteDatabaseImpl());

    Get.lazyPut<HomeRepo>(() => HomeRepoImpl(
          localDatabase: Get.find<HomeLocalDatabase>(),
          remoteDatabase: Get.find<HomeRemoteDatabase>(),
        ));
 }
}
