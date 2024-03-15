import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';

abstract class ResetPassUseCases {
  Future<ApiResult> resetPassowrd({required String email});
}

class ResetPassUseCasesImpl implements ResetPassUseCases {
  final ResetPasswordRepo resetPasswordRepo;

  ResetPassUseCasesImpl({required this.resetPasswordRepo});
  @override
  Future<ApiResult> resetPassowrd({required String email}) async {
    return await resetPasswordRepo.resetPassowrd(email: email);
  }
}
