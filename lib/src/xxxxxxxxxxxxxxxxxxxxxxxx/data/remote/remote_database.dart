import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';

abstract class ProfileRemoteDatabase {
  final DioRequest dioRequest;
  ProfileRemoteDatabase({required this.dioRequest});

  Future<void> updateProfile({required Map<String, dynamic> profile});

  Future<String> getProfile();

  Future<void> deleteProfile();


}

class ProfileRemoteDatabaseImpl implements ProfileRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();
  
  @override
  Future<void> deleteProfile() {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }
  
  @override
  Future<String> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }
  
  @override
  Future<void> updateProfile({required Map<String, dynamic> profile}) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }
  }