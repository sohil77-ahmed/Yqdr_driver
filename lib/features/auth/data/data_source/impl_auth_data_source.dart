import 'dart:convert';

import 'package:base_structure/core/http/generic_http/api_names.dart';
import 'package:base_structure/core/http/generic_http/generic_http.dart';
import 'package:base_structure/core/http/models/http_request_model.dart';
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
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource implements AuthDataSource {
  @override
  Future<MyResult<BaseResponse<SettingsModel>?>> settings(
      NoParams params) async {
    HttpRequestModel data = HttpRequestModel(
      url: ApiNames.settings,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<SettingsModel>.fromJson(
        json,
        (data) => SettingsModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return GenericHttpImpl<BaseResponse<SettingsModel>?>()(data);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> login(
      LoginParams params) async {
    HttpRequestModel data = HttpRequestModel(
      url: ApiNames.login,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<LoginResponseModel>.fromJson(
        json,
        (data) => LoginResponseModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return GenericHttpImpl<BaseResponse<LoginResponseModel>?>()(data);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> forgetPassword(
      ForgetPasswordParams params) {
    HttpRequestModel data = HttpRequestModel(
      url: ApiNames.forgetPassword,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<LoginResponseModel>.fromJson(
        json,
        (data) => null,
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return GenericHttpImpl<BaseResponse<dynamic>?>()(data);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> register(
      RegisterParams params) async {
    HttpRequestModel data = HttpRequestModel(
      url: ApiNames.register,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<LoginResponseModel>.fromJson(
        json,
        (data) => LoginResponseModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return GenericHttpImpl<BaseResponse<LoginResponseModel>?>()(data);
  }

  @override
  Future<MyResult<BaseResponse<RegisterDataModel>?>> registerData(
      NoParams params) async {
    HttpRequestModel data = HttpRequestModel(
      url: ApiNames.register,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<RegisterDataModel>.fromJson(
        json,
        (data) => RegisterDataModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return GenericHttpImpl<BaseResponse<RegisterDataModel>?>()(data);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> verifyOtp(
      VerifyOtpParams params) async {
    HttpRequestModel data = HttpRequestModel(
      url: ApiNames.activeAccount(params.userId),
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<LoginResponseModel>.fromJson(
        json,
        (data) => LoginResponseModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return GenericHttpImpl<BaseResponse<LoginResponseModel>?>()(data);
  }

  @override
  Future<MyResult<BaseResponse<LoginResponseModel>?>> resendOtp(int id) async {
    HttpRequestModel data = HttpRequestModel(
      url: ApiNames.resendCode(id),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<LoginResponseModel>.fromJson(
        json,
        (data) => LoginResponseModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return GenericHttpImpl<BaseResponse<LoginResponseModel>?>()(data);
  }
}
