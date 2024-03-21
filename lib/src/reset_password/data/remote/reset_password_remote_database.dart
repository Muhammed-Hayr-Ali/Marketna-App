import 'package:dio/dio.dart';
import 'package:marketna_app/constants/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class ResetPasRemoteDatabase {
  final DioRequest dioRequest;

  ResetPasRemoteDatabase({required this.dioRequest});

  Future<Response> resetpassword({required String email});
}

class ResetPasRemoteDatabaseImpl implements ResetPasRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> resetpassword({required String email}) async {
    Response response = await dioRequest.request(
        requestMethod: RequestMethod.post(
            requestParameters: RequestParameters(
      url: ApiUrl.resetPass,
      data: {'email': email},
    )));
    return response;
  }
}
