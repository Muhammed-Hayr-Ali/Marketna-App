import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/generated/local_storage_keys.dart';
import 'package:marketna_app/generated/strings.dart';

abstract class HomeLocalDatabase {

  Future<String> getPremiumProduct();
  Future<String> getCategory();
  Future<String> getAllProduct();
  Future<void> savePremiumProduct({required String premiumProduct});
  Future<void> saveCategory({required String category});
  Future<void> savegetAllProduct({required String allProduct});
  
}

class HomeLocalDatabaseImpl implements HomeLocalDatabase {

 final GetStorage storage = GetStorage();
  
  @override
  Future<String> getAllProduct() async {
    final allProduct = await storage.read(LocalStorageKeys.allProduct);
    if (allProduct == null) {
      return Future.value('');
    }
    return Future.value(allProduct);
  }
  
  @override
  Future<String> getCategory() async{
    final category = await storage.read(LocalStorageKeys.category);
    if (category == null) {
      return Future.value('');
    }
    return Future.value(category);
  }
  
  @override
  Future<String> getPremiumProduct() async {
    final premiumProduct = await storage.read(LocalStorageKeys.premiumProduct);
    if (premiumProduct == null) {
      return Future.value('');
    }
    return Future.value(premiumProduct);
  }
  
  @override
  Future<void> saveCategory({required String category})async {
   await storage.write(LocalStorageKeys.category, category);
    return Future.value();
  }
  
  @override
  Future<void> savePremiumProduct({required String premiumProduct}) async {
    await storage.write(LocalStorageKeys.premiumProduct, premiumProduct);
    return Future.value();
  }
  
  @override
  Future<void> savegetAllProduct( {required String allProduct}) async {
    await storage.write(LocalStorageKeys.allProduct, allProduct);
    return Future.value();
  }
}
