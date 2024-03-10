import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class SignupRepo{
  Future<ApiResult> signup({required Map<String, dynamic> profile});
}