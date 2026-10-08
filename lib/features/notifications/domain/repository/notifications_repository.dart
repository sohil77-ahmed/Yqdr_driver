import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/notifications/data/models/notifications_data_model/notifications_data_model.dart';

abstract class NotificationsRepository {
  Future<MyResult<BaseResponse<NotificationsDataModel>?>> getNotifications(int page);
}