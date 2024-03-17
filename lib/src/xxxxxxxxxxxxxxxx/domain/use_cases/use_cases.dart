import 'package:marketna_app/src/xxxxxxxxxxxxxxxx/domain/repositories/repositories.dart';

abstract class UseCases {}

class UseCasesImpl implements UseCases {
  final Repo repos;

  UseCasesImpl({required this.repos});

}
