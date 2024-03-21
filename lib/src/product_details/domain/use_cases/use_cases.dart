import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/product_details/domain/repositories/repositories.dart';

abstract class ProductDetailsUseCases {
  Future<ApiResult> getProductDetails({required int id});
  Future<List> getFavorite();
  Future<void> saveFavorite({required List favorite});
  Future<void> deleteFavorite();
  Future<ApiResult> getDetails({required int id, required String type});
}

class UseCasesImpl implements ProductDetailsUseCases {
  final ProductDetailsRepo repos;

  UseCasesImpl({required this.repos});

  @override
  Future<ApiResult> getProductDetails({required int id}) async {
    return await repos.getProductDetails(id: id);
  }

  @override
  Future<void> deleteFavorite() async {
    return await repos.deleteFavorite();
  }

  @override
  Future<List> getFavorite() async {
    return await repos.getFavorite();
  }

  @override
  Future<void> saveFavorite({required List favorite}) async {
    return await repos.saveFavorite(favorite: favorite);
  }
  
  @override
  Future<ApiResult> getDetails({required int id, required String type}) async{
    return await repos.getDetails(id: id, type: type);
  }
}
