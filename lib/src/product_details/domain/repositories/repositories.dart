import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class ProductDetailsRepo {
  Future<ApiResult> getProductDetails({required int id});
}
