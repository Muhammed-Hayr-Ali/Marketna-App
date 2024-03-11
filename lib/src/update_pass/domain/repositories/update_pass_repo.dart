import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class UpdatePassRepo {
  Future<ApiResult> updatePassword({required Map<String, dynamic> data});
}