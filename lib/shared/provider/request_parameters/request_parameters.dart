import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_parameters.freezed.dart';

@freezed
class RequestParameters with _$RequestParameters{
  const factory RequestParameters({
    required String url,
     Object? data,
     Map<String, String>? headers,
    @Default({}) Map<String, dynamic> authorization
  }) = _RequestParameters;
}