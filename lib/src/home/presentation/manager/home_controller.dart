import 'package:get/get.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/home/domain/entities/category/category_model.dart';
import 'package:marketna_app/src/home/domain/entities/product/product_model.dart';
import 'package:marketna_app/src/home/domain/repositories/repositories.dart';

class HomeScreenController extends GetxController {
  final HomeRepo homeRepo;
  RxList<ProductModel> prmiumProductList = <ProductModel>[].obs;
  RxList<ProductModel> allProductList = <ProductModel>[].obs;
  RxList<CategoryModel> catygoryList = <CategoryModel>[].obs;
  HomeScreenController({required this.homeRepo});

  @override
  void onInit() {
    super.onInit();
    getPremiumProduct();
    getCategory();
    // getAllProduct();
  }

  Future<void> getPremiumProduct() async {
    ApiResult apiResult = await homeRepo.getPremiumProduct();

    apiResult.when(success: (status, message, data, v) {
      prmiumProductList.value = productModelListFromJson(data);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
  }

  Future<void> getAllProduct() async {
    ApiResult apiResult = await homeRepo.getAllProduct();

    apiResult.when(success: (status, message, data, v) {
      allProductList.value = productModelListFromJson(data);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
  }

  Future<void> getCategory() async {
    ApiResult apiResult = await homeRepo.getCategory();

    apiResult.when(success: (status, message, data, v) {
      catygoryList.value = categoryModelListFromJson(data);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
  }
}
