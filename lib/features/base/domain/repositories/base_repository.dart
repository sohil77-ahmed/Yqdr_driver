import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/auth/domain/models/user_domain_model.dart';
import 'package:base_structure/features/base/data/models/home_data_model/home_data_model.dart';

abstract class BaseRepository {

  // Future<MyResult<UserDomainModel>> getUser(bool param);
  Future<MyResult<BaseResponse<HomeDataModel>?>> getHomeData(NoParams params);

}