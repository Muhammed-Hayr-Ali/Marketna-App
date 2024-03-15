import 'package:get/get.dart';
import 'package:marketna_app/src/sign_up/data/local/signup_local_database.dart';
import 'package:marketna_app/src/sign_up/data/remote/signup_remote_database.dart';
import 'package:marketna_app/src/sign_up/data/repositories/signup_repo_impl.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';
import 'package:marketna_app/src/sign_up/domain/usecases/signup_use_cases_impl.dart';

class SignupService extends GetxService {
  Future<SignupService> init() async {
    Get.put<SignupLocalDatabase>( SignupLocalDatabaseImpl());
    Get.put<SignupRemoteDatabase>( SignupRemoteDatabaseImpl());

    Get.put<SignupRepo>( SignupRepoImpl(
        localDatabase: Get.find<SignupLocalDatabase>(),
        remoteDatabase: Get.find<SignupRemoteDatabase>()));


    Get.put<SignUpUseCasesImpl>(SignUpUseCasesImpl(signupRepo: Get.find<SignupRepo>()));


    return this;
  }
}
