
import 'package:get/get.dart';
import 'package:marketna_app/src/profile/data/local/local_database.dart';
import 'package:marketna_app/src/profile/data/remote/remote_database.dart';
import 'package:marketna_app/src/profile/data/repositories/repositories_impl.dart';
import 'package:marketna_app/src/profile/domain/repositories/repositories.dart';

class ProfileServices extends GetxService {
  Future<void> init() async {
    Get.lazyPut<ProfileLocalDatabase>(() => ProfileLocalDatabaseImpl());
    Get.lazyPut<ProfileRemoteDatabase>(() => ProfileRemoteDatabaseImpl());

    Get.lazyPut<ProfileRepo>(() => ProfileRepoImpl(
          localDatabase: Get.find<ProfileLocalDatabase>(),
          remoteDatabase: Get.find<ProfileRemoteDatabase>(),
        ));

  }
}
