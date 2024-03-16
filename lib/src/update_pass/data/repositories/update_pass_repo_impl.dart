import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/update_pass/data/remote/update_pass_remote_database.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';

class UpdatePassRepoImpl implements UpdatePassRepo {
final UpdatePassRemoteDatabase remoteDatabase;

  UpdatePassRepoImpl({required this.remoteDatabase});

  @override
  Future<ApiResult> updatePassword({required Map<String, dynamic> data}) async {
    ApiResult apiResult;
    try{
      Response response = await remoteDatabase.updatePass(data: data);
        apiResult = ApiResult.success(
          status: true,
          message: response.data['message'],
          data: '',
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
