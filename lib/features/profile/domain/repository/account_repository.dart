import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/data/models/account_response_model/account_response_model.dart';
import 'package:base_structure/features/profile/data/models/profile_model/profile_model.dart';
import 'package:base_structure/features/profile/domain/entities/reset_password_params.dart';
import 'package:base_structure/features/profile/domain/entities/update_profile_params.dart';

abstract class AccountRepository {
  Future<MyResult<BaseResponse<AccountResponseModel>?>> getAccount(
      NoParams params);

  Future<MyResult<BaseResponse<ProfileModel>?>> getProfile(NoParams params);

  Future<MyResult<BaseResponse<dynamic>?>> updateProfile(
      UpdateProfileParams params);

  Future<MyResult<BaseResponse<dynamic>?>> resetPassword(
      ResetPasswordParams params);

  Future<MyResult<BaseResponse<dynamic>?>> logout(NoParams params);

  Future<MyResult<BaseResponse<dynamic>?>> deleteAccount(NoParams params);

}
