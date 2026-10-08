import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/domain/entities/update_profile_params.dart';
import 'package:base_structure/features/profile/domain/repository/account_repository.dart';

class UpdateProfileUseCase
    extends UseCase<BaseResponse<dynamic>?, UpdateProfileParams> {
  @override
  Future<BaseResponse<dynamic>?> call(UpdateProfileParams params) async {
    var result = await getIt<AccountRepository>().updateProfile(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
