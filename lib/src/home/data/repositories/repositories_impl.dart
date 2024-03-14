import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/home/data/local/local_database.dart';
import 'package:marketna_app/src/home/data/remote/remote_database.dart';
import 'package:marketna_app/src/home/domain/repositories/repositories.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeLocalDatabase localDatabase;
  final HomeRemoteDatabase remoteDatabase;

  HomeRepoImpl({required this.localDatabase, required this.remoteDatabase});
  @override
  Future<ApiResult> getAllProduct() async {
    ApiResult apiResult;
    try {
      final response = await remoteDatabase.getAllProduct();
      if (response.statusCode == 200) {
        apiResult = ApiResult.success(
          status: true,
          message: response.data['message'],
          data: response.data['data']['data'],
        );
        await localDatabase.savegetAllProduct(
            allProduct: jsonEncode(response.data['data']));
      } else {
        apiResult = ApiResult.failure(
          status: false,
          message: response.data['message'],
        );
      }
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
  Future<ApiResult> getCategory() async {
    ApiResult apiResult;
    try {
      final response = await remoteDatabase.getCategory();
      if (response.statusCode == 200) {
        apiResult = ApiResult.success(
          status: true,
          message: response.data['message'],
          data: response.data['data'],
        );
        await localDatabase.saveCategory(
            category: jsonEncode(response.data['data']));
      } else {
        apiResult = ApiResult.failure(
          status: false,
          message: response.data['message'],
        );
      }
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
  Future<ApiResult> getPremiumProduct() async {
    ApiResult apiResult;
    try {
      final response = await remoteDatabase.getPremiumProduct();
      if (response.statusCode == 200) {
        apiResult = ApiResult.success(
          status: true,
          message: response.data['message'],
          data: response.data['data'],
        );
        await localDatabase.savePremiumProduct(
          premiumProduct: jsonEncode(response.data['data']),
        );
      } else {
        apiResult = ApiResult.failure(
          status: false,
          message: response.data['message'],
        );
      }
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
  Future<String> retrieveAllProduct() async {
    return await localDatabase.getAllProduct();
  }

  @override
  Future<String> retrieveCategory() async {
    return await localDatabase.getCategory();
  }

  @override
  Future<String> retrievePremiumProduct() async {
    return await localDatabase.getPremiumProduct();
  }
}
