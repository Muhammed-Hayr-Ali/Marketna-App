
import 'package:get/get.dart';
import 'package:marketna_app/src/update_pass/data/local/update_pass_local_database.dart';
import 'package:marketna_app/src/update_pass/data/remot/update_pass_remote_database.dart';
import 'package:marketna_app/src/update_pass/data/repositories/update_pass_repo_impl.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';

class UpdatePassService extends GetxService {
  Future<UpdatePassService> init() async {
    Get.lazyPut<UpdatePassLocalDatabase>(() => UpdatePassLocalDatabaseImpl());
    Get.lazyPut<UpdatePassRemoteDatabase>(() => UpdatePassRemoteDatabaseImpl());

    Get.lazyPut<UpdatePassRepo>(() => UpdatePassRepoImpl(
        localDatabase: Get.find<UpdatePassLocalDatabase>(),
        remoteDatabase: Get.find<UpdatePassRemoteDatabase>()));
    return this;
  }
}
