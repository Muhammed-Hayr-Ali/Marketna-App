import 'package:dio/dio.dart';
import 'package:marketna_app/constants/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class RemoteDatabase {
  final DioRequest dioRequest;
  RemoteDatabase({required this.dioRequest});

  Future<Response> getProductDetails({required int id});
  Future<Response> getDetails({required int id, required String type});
}

class RemoteDatabaseImpl implements RemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> getProductDetails({required int id}) async {
    final Response response = await dioRequest.request(
      requestMethod: RequestMethod.get(
          requestParameters:
              RequestParameters(url: '${ApiUrl.getProductDetails}$id')),
    );
    return response;
  }

  @override
  Future<Response> getDetails({required int id, required String type}) async {
    final Response response = await dioRequest.request(
      requestMethod: RequestMethod.get(
          requestParameters:
              RequestParameters(url: '${ApiUrl.getDetails}$id/$type')),
    );
    return response;
  }
}
