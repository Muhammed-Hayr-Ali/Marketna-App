import 'dart:convert';

import 'package:get/get.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/shared/widget/custom_notification.dart';
import 'package:marketna_app/src/home/domain/entities/category/category_model.dart';
import 'package:marketna_app/src/home/domain/entities/current_user/current_user.dart';
import 'package:marketna_app/src/home/domain/entities/product/product_model.dart';
import 'package:marketna_app/src/home/domain/use_cases/home_use_cases.dart';

class HomeScreenController extends GetxController {
  RxList<ProductModel> prmiumProductList = <ProductModel>[].obs;
  RxList<ProductModel> allProductList = <ProductModel>[].obs;
  RxList<CategoryModel> catygoryList = <CategoryModel>[].obs;
  Rx<CurrentUser> currentUser = CurrentUser.empty().obs;
  final usecases = Get.find<HomeUseCasesImpl>();

  Future<void> getCurrentUser() async {
    final data = await usecases.getCurrentUser();
    if (data != '') {
      currentUser.value = CurrentUser.fromJson(jsonDecode(data));
    }
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

  @override
  void onInit() {
    super.onInit();
    getCurrentUser();
  }
}
