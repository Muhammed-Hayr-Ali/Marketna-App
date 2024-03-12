import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/reset_password/data/remote/reset_password_remote_database.dart';
import 'package:marketna_app/src/reset_password/domain/repositories/reset_password_repo.dart';

class ResetPasswordRepoImpl implements ResetPasswordRepo {
  final ResetPasRemoteDatabase remoteDatabase;

  ResetPasswordRepoImpl({required this.remoteDatabase});
  @override
  Future<ApiResult> resetPassowrd({required String email}) async {
    ApiResult apiResult;
    try {
      final response = await remoteDatabase.resetpassword(email: email);

      apiResult = ApiResult.success(
        status: true,
        message: response.data['message'],
        data: 'null',
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
