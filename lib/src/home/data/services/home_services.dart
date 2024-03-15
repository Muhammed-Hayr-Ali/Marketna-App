import 'package:get/get.dart';
import 'package:marketna_app/src/home/data/local/local_database.dart';
import 'package:marketna_app/src/home/data/remote/remote_database.dart';
import 'package:marketna_app/src/home/data/repositories/repositories_impl.dart';
import 'package:marketna_app/src/home/domain/repositories/repositories.dart';
import 'package:marketna_app/src/home/domain/use_cases/home_use_cases.dart';

class HomeServices extends GetxService {
  Future<HomeServices> init() async {
    Get.put<HomeLocalDatabase>(HomeLocalDatabaseImpl());
    Get.put<HomeRemoteDatabase>(HomeRemoteDatabaseImpl());

    Get.put<HomeRepo>(HomeRepoImpl(
      localDatabase: Get.find<HomeLocalDatabase>(),
      remoteDatabase: Get.find<HomeRemoteDatabase>(),
    ));

    Get.put<HomeUseCasesImpl>(HomeUseCasesImpl(homeRepo: Get.find<HomeRepo>()));
    return this;
  }
}
