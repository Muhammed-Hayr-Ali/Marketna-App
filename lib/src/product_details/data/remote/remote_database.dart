import 'package:dio/dio.dart';
import 'package:marketna_app/generated/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class RemoteDatabase {
  final DioRequest dioRequest;
  RemoteDatabase({required this.dioRequest});

  Future<Response> getProductDetails({required int id});
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
}
