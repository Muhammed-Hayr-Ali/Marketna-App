

import 'package:marketna_app/src/profile/data/local/local_database.dart';
import 'package:marketna_app/src/profile/data/remote/remote_database.dart';
import 'package:marketna_app/src/profile/domain/repositories/repositories.dart';

class ProfileRepoImpl implements ProfileRepo {
final ProfileLocalDatabase localDatabase;
final ProfileRemoteDatabase remoteDatabase;

  ProfileRepoImpl({required this.localDatabase, required this.remoteDatabase});

  @override
  Future<String> getProfileFromLocal() async {
    return await localDatabase.getProfile();
  }
}