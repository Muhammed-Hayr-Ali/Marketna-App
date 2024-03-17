import 'package:marketna_app/src/xxxxxxxxxxxxxxxx/data/local/local_database.dart';
import 'package:marketna_app/src/xxxxxxxxxxxxxxxx/data/remote/remote_database.dart';
import 'package:marketna_app/src/xxxxxxxxxxxxxxxx/domain/repositories/repositories.dart';

class RepoImpl implements Repo {
  final LocalDatabase localDatabase;
  final RemoteDatabase remoteDatabase;

  RepoImpl({required this.localDatabase, required this.remoteDatabase});
}
