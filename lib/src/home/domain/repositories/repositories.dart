import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class HomeRepo {
  Future<ApiResult> getPremiumProduct();
  Future<ApiResult> getCategory();
  Future<ApiResult> getAllProduct();
  Future<String> retrievePremiumProduct();
  Future<String> retrieveCategory();
  Future<String> retrieveAllProduct();
  Future<String> getCurrentUser();
}
