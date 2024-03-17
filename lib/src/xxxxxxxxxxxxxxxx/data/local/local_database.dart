import 'package:get_storage/get_storage.dart';

abstract class LocalDatabase{

}

class LocalDatabaseImpl implements LocalDatabase{
  final GetStorage storage = GetStorage();
}