import 'package:dio/dio.dart';
import 'package:marketna_app/shared/exception/dio_exception.dart';
import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/auth/data/google_signIn_account/google_signin_account.dart';
import 'package:marketna_app/src/auth/data/local/auth_local_database.dart';
import 'package:marketna_app/src/auth/data/remote/auth_remote_database.dart';
import 'package:marketna_app/src/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthLocalDatabase localDatabase;
  final AuthRemoteDatabase remoteDatabase;
  final MyGoogleSignInAccount googleSignIn;

  AuthRepoImpl(
      {required this.googleSignIn,
      required this.localDatabase,
      required this.remoteDatabase});

  @override
  Future<ApiResult> continueWithGoogle() async {
    ApiResult apiResult;
    try {
      final Map<String, dynamic>? data =
          await googleSignIn.getGoogleSignInAccount();

      if (data == null) {
        return apiResult = const ApiResult.failure(
            status: false, message: 'Unable to connect to Google account');
      }

      final reaponse = await remoteDatabase.continueWithGoogle(data: data);

        apiResult = ApiResult.success(
            status: reaponse.data['status'],
            message: reaponse.data['message'],
            data: reaponse.data['data']['user']);

        await localDatabase.saveProfile(profile: reaponse.data['data']['user']);
        await localDatabase.saveToken(token: reaponse.data['data']['token']);
      
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
