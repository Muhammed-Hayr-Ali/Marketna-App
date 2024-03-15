import 'package:get/get.dart';
import 'package:marketna_app/shared/login_animation/login_animation_controller.dart';
import 'package:marketna_app/src/sign_in/data/local/signin_local_database.dart';
import 'package:marketna_app/src/sign_in/data/remote/signin_remote_database.dart';
import 'package:marketna_app/src/sign_in/data/repositories/signin_repo_impl.dart';
import 'package:marketna_app/src/sign_in/domain/repositories/signin_repo.dart';
import 'package:marketna_app/src/sign_in/domain/use_cases/signin.dart';

class SigninService extends GetxService {
  Future<SigninService> init() async {
    Get.put<SigninLocalDatabase>( SigninLocalDatabaseImpl());
    Get.put<SigninRemoteDatabase>( SigninRemoteDatabaseImpl());
    Get.put<LoginAnimationController>( LoginAnimationController());

    Get.put<SigninRepo>( SigninRepoImpl(
        localDatabase: Get.find<SigninLocalDatabase>(),
        remoteDatabase: Get.find<SigninRemoteDatabase>()));


    Get.put<SigninUseCasesImpl>(SigninUseCasesImpl(Get.find<SigninRepo>()));

    return this;
  }
}
//   @override
//   void dependencies() {
//  Get.lazyPut<SigninLocalDatabase>( () => SigninLocalDatabaseImpl());
//     Get.lazyPut<SigninRemoteDatabase>(() =>  SigninRemoteDatabaseImpl());

//     Get.lazyPut<SigninRepo>(() =>  SigninRepoImpl(
//         localDatabase: Get.find<SigninLocalDatabase>(),
//         remoteDatabase: Get.find<SigninRemoteDatabase>()));  }
// }






// class ProfileService extends GetxService {
//   Future<ProfileService> init() async {
//     Get.put<ProfileLocalDatabase>(ProfileLocalDatabaseImpl());
//     Get.put<ProfileRemoteDatabase>(ProfileRemoteDatabaseImpl());
//     Get.put<ProfileRepository>(ProfileRepositoryImpl(
//       remoteDatabase: Get.find<ProfileRemoteDatabase>(),
//       localDatabase: Get.find<ProfileLocalDatabase>(),
//       networkInfo: Get.find<NetworkInfo>(),
//     ));
//     Get.put<RetrieveProfile>(RetrieveProfile(Get.find<ProfileRepository>()));
//     Get.put<UpdateProfile>(UpdateProfile(Get.find<ProfileRepository>()));
//     return this;
//   }
// }
