import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';

abstract class ProfileRemoteDatabase {
  final DioRequest dioRequest;
  ProfileRemoteDatabase({required this.dioRequest});
}

class ProfileRemoteDatabaseImpl implements ProfileRemoteDatabase {
  @override
  DioRequest get dioRequest => DioRequestImpl();
  }