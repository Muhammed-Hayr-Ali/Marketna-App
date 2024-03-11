

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/update_pass/data/local/update_pass_local_database.dart';
import 'package:marketna_app/src/update_pass/data/remot/update_pass_remote_database.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';

class UpdatePassRepoImpl implements UpdatePassRepo {
final UpdatePassRemoteDatabase remoteDatabase;
final UpdatePassLocalDatabase localDatabase;

  UpdatePassRepoImpl({required this.remoteDatabase, required this.localDatabase});

  @override
  Future<ApiResult> updatePassword({required Map<String, dynamic> data}) async {
    ApiResult apiResult;
    try{
      Response response = await remoteDatabase.updatePass(data: data);

      /// 200 status code means the token is valid
      if (response.statusCode == 200) {
        apiResult = ApiResult.success(
          status: true,
          message: response.data['message'],
          data: jsonEncode(response.data['data']),
        );

        await localDatabase.saveProfile(profile: response.data['data']['user']);
        await localDatabase.saveToken(token: response.data['data']['token']);
      } else {
        apiResult = ApiResult.errors(
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
}
