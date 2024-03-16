import 'package:marketna_app/src/profile/domain/repositories/repositories.dart';

abstract class ProfileUseCases {
  Future<String> getProfileFromLocal();
}

class ProfileUseCasesImpl implements ProfileUseCases {

  final ProfileRepo profileRepo;

  ProfileUseCasesImpl({required this.profileRepo});

  @override
  Future<String> getProfileFromLocal() async {
    return await profileRepo.getProfileFromLocal();
  }
}