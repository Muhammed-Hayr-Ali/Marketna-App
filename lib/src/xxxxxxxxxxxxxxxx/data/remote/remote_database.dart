import 'package:marketna_app/shared/provider/dio/dio_request.dart';
import 'package:marketna_app/shared/provider/dio/dio_request_impl.dart';

abstract class RemoteDatabase {
  final DioRequest dioRequest;
  RemoteDatabase({required this.dioRequest});
}

class RemoteDatabaseImpl implements RemoteDatabase {
  @override
  DioRequest get dioRequest => throw DioRequestImpl();

}