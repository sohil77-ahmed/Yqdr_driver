import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/domain/repository/account_repository.dart';

class DeleteAccountUseCase
    extends UseCase<BaseResponse<dynamic>?, NoParams> {
  @override
  Future<BaseResponse<dynamic>?> call(NoParams params) async {
    var result = await getIt<AccountRepository>().deleteAccount(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
