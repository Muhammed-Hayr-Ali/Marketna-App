import 'package:dio/dio.dart';
import 'package:marketna_app/generated/api_url.dart';
import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';
import 'package:marketna_app/shared/provider/request/request.dart';
import 'package:marketna_app/shared/provider/request_parameters/request_parameters.dart';

abstract class SignupRemoteDatabase {
  final DioRequest dioRequest;

  SignupRemoteDatabase({required this.dioRequest});
  Future<Response> signup({required Map<String, dynamic> profile});
}

class SignupRemoteDatabaseImpl implements SignupRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();

  @override
  Future<Response> signup({required Map<String, dynamic> profile}) async {

    // FormData data = FormData.fromMap(profile);
    // if (profile['profile'] != '') {
    //   MultipartFile photo = await MultipartFile.fromFile(profile['profile']!);
    //   data.files.add(MapEntry('profile', photo));
    // }

    FormData data = FormData.fromMap({
      "profile": profile['profile'] != null ? await MultipartFile.fromFile(profile['profile']) : null,
      "name": profile['name'],
      "email": profile['email'],
      "password": profile['password'],
      "phoneNumber": profile['phoneNumber'],
      "gender": profile['gender'] ?? 'Unspecified',
      "dateBirth": profile['dateBirth'],
    });


    Response response = await dioRequest.request(
        requestMethod: RequestMethod.post(
            requestParameters: RequestParameters(
      url: ApiUrl.signUp,
      data: data,
    )));
    return response;
  }
}
