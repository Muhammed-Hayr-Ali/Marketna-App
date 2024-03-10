import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

part 'request.freezed.dart';

@freezed
class RequestMethod with _$RequestMethod {
  const factory RequestMethod.get({required RequestParameters requestParameters}) =
      _RequestGET;

  const factory RequestMethod.post({required RequestParameters requestParameters}) =
      _RequestPOST;
}
