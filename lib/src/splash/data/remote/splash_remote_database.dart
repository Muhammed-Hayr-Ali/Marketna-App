import 'package:dio/dio.dart';
import 'package:marketna_app/constants/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class SplashRemoteDatabase {
  final DioRequest dioRequest;
  SplashRemoteDatabase({required this.dioRequest});
  Future<Response> retrieveCurrentUser({required String token});
}

class SplashRemoteDatabaseImpl implements SplashRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> retrieveCurrentUser({required String token}) async {
    Response response = await dioRequest.request(
      requestMethod: RequestMethod.get(
        requestParameters: RequestParameters(
            url: ApiUrl.checkUser,
            authorization: {'Authorization': 'Bearer $token'}),
      ),
    );
    return response;
  }
}
