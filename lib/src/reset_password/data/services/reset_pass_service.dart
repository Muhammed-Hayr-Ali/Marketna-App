import 'package:get/get.dart';
import 'package:marketna_app/src/reset_password/data/remote/reset_password_remote_database.dart';
import 'package:marketna_app/src/reset_password/data/repositories/resetpass_reop_impl.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';

class ResserPassService extends GetxService {
  Future<ResserPassService> init() async {
    Get.lazyPut<ResetPasRemoteDatabase>(() => ResetPasRemoteDatabaseImpl());

    Get.lazyPut<ResetPasswordRepo>(() => ResetPasswordRepoImpl(
        remoteDatabase: Get.find<ResetPasRemoteDatabase>()));
    return this;
  }
}
