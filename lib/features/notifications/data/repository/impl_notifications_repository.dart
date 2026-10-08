import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/notifications/data/data_source/notification_data_source.dart';
import 'package:base_structure/features/notifications/data/models/notifications_data_model/notifications_data_model.dart';
import 'package:base_structure/features/notifications/domain/repository/notifications_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NotificationsRepository)
class ImplNotificationsRepository implements NotificationsRepository {
  final dataSource = getIt.get<NotificationDataSource>();

  @override
  Future<MyResult<BaseResponse<NotificationsDataModel>?>> getNotifications(int page) {
    return dataSource.getNotifications(page);
  }
}