import 'package:base_structure/core/http/generic_http/api_names.dart';
import 'package:base_structure/core/http/generic_http/generic_http.dart';
import 'package:base_structure/core/http/models/http_request_model.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/profile/data/data_source/account_data_source.dart';
import 'package:base_structure/features/profile/data/models/account_response_model/account_response_model.dart';
import 'package:base_structure/features/profile/data/models/profile_model/profile_model.dart';
import 'package:base_structure/features/profile/domain/entities/reset_password_params.dart';
import 'package:base_structure/features/profile/domain/entities/update_profile_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AccountDataSource)
class ImplAccountDataSource implements AccountDataSource {
  @override
  Future<MyResult<BaseResponse<AccountResponseModel>?>> getAccount(
      NoParams params) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.account,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<AccountResponseModel>.fromJson(
        json,
        (data) => AccountResponseModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return await GenericHttpImpl<BaseResponse<AccountResponseModel>?>()(request);
  }

  @override
  Future<MyResult<BaseResponse<ProfileModel>?>> getProfile(
      NoParams params) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.profile,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<ProfileModel>.fromJson(
        json,
        (data) => ProfileModel.fromJson(data),
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return await GenericHttpImpl<BaseResponse<ProfileModel>?>()(request);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> updateProfile(
      UpdateProfileParams params) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.profile,
      responseType: ResType.model,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<dynamic>.fromJson(
        json,
        (data) => data,
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return await GenericHttpImpl<BaseResponse<dynamic>?>()(request);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> resetPassword(
      ResetPasswordParams params) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.resetPassword,
      responseType: ResType.model,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<dynamic>.fromJson(
        json,
        (data) => data,
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return await GenericHttpImpl<BaseResponse<dynamic>?>()(request);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> logout(
      NoParams params) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.logout,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<dynamic>.fromJson(
        json,
            (data) => data,
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return await GenericHttpImpl<BaseResponse<dynamic>?>()(request);
  }

  @override
  Future<MyResult<BaseResponse<dynamic>?>> deleteAccount(
      NoParams params) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.deleteAccount,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<dynamic>.fromJson(
        json,
            (data) => data,
      ),
      errorFunc: (json) => json['message'],
      showLoader: true,
    );
    return await GenericHttpImpl<BaseResponse<dynamic>?>()(request);
  }
}
