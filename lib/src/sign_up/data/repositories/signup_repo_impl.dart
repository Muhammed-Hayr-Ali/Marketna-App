import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/sign_up/data/local/signup_local_database.dart';
import 'package:marketna_app/src/sign_up/data/remote/signup_remote_database.dart';
import 'package:marketna_app/src/sign_up/domain/repositories/signup_repo.dart';

class SignupRepoImpl implements SignupRepo {
  final SignupRemoteDatabase remoteDatabase;
  final SignupLocalDatabase localDatabase;

  SignupRepoImpl({required this.remoteDatabase, required this.localDatabase});

  @override
  Future<ApiResult> signup({required Map<String, dynamic> profile}) async {
    ApiResult apiResult;

    try {
      final response = await remoteDatabase.signup(profile: profile);
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
