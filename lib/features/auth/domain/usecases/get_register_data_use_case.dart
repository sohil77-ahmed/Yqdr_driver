import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/data/models/register_data_model/register_data_model.dart';
import 'package:base_structure/features/auth/domain/repository/auth_repository.dart';

class GetRegisterDataUseCase
    extends UseCase<BaseResponse<RegisterDataModel>?, NoParams> {
  @override
  Future<BaseResponse<RegisterDataModel>?> call(NoParams params) async {
    var result = await getIt<AuthRepository>().registerData(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
