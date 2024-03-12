import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/splash/data/local/splash_lacal_database.dart';
import 'package:marketna_app/src/splash/data/remote/splash_remote_database.dart';
import 'package:marketna_app/src/splash/domain/repositories/splash_repo.dart';

class SplashRepoImpl implements SplashRepo {
  final SplashRemoteDatabase remoteDatabase;
  final SplashLocalDatabase localDatabase;

  SplashRepoImpl({required this.remoteDatabase, required this.localDatabase});

  @override
  Future<ApiResult> checkExistsToken() async {
    ApiResult apiResult;

    try {
      final token = await localDatabase.retrieveToken();
      if (token == '') {
        apiResult = const ApiResult.failure(
          status: false,
          message: 'No_Token_Found',
        );
        return apiResult;
      }
      final response = await remoteDatabase.retrieveCurrentUser(token: token);

      apiResult = ApiResult.success(
        status: true,
        message: response.data['message'],
        data: jsonEncode(response.data['data']),
      );

      await localDatabase.saveCurrentUser(
        profile: jsonEncode(response.data['data']),
      );

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
