import 'package:marketna_app/shared/provider/api_result/api_result.dart';

abstract class ProductDetailsRepo {
  Future<ApiResult> getProductDetails({required int id});
  Future<List> getFavorite();
  Future<void> saveFavorite({required List favorite});
  Future<void> deleteFavorite();
  Future<ApiResult> getDetails({required int id, required String type});
}
