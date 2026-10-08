import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/data/models/login_response_model/login_response_model.dart';
import 'package:base_structure/features/auth/domain/entities/login_params.dart';
import 'package:base_structure/features/auth/domain/repository/auth_repository.dart';

class LoginUseCase extends UseCase<BaseResponse<LoginResponseModel>?, LoginParams> {
  @override
  Future<BaseResponse<LoginResponseModel>?> call(LoginParams params) async {
    var result = await getIt<AuthRepository>().login(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
