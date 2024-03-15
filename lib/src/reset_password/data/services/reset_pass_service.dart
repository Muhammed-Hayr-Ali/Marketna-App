import 'package:get/get.dart';
import 'package:marketna_app/src/reset_password/data/remote/reset_password_remote_database.dart';
import 'package:marketna_app/src/reset_password/data/repositories/resetpass_reop_impl.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';
import 'package:marketna_app/src/reset_password/domain/use_cases/reset_pass_use_cases.dart';

class ResserPassService extends GetxService {
  Future<ResserPassService> init() async {
    Get.put<ResetPasRemoteDatabase>(ResetPasRemoteDatabaseImpl());

    Get.put<ResetPasswordRepo>(ResetPasswordRepoImpl(
        remoteDatabase: Get.find<ResetPasRemoteDatabase>()));

    Get.put<ResetPassUseCasesImpl>(
        ResetPassUseCasesImpl(resetPasswordRepo: Get.find<ResetPasswordRepo>()));

    return this;
  }
}
