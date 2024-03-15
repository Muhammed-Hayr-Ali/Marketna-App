import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';


abstract class SignupUseCases {
  Future<ApiResult> signup({required Map<String, dynamic> profile});
}

class SignUpUseCasesImpl implements SignupUseCases {
  final SignupRepo signupRepo;

  SignUpUseCasesImpl({required this.signupRepo});

  @override
  Future<ApiResult> signup({required Map<String, dynamic> profile}) async {
    return await signupRepo.signup(profile: profile);
  }
}
