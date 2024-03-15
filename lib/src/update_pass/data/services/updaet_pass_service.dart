import 'package:get/get.dart';
import 'package:marketna_app/src/update_pass/data/local/update_pass_local_database.dart';
import 'package:marketna_app/src/update_pass/data/remote/update_pass_remote_database.dart';
import 'package:marketna_app/src/update_pass/data/repositories/update_pass_repo_impl.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';
import 'package:marketna_app/src/update_pass/domain/use_cases/update_pass_use_cases.dart';

class UpdatePassService extends GetxService {
  Future<UpdatePassService> init() async {
    Get.put<UpdatePassLocalDatabase>(UpdatePassLocalDatabaseImpl());
    Get.put<UpdatePassRemoteDatabase>(UpdatePassRemoteDatabaseImpl());

    Get.put<UpdatePassRepo>(UpdatePassRepoImpl(
        localDatabase: Get.find<UpdatePassLocalDatabase>(),
        remoteDatabase: Get.find<UpdatePassRemoteDatabase>()));

    Get.put<UpdatePassUseCasesImpl>(UpdatePassUseCasesImpl(updatePassRepo: Get.find<UpdatePassRepo>()));
    return this;
  }
}
