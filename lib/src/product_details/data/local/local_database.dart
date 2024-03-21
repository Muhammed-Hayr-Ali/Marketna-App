import 'package:get_storage/get_storage.dart';
import 'package:marketna_app/constants/local_storage_keys.dart';

abstract class LocalDatabase {
  Future<List> getFavorite();
  Future<void> saveFavorite({required List favorite});
  Future<void> deleteFavorite();
}

class LocalDatabaseImpl implements LocalDatabase {
  final GetStorage storage = GetStorage();

  @override
  Future<void> deleteFavorite() async {
    await storage.remove(LocalStorageKeys.favoriteProduct);
    return Future.value();
  }

  @override
  Future<List> getFavorite() {
    final favorite = storage.read<List>(LocalStorageKeys.favoriteProduct) ?? [];
      return Future.value(favorite);
  }

  @override
  Future<void> saveFavorite({required List favorite}) async {
    await storage.write(LocalStorageKeys.favoriteProduct, favorite);
    return Future.value();
  }
}
