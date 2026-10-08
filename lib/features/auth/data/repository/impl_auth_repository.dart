import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/data/data_source/auth_data_source.dart';
import 'package:base_structure/features/auth/data/models/login_response_model/login_response_model.dart';
import 'package:base_structure/features/auth/data/models/register_data_model/register_data_model.dart';
import 'package:base_structure/features/auth/data/models/settings_model/settings_model.dart';
import 'package:base_structure/features/auth/domain/entities/forget_password_params.dart';
import 'package:base_structure/features/auth/domain/entities/login_params.dart';
import 'package:base_structure/features/auth/domain/entities/register_params.dart';
import 'package:base_structure/features/auth/domain/entities/verify_otp_params.dart';
import 'package:base_structure/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class ImplAuthRepository implements AuthRepository {
  final dataSource = getIt.get<AuthDataSource>();

  @override
  Future<MyResult<BaseResponse<SettingsModel>?>> settings(NoParams params) {
    return dataSource.settings(params);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> login(
      LoginParams params) {
    return dataSource.login(params);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> forgetPassword(
      ForgetPasswordParams params) {
    return dataSource.forgetPassword(params);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> register(
      RegisterParams params) {
    return dataSource.register(params);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> verifyOtp(
      VerifyOtpParams params) {
    return dataSource.verifyOtp(params);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> resendOtp(int id) {
    return dataSource.resendOtp(id);
  }

  @override
  Future<MyResult<BaseResponse<RegisterDataModel>?>> registerData(NoParams params) {
    return dataSource.registerData(params);
  }
}
