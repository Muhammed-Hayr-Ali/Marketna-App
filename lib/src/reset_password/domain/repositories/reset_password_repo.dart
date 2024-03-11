import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class ResetPasswordRepo {
  Future<ApiResult> resetPassowrd({required String email});
}
