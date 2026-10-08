import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/domain/entities/forget_password_params.dart';
import 'package:base_structure/features/auth/domain/repository/auth_repository.dart';

class ForgetPasswordUseCase
    extends UseCase<BaseResponse<dynamic>?, ForgetPasswordParams> {
  @override
  Future<BaseResponse<dynamic>?> call(ForgetPasswordParams params) async {
    var result = await getIt<AuthRepository>().forgetPassword(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
