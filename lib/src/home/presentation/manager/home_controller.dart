import 'package:get/get.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/home/domain/entities/category/category_model.dart';
import 'package:marketna_app/src/home/domain/entities/product/product_model.dart';
import 'package:marketna_app/src/home/domain/use_cases/home_use_cases.dart';

class HomeScreenController extends GetxController {
  RxList<ProductModel> prmiumProductList = <ProductModel>[].obs;
  RxList<ProductModel> allProductList = <ProductModel>[].obs;
  RxList<CategoryModel> catygoryList = <CategoryModel>[].obs;
  final usecases = Get.find<HomeUseCasesImpl>();
  @override
  void onInit() {
    super.onInit();
    getPremiumProduct();
    getCategory();
    getAllProduct();
  }

  Future<void> getPremiumProduct() async {
    ApiResult apiResult = await usecases.getPremiumProduct();

    apiResult.when(success: (status, message, data, v) {
      prmiumProductList.value = productModelListFromJson(data);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
  }

  Future<void> getAllProduct() async {
    ApiResult apiResult = await usecases.getAllProduct();

    apiResult.when(success: (status, message, data, v) {
      allProductList.value = productModelListFromJson(data);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
  }

  Future<void> getCategory() async {
    ApiResult apiResult = await usecases.getCategory();

    apiResult.when(success: (status, message, data, v) {
      catygoryList.value = categoryModelListFromJson(data);
    }, failure: (status, message) {
      CustomNotification.showSnackbar(message: message);
    });
  }
}
