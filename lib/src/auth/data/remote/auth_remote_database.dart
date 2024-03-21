import 'package:dio/dio.dart';
import 'package:marketna_app/constants/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class AuthRemoteDatabase {
  final DioRequest dioRequest;

  AuthRemoteDatabase({required this.dioRequest});

  /// ContinueWithGoogle
  Future<Response> continueWithGoogle({required Map<String, dynamic> data});
}

class AuthRemoteDatabaseImpl implements AuthRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> continueWithGoogle(
      {required Map<String, dynamic> data}) async {
    Response response = await dioRequest.request(
      requestMethod: RequestMethod.post(
          requestParameters:
              RequestParameters(url: ApiUrl.continueWithGoogle, data: data)),
    );
    return response;
  }
}
