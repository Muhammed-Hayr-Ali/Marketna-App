import 'package:get/get.dart';
import 'package:marketna_app/src/product_details/data/local/local_database.dart';
import 'package:marketna_app/src/product_details/data/remote/remote_database.dart';
import 'package:marketna_app/src/product_details/data/repositories/repo_impl.dart';
import 'package:marketna_app/src/product_details/domain/repositories/repositories.dart';
import 'package:marketna_app/src/product_details/domain/use_cases/use_cases.dart';

class ProductDetailsService extends GetxService {
  Future<ProductDetailsService> init() async {
    Get.put<LocalDatabase>(LocalDatabaseImpl());
    Get.put<RemoteDatabase>(RemoteDatabaseImpl());

    Get.put<ProductDetailsRepo>(ProductDetailsRepoImpl(
        localDatabase: Get.find<LocalDatabase>(),
        remoteDatabase: Get.find<RemoteDatabase>()));

    Get.put<UseCasesImpl>(UseCasesImpl(repos: Get.find<ProductDetailsRepo>()));
    return this;
  }
}
