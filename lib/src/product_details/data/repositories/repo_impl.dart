import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/product_details/data/local/local_database.dart';
import 'package:marketna_app/src/product_details/data/remote/remote_database.dart';
import 'package:marketna_app/src/product_details/domain/repositories/repositories.dart';

class ProductDetailsRepoImpl implements ProductDetailsRepo {
  final LocalDatabase localDatabase;
  final RemoteDatabase remoteDatabase;

  ProductDetailsRepoImpl(
      {required this.localDatabase, required this.remoteDatabase});

  @override
  Future<ApiResult> getProductDetails({required int id}) async {
    ApiResult apiResult;
    try {
      final Response reaponse = await remoteDatabase.getProductDetails(id: id);

      apiResult = ApiResult.success(
          status: reaponse.data['status'],
          message: reaponse.data['message'],
          data: reaponse.data['data']);
      return apiResult;
    } on DioException catch (ex) {
      String message = ex.response != null
          ? ex.response!.data['message']
          : DioExceptionHandler.message(ex: ex);
      apiResult = ApiResult.failure(
        status: false,
        message: message,
      );
      return apiResult;
    }
  }

  @override
  Future<void> deleteFavorite() async {
    return localDatabase.deleteFavorite();
  }

  @override
  Future<List> getFavorite() async {
    return await localDatabase.getFavorite();
  }

  @override
  Future<void> saveFavorite({required List favorite}) async {
    return localDatabase.saveFavorite(favorite: favorite);
  }

  @override
  Future<ApiResult> getDetails({required int id, required String type}) async {
    ApiResult apiResult;
    try {
      final Response reaponse =
          await remoteDatabase.getDetails(id: id, type: type);

      apiResult = ApiResult.success(
          status: reaponse.data['status'],
          message: reaponse.data['message'],
          data: reaponse.data['data']);
      return apiResult;
    } on DioException catch (ex) {
      String message = ex.response != null
          ? ex.response!.data['message']
          : DioExceptionHandler.message(ex: ex);
      apiResult = ApiResult.failure(
        status: false,
        message: message,
      );
      return apiResult;
    }
  }
}
