import 'dart:convert';

import 'package:base_structure/core/http/generic_http/api_names.dart';
import 'package:base_structure/core/http/generic_http/generic_http.dart';
import 'package:base_structure/core/http/models/http_request_model.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/base/data/models/home_data_model/home_data_model.dart';
import 'package:injectable/injectable.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {
  @override
  Future<MyResult<BaseResponse<HomeDataModel>?>> getHomeData(
      NoParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.home,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<HomeDataModel>.fromJson(
        json,
        (data) => HomeDataModel.fromJson(data),
      ),
    );
    return await GenericHttpImpl<BaseResponse<HomeDataModel>?>()(model);
  }
}
