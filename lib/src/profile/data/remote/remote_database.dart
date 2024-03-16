import 'package:dio/dio.dart';
import 'package:marketna_app/generated/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class ProfileRemoteDatabase {
  final DioRequest dioRequest;
  ProfileRemoteDatabase({required this.dioRequest});

  /// update profile
  Future<Response> updateProfile(
      {required String token, required Map<String, dynamic> data});

  /// get profile
  Future<Response> getProfile({required String token});

  /// updatePassword
  Future<Response> updatePassword(
      {required String token,
      required String oldPassword,
      required String newPassword});

  /// logout
  Future<Response> logout({required String token});

  /// delete profile
  Future<Response> deleteProfile({required String token});
}

class ProfileRemoteDatabaseImpl implements ProfileRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> updateProfile(
      {required String token, required Map<String, dynamic> data}) async {
    FormData formData = FormData.fromMap(data);

    if (data['profile'] != '') {
      MultipartFile photo = await MultipartFile.fromFile(data['profile']!);
      formData.files.add(MapEntry('profile', photo));
    }

    final Response response = await dioRequest.request(
        requestMethod: RequestMethod.post(
            requestParameters: RequestParameters(
      url: ApiUrl.updateProfile,
      data: formData,
      authorization: {'Authorization': 'Bearer $token'},
    )));
    return response;
  }

  @override
  Future<Response> getProfile({required String token}) async {
    final Response response = await dioRequest.request(
        requestMethod: RequestMethod.get(
      requestParameters: RequestParameters(
          url: ApiUrl.getProfile,
          authorization: {'Authorization': 'Bearer $token'}),
    ));
    return response;
  }

  @override
  Future<Response> updatePassword(
      {required String token,
      required String oldPassword,
      required String newPassword}) async {
    final Response response = await dioRequest.request(
        requestMethod: RequestMethod.post(
            requestParameters: RequestParameters(
      url: ApiUrl.updatePassword,
      data: {'oldPassword': oldPassword, 'newPassword': newPassword},
      authorization: {'Authorization': 'Bearer $token'},
    )));
    return response;
  }

  @override
  Future<Response> logout({required String token}) async {
    final Response response = await dioRequest.request(
        requestMethod: RequestMethod.get(
            requestParameters: RequestParameters(
      url: ApiUrl.logout,
      authorization: {'Authorization': 'Bearer $token'},
    )));
    return response;
  }

  @override
  Future<Response> deleteProfile({required String token}) async {
    final Response response = await dioRequest.request(
        requestMethod: RequestMethod.get(
      requestParameters: RequestParameters(
        url: ApiUrl.deleteProfile,
        authorization: {'Authorization': 'Bearer $token'},
      ),
    ));
    return response;
  }
}
