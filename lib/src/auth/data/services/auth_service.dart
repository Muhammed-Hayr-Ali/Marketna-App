import 'package:get/get.dart';
import 'package:marketna_app/src/auth/data/google_signIn_account/google_signin_account.dart';
import 'package:marketna_app/src/auth/data/local/auth_local_database.dart';
import 'package:marketna_app/src/auth/data/remote/auth_remote_database.dart';
import 'package:marketna_app/src/auth/data/repositories/auth_repo_impl.dart';
import 'package:marketna_app/src/auth/domain/repositories/auth_repo.dart';

class AuthService extends GetxService {

    Future<AuthService> init() async {
      Get.lazyPut<AuthLocalDatabase>( () => AuthLocalDatabaseImpl());
    Get.lazyPut<AuthRemoteDatabase>( () =>  AuthRemoteDatabaseImpl());
    Get.lazyPut<MyGoogleSignInAccount>(() => MyGoogleSignInAccountImpl());

    Get.lazyPut<AuthRepo>(() => AuthRepoImpl(
      localDatabase: Get.find<AuthLocalDatabase>(),
      remoteDatabase: Get.find<AuthRemoteDatabase>(),
      googleSignIn: Get.find<MyGoogleSignInAccount>(),
    ));
    return this;

    }
}
