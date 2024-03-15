import 'package:dio/dio.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class ProfileRemoteDatabase {
  final DioRequest dioRequest;
  ProfileRemoteDatabase({required this.dioRequest});

  Future<void> updateProfile({required Map<String, dynamic> profile});

  Future<Response> getProfile({required String token});

  Future<void> deleteProfile();
}

class ProfileRemoteDatabaseImpl implements ProfileRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<void> updateProfile({required Map<String, dynamic> profile}) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  Future<Response> getProfile({required String token}) async {
    final Response response = await dioRequest.request(
        requestMethod: const RequestMethod.get(
            requestParameters: RequestParameters(url: '')));
    return response;
  }

  @override
  Future<void> deleteProfile() {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }
}
