import 'package:marketna_app/shared/provider/api_result/api_result.dart';
import 'package:marketna_app/src/update_pass/domain/repositories/update_pass_repo.dart';

abstract class UpdatePassUseCases {
  Future<ApiResult> updatePassword({required Map<String, dynamic> data});
}

class UpdatePassUseCasesImpl implements UpdatePassUseCases {
  final UpdatePassRepo updatePassRepo;

  UpdatePassUseCasesImpl({required this.updatePassRepo});
  @override
  Future<ApiResult> updatePassword({required Map<String, dynamic> data}) async {
    return await updatePassRepo.updatePassword(data: data);
  }
}
