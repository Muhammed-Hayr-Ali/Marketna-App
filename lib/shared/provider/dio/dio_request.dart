import 'package:dio/dio.dart';
import 'package:marketna_app/shared/provider/request/request.dart';

abstract class DioRequest {
  Future<Response> request({required RequestMethod requestMethod});
}