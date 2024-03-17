import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/product_details/domain/repositories/repositories.dart';

abstract class ProductDetailsUseCases {
  Future<ApiResult> getProductDetails({required int id});
}

class UseCasesImpl implements ProductDetailsUseCases {
  final ProductDetailsRepo repos;

  UseCasesImpl({required this.repos});

  @override
  Future<ApiResult> getProductDetails({required int id}) async {
    return await repos.getProductDetails(id: id);
  }
}
