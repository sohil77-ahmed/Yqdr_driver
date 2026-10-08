import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/data/models/account_response_model/account_response_model.dart';
import 'package:base_structure/features/profile/domain/repository/account_repository.dart';

class GetAccountUseCase
    extends UseCase<BaseResponse<AccountResponseModel>?, NoParams> {
  @override
  Future<BaseResponse<AccountResponseModel>?> call(NoParams params) async {
    var result = await getIt<AccountRepository>().getAccount(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
