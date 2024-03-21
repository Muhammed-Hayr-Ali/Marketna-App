import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/profile/domain/repositories/repositories.dart';

abstract class ProfileUseCases {
  Future<String> getProfileFromLocal();
  Future<ApiResult> logout();
}

class ProfileUseCasesImpl implements ProfileUseCases {
  final ProfileRepo profileRepo;

  ProfileUseCasesImpl({required this.profileRepo});

  @override
  Future<String> getProfileFromLocal() async {
    return await profileRepo.getProfileFromLocal();
  }

  @override
  Future<ApiResult> logout() async {
    return await profileRepo.logout();
  }
}
