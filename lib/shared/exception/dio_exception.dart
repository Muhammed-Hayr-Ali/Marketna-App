import 'package:dio/dio.dart';

class DioExceptionHandler {
  DioExceptionHandler._();

 static String message({required DioException ex}) {
    switch (ex.type) {
      case DioExceptionType.connectionError:
        return 'Connection error';
      case DioExceptionType.connectionTimeout:
        return 'Connection Timeout';
      case DioExceptionType.sendTimeout:
        return 'Send Timeout';
      case DioExceptionType.receiveTimeout:
        return 'Receive Timeout';
      case DioExceptionType.badResponse:
        return 'Bad Response';
      case DioExceptionType.cancel:
        return 'Request Cancel';
      case DioExceptionType.unknown:
        return 'Unknown Error';
      default:
        return 'Oops something went wrong';
    }
  }
}
