import 'dart:convert';

import 'package:base_structure/core/http/generic_http/api_names.dart';
import 'package:base_structure/core/http/generic_http/generic_http.dart';
import 'package:base_structure/core/http/models/http_request_model.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/notifications/data/data_source/notification_data_source.dart';
import 'package:base_structure/features/notifications/data/models/notifications_data_model/notifications_data_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NotificationDataSource)
class ImplNotificationDataSource implements NotificationDataSource {
  @override
  Future<MyResult<BaseResponse<NotificationsDataModel>?>> getNotifications(
      int page) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.notifications(page),
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<NotificationsDataModel>.fromJson(
        json,
        (data) => NotificationsDataModel.fromJson(data),
      ),
    );
    return await GenericHttpImpl<BaseResponse<NotificationsDataModel>?>()(
        request);
  }
}
