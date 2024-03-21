import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/home/domain/repositories/repositories.dart';

abstract class HomeUseCases {
  Future<ApiResult> getPremiumProduct();
  Future<ApiResult> getCategory();
  Future<ApiResult> getAllProduct();
  Future<String> retrievePremiumProduct();
  Future<String> retrieveCategory();
  Future<String> retrieveAllProduct();
  Future<String> getCurrentUser();
}

class HomeUseCasesImpl implements HomeUseCases {
  final HomeRepo homeRepo;

  HomeUseCasesImpl({required this.homeRepo});
  @override
  Future<ApiResult> getAllProduct() async {
    return await homeRepo.getAllProduct();
  }

  @override
  Future<ApiResult> getCategory() async {
    return await homeRepo.getCategory();
  }

  @override
  Future<ApiResult> getPremiumProduct() async {
    return await homeRepo.getPremiumProduct();
  }

  @override
  Future<String> retrieveAllProduct() async {
    return await homeRepo.retrieveAllProduct();
  }

  @override
  Future<String> retrieveCategory() async {
    return await homeRepo.retrieveCategory();
  }

  @override
  Future<String> retrievePremiumProduct() async {
    return await homeRepo.retrievePremiumProduct();
  }

  @override
  Future<String> getCurrentUser() async {
    return await homeRepo.getCurrentUser();
  }
}
