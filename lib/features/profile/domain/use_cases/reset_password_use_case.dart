import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/domain/entities/reset_password_params.dart';
import 'package:base_structure/features/profile/domain/repository/account_repository.dart';

class ResetPasswordUseCase
    extends UseCase<BaseResponse<dynamic>?, ResetPasswordParams> {
  @override
  Future<BaseResponse<dynamic>?> call(ResetPasswordParams params) async {
    var result = await getIt<AccountRepository>().resetPassword(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
