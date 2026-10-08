import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/data/models/login_response_model/login_response_model.dart';
import 'package:base_structure/features/auth/data/models/settings_model/settings_model.dart';
import 'package:base_structure/features/auth/domain/entities/login_params.dart';
import 'package:base_structure/features/auth/domain/repository/auth_repository.dart';

class SettingsUseCase extends UseCase<BaseResponse<SettingsModel>?, NoParams> {
  @override
  Future<BaseResponse<SettingsModel>?> call(NoParams params) async {
    var result = await getIt<AuthRepository>().settings(params);
    return result.when(
      isSuccess: (data) => data,
      isError: (error) {
        return;
      },
    );
  }
}
