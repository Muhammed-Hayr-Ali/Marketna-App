import 'package:dio/dio.dart';
import 'package:marketna_app/generated/strings.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class SigninRemoteDatabase {
  final DioRequest dioRequest;

  SigninRemoteDatabase({required this.dioRequest});
  Future<Response> signin({required String email, required String password});
}

class SigninRemoteDatabaseImpl implements SigninRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> signin(
      {required String email, required String password}) async {
    Response response = await dioRequest.request(
        requestMethod: RequestMethod.post(
            requestParameters: RequestParameters(
      url: Strings.signIn,
      data: {'email': email, 'password': password},
    )));
    return response;
  }
}
