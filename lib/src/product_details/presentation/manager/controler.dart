import 'package:get/get.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/product_details/domain/entities/product_details_model.dart';
import 'package:marketna_app/src/product_details/domain/use_cases/use_cases.dart';

class ProductDetailsControler extends GetxController {
  final useCases = Get.find<UseCasesImpl>();
  RxBool isLoading = false.obs;
  Rx<ProductDetailsModel> product = ProductDetailsModel.empty().obs;
  Future<void> groductDetails({required int id}) async {
    isLoading(true);
    ApiResult apiResult = await useCases.getProductDetails(id: id);
    apiResult.when(
        success: (status, message, data, v) {
          product.value = ProductDetailsModel.fromJson(data);
        },
        failure: (
          status,
          message,
        ) {});
    isLoading(false);
  }
}
