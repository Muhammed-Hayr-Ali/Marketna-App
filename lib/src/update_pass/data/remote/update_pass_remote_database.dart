import 'package:dio/dio.dart';
import 'package:marketna_app/constants/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class UpdatePassRemoteDatabase {
  final DioRequest dioRequest;

  UpdatePassRemoteDatabase({required this.dioRequest});
  Future<Response> updatePass({required Map<String, dynamic> data});
}

class UpdatePassRemoteDatabaseImpl implements UpdatePassRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> updatePass({required Map<String, dynamic> data}) async {
    Response response = await dioRequest.request(
        requestMethod: RequestMethod.post(
            requestParameters: RequestParameters(
      url: ApiUrl.updatePass,
      data: data,
    )));
    return response;
  }
}
