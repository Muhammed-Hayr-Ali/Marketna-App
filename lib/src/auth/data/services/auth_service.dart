import 'package:get/get.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:marketna_app/src/auth/data/google_signIn_account/google_signin_account.dart';
import 'package:marketna_app/src/auth/data/local/auth_local_database.dart';
import 'package:marketna_app/src/auth/data/remote/auth_remote_database.dart';
import 'package:marketna_app/src/auth/data/repositories/auth_repo_impl.dart';
import 'package:marketna_app/src/auth/domain/repositories/auth_repo.dart';
import 'package:marketna_app/src/auth/domain/use_sases/use_cases.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    Get.put<AuthLocalDatabase>(AuthLocalDatabaseImpl());
    Get.put<AuthRemoteDatabase>(AuthRemoteDatabaseImpl());
    Get.put<MyGoogleSignInAccount>(MyGoogleSignInAccountImpl());
    Get.put<LoginAnimationController>(LoginAnimationController());

    Get.put<AuthRepo>(AuthRepoImpl(
      localDatabase: Get.find<AuthLocalDatabase>(),
      remoteDatabase: Get.find<AuthRemoteDatabase>(),
      googleSignIn: Get.find<MyGoogleSignInAccount>(),
    ));

    Get.put<AuthUseCasesImpl>(AuthUseCasesImpl(authRepo: Get.find<AuthRepo>()));
    return this;
  }
}
