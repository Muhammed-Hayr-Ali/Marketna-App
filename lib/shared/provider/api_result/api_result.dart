import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({
    required bool status,
    required String message,
    required T data,
    T? data2,
  }) = _ApiResultSuccess<T>;

  const factory ApiResult.errors({
    required bool status,
    required String message,
  }) = _ApiResultErrors<T>;

  const factory ApiResult.failure({
    required bool status,
    required String message,
  }) = _ApiResultFailure<T>;
}
