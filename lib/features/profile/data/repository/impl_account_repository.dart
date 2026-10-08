import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/data/data_source/account_data_source.dart';
import 'package:base_structure/features/profile/data/models/account_response_model/account_response_model.dart';
import 'package:base_structure/features/profile/data/models/profile_model/profile_model.dart';
import 'package:base_structure/features/profile/domain/entities/reset_password_params.dart';
import 'package:base_structure/features/profile/domain/entities/update_profile_params.dart';
import 'package:base_structure/features/profile/domain/repository/account_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AccountRepository)
class ImplAccountRepository implements AccountRepository {
  final dataSource = getIt.get<AccountDataSource>();

  @override
  Future<MyResult<BaseResponse<AccountResponseModel>?>> getAccount(
      NoParams params) {
    return dataSource.getAccount(params);
  }

  @override
  Future<MyResult<BaseResponse<ProfileModel>?>> getProfile(NoParams params) {
    return dataSource.getProfile(params);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> updateProfile(UpdateProfileParams params) {
    return dataSource.updateProfile(params);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> resetPassword(ResetPasswordParams params) {
    return dataSource.resetPassword(params);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> logout(NoParams params) {
    return dataSource.logout(params);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> deleteAccount(NoParams params) {
    return dataSource.deleteAccount(params);
  }
}
