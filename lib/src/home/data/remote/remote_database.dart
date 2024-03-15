import 'package:dio/dio.dart';
import 'package:marketna_app/generated/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class HomeRemoteDatabase {
  final DioRequest dioRequest;
  HomeRemoteDatabase({required this.dioRequest});

  Future<Response> getPremiumProduct();
  Future<Response> getCategory();
  Future<Response> getAllProduct();
}

class HomeRemoteDatabaseImpl implements HomeRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> getAllProduct() async {
    final Response response = await dioRequest.request(
        requestMethod: const RequestMethod.get(
      requestParameters: RequestParameters(url: ApiUrl.getAllProducts),
    ));
    return response;
  }

  @override
  Future<Response> getCategory() async{
    final Response response = await dioRequest.request(
        requestMethod: const RequestMethod.get(
      requestParameters: RequestParameters(url: ApiUrl.getCategory),
    ));
    return response;
  }

  @override
  Future<Response> getPremiumProduct()async{
    final Response response = await dioRequest.request(
        requestMethod: const RequestMethod.get(
      requestParameters: RequestParameters(url: ApiUrl.getPrimiumProducts),
    ));
    return response;
  }
}
