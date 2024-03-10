import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class SigninRepo{
  Future<ApiResult> signin({required String email, required String password});
}