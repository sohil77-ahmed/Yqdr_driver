import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/base/data/models/home_data_model/home_data_model.dart';
import 'package:base_structure/features/base/domain/repositories/base_repository.dart';

class GetHomeDataUseCase
    extends UseCase<BaseResponse<HomeDataModel>?, NoParams> {
  @override
  Future<BaseResponse<HomeDataModel>?> call(NoParams params) async {
    var result = await getIt.get<BaseRepository>().getHomeData(params);
    return result.when(
        isSuccess: (data) => data,
        isError: (error) {
          return;
        });
  }
}
