import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/sign_in/data/local/signin_local_database.dart';
import 'package:marketna_app/src/sign_in/data/remote/signin_remote_database.dart';
import 'package:marketna_app/src/sign_in/domain/repositories/signin_repo.dart';

class SigninRepoImpl implements SigninRepo {
  final SigninRemoteDatabase remoteDatabase;
  final SigninLocalDatabase localDatabase;

  SigninRepoImpl({required this.remoteDatabase, required this.localDatabase});

  @override
  Future<ApiResult> signin(
      {required String email, required String password}) async {
    ApiResult apiResult;

    try {
      final response =
          await remoteDatabase.signin(email: email, password: password);

      apiResult = ApiResult.success(
        status: true,
        message: response.data['message'],
        data: jsonEncode(response.data['data']),
      );

      await localDatabase.saveProfile(profile: response.data['data']['user']);
      await localDatabase.saveToken(token: response.data['data']['token']);
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
