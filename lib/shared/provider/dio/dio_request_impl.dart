import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:marketna_app/constants/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/request/request.dart';

class DioRequestImpl implements DioRequest {
  late Dio dio;
  DioRequestImpl() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiUrl.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20), // 20 seconds
      receiveTimeout: const Duration(seconds: 20),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      }
    );
    dio = Dio(options);
  }
  @override
  Future<Response> request({required RequestMethod requestMethod}) async {
    try {
      return requestMethod.when(get: (requestParameters) async {
        Response response = await dio.get(requestParameters.url, data: requestParameters.data, options:  Options(headers: requestParameters.authorization));
        return response;
      }, post: (requestParameters) async {
        Response response =
            await dio.post(requestParameters.url,
            data: requestParameters.data, options: Options(headers: requestParameters.authorization));
        return response;
      });
    } catch (exception, stackTrace) {
      if (kDebugMode) print(stackTrace);
      rethrow;
    }
  }
}
