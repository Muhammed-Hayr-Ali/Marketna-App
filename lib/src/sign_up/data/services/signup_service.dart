import 'package:get/get.dart';
import 'package:marketna_app/src/sign_up/data/local/signup_local_database.dart';
import 'package:marketna_app/src/sign_up/data/remote/signup_remote_database.dart';
import 'package:marketna_app/src/sign_up/data/repositories/signup_repo_impl.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';

class SignupService extends Bindings {
 
  
  @override
  void dependencies() {
 Get.lazyPut<SignupLocalDatabase>( () => SignupLocalDatabaseImpl());
    Get.lazyPut<SignupRemoteDatabase>(() =>  SignupRemoteDatabaseImpl());

    Get.lazyPut<SignupRepo>(() =>  SignupRepoImpl(
        localDatabase: Get.find<SignupLocalDatabase>(),
        remoteDatabase: Get.find<SignupRemoteDatabase>()));  }
}






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
