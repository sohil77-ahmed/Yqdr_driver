import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/data/models/login_response_model/login_response_model.dart';
import 'package:base_structure/features/auth/data/models/register_data_model/register_data_model.dart';
import 'package:base_structure/features/auth/data/models/settings_model/settings_model.dart';
import 'package:base_structure/features/auth/domain/entities/forget_password_params.dart';
import 'package:base_structure/features/auth/domain/entities/login_params.dart';
import 'package:base_structure/features/auth/domain/entities/register_params.dart';
import 'package:base_structure/features/auth/domain/entities/verify_otp_params.dart';

abstract class AuthDataSource {
  Future<MyResult<BaseResponse<SettingsModel>?>> settings(NoParams params);
  Future<MyResult<BaseResponse<LoginResponseModel>?>> login(LoginParams params);
  Future<MyResult<BaseResponse<dynamic>?>> forgetPassword(ForgetPasswordParams params);
  Future<MyResult<BaseResponse<LoginResponseModel>?>> register(RegisterParams params);
  Future<MyResult<BaseResponse<RegisterDataModel>?>> registerData(NoParams params);
  Future<MyResult<BaseResponse<LoginResponseModel>?>> verifyOtp(VerifyOtpParams params);
  Future<MyResult<BaseResponse<LoginResponseModel>?>> resendOtp(int id);
}
