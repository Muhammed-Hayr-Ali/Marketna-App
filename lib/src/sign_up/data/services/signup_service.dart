import 'package:get/get.dart';
import 'package:marketna_app/src/sign_up/data/local/signup_local_database.dart';
import 'package:marketna_app/src/sign_up/data/remote/signup_remote_database.dart';
import 'package:marketna_app/src/sign_up/data/repositories/signup_repo_impl.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';

class SignupService extends GetxService {
  Future<SignupService> init() async {
    Get.lazyPut<SignupLocalDatabase>(() => SignupLocalDatabaseImpl());
    Get.lazyPut<SignupRemoteDatabase>(() => SignupRemoteDatabaseImpl());

    Get.lazyPut<SignupRepo>(() => SignupRepoImpl(
        localDatabase: Get.find<SignupLocalDatabase>(),
        remoteDatabase: Get.find<SignupRemoteDatabase>()));
    return this;
  }
}
