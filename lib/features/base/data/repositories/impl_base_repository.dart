import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/models/model_to_domain/model_to_domain.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/base/data/data_sources/home_remote_data_source.dart';
import 'package:base_structure/features/base/data/models/home_data_model/home_data_model.dart';
import 'package:base_structure/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository with ModelToDomainResult {
  final dataSource = getIt.get<HomeRemoteDataSource>();

  @override
  Future<MyResult<BaseResponse<HomeDataModel>?>> getHomeData(
      NoParams params) async {
    return dataSource.getHomeData(params);
  }
}
