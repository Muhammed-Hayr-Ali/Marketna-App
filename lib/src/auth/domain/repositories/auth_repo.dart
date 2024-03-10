import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class AuthRepo {
  Future<ApiResult> continueWithGoogle();
}
