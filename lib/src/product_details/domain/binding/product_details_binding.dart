import 'package:get/get.dart';
import 'package:marketna_app/src/product_details/presentation/manager/controler.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailsControler());
  }
}
