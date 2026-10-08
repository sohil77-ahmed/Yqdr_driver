import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/data/models/profile_model/profile_model.dart';
import 'package:base_structure/features/profile/domain/repository/account_repository.dart';

class GetProfileUseCase
    extends UseCase<BaseResponse<ProfileModel>?, NoParams> {
  @override
  Future<BaseResponse<ProfileModel>?> call(NoParams params) async {
    var result = await getIt<AccountRepository>().getProfile(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
