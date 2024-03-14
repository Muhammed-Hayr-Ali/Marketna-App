import 'package:get_storage/get_storage.dart';

abstract class ProfileLocalDatabase {
  final GetStorage storage;
  ProfileLocalDatabase({required this.storage});
}

class ProfileLocalDatabaseImpl implements ProfileLocalDatabase {
  @override
  GetStorage get storage => GetStorage();
}