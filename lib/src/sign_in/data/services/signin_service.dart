import 'package:get/get.dart';
import 'package:marketna_app/src/sign_in/data/local/signin_local_database.dart';
import 'package:marketna_app/src/sign_in/data/remote/signin_remote_database.dart';
import 'package:marketna_app/src/sign_in/data/repositories/signin_repo_impl.dart';
import 'package:marketna_app/src/sign_in/domain/repositories/signin_repo.dart';
import 'package:marketna_app/src/sign_in/domain/use_cases/signin.dart';

class SigninService extends GetxService {
  Future<SigninService> init() async {
    Get.put<SigninLocalDatabase>( SigninLocalDatabaseImpl());
    Get.put<SigninRemoteDatabase>( SigninRemoteDatabaseImpl());

    Get.put<SigninRepo>( SigninRepoImpl(
        localDatabase: Get.find<SigninLocalDatabase>(),
        remoteDatabase: Get.find<SigninRemoteDatabase>()));


    Get.put<SigninUseCasesImpl>(SigninUseCasesImpl(Get.find<SigninRepo>()));

    return this;
  }
}
