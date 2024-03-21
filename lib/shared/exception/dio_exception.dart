import 'package:dio/dio.dart';
import 'package:marketna_app/constants/text/dio_exception_text.dart';

class DioExceptionHandler {
  DioExceptionHandler._();

  static String message({required DioException ex}) {
    switch (ex.type) {
      case DioExceptionType.connectionError:
        return DioExceptionText.connectionError;
      case DioExceptionType.connectionTimeout:
        return DioExceptionText.connectionTimeout;
      case DioExceptionType.sendTimeout:
        return DioExceptionText.sendTimeout;
      case DioExceptionType.receiveTimeout:
        return DioExceptionText.receiveTimeout;
      case DioExceptionType.badResponse:
        return DioExceptionText.badResponse;
      case DioExceptionType.cancel:
        return DioExceptionText.requestCancel;
      case DioExceptionType.unknown:
        return DioExceptionText.unknownError;
      default:
        return DioExceptionText.defaultError;
    }
  }
}
