import 'package:dio/dio.dart';
import 'package:marketna_app/generated/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class SplashRemoteDatabase {
  final DioRequest dioRequest;

  SplashRemoteDatabase({required this.dioRequest});

  /// Checks if the [Token] exists in the remote database
  Future<bool> existsToken();

  /// Checks if the [Token] exists in the remote database
  Future<void> saveCurrentUser(dynamic data);

  /// Checks if the [Token] exists in the remote database
  Future<Response> retrieveCurrentUser({required String token});
}

class SplashRemoteDatabaseImpl implements SplashRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<bool> existsToken() {
    throw UnimplementedError();
  }

  @override
  Future<void> saveCurrentUser(data) {
    throw UnimplementedError();
  }

  @override
  Future<Response> retrieveCurrentUser({required String token}) async {
    Response response = await dioRequest.request(
      requestMethod: RequestMethod.get(
        requestParameters: RequestParameters(
            url:ApiUrl.checkUser,
            authorization: {'Authorization': 'Bearer $token'}),
      ),
    );
    return response;
  }
} 
