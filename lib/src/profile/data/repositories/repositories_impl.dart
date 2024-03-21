import 'package:dio/dio.dart';
import 'package:marketna_app/constants/text/dio_exception_text.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/profile/data/local/local_database.dart';
import 'package:marketna_app/src/profile/data/remote/remote_database.dart';
import 'package:marketna_app/src/profile/domain/repositories/repositories.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileLocalDatabase localDatabase;
  final ProfileRemoteDatabase remoteDatabase;

  ProfileRepoImpl({required this.localDatabase, required this.remoteDatabase});

  @override
  Future<String> getProfileFromLocal() async {
    return await localDatabase.getProfile();
  }

  @override
  Future<ApiResult> logout() async {
    ApiResult apiResult;
    final token = await localDatabase.getToken();
    if (token == 'null') {
      await localDatabase.deleteProfile();
      return ApiResult.success(
          status: true,
          message: DioExceptionText.logoutSuccess,
          data: null,
          data2: null);
    }
    try {
      final Response response = await remoteDatabase.logout(token: token);
      apiResult = ApiResult.success(
          status: true,
          message: response.data['message'],
          data: null,
          data2: null);
      await localDatabase.deleteToken();
      await localDatabase.deleteProfile();
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
