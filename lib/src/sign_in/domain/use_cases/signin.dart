import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/sign_in/domain/repositories/signin_repo.dart';


abstract class SigninUseCases{
  Future<ApiResult> call({required String email, required String password});
}



class SigninUseCasesImpl implements SigninUseCases {
  final SigninRepo repository;

  SigninUseCasesImpl(this.repository);

  @override
  Future<ApiResult> call({required String email,required String password}) async {
    return await repository.signin(email: email, password: password);
  }
}
