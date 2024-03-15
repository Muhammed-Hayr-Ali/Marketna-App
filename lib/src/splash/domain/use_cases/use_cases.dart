import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/splash/domain/repositories/splash_repo.dart';

abstract class SplashUseCases {
  Future<ApiResult> checkExistsToken();
}

class SplashUseCasesImpl implements SplashUseCases {
  final SplashRepo splashRepo;

  SplashUseCasesImpl({required this.splashRepo});

  @override
  Future<ApiResult> checkExistsToken() async {
    return await splashRepo.checkExistsToken();
  }
}
