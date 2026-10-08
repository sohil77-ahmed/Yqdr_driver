import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/notifications/data/models/notifications_data_model/notifications_data_model.dart';
import 'package:base_structure/features/notifications/domain/repository/notifications_repository.dart';

class GetNotificationsUseCase
    extends UseCase<BaseResponse<NotificationsDataModel>?, int> {
  @override
  Future<BaseResponse<NotificationsDataModel>?> call(int page) async {
    final result =
        await getIt.get<NotificationsRepository>().getNotifications(page);
    return result.when(
        isSuccess: (data) => data,
        isError: (error) {
          return;
        });
  }
}
