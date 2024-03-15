import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/auth/domain/repositories/auth_repo.dart';

abstract class AuthUseCases {
  Future<ApiResult> continueWithGoogle();
}

class AuthUseCasesImpl implements AuthUseCases {
  final AuthRepo authRepo;

  AuthUseCasesImpl({required this.authRepo});

  @override
  Future<ApiResult> continueWithGoogle() async {
    return await authRepo.continueWithGoogle();
  }
}
