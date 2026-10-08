import 'package:base_structure/features/notifications/data/models/notification_model/notification_model.dart';
import 'package:base_structure/features/notifications/data/models/pagination_info_model/pagination_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_data_model.freezed.dart';
part 'notifications_data_model.g.dart';

@freezed
class NotificationsDataModel with _$NotificationsDataModel {
  const factory NotificationsDataModel({
    PaginationInfoModel? info,
    List<NotificationModel>? notifications,
  }) = _NotificationsDataModel;

  factory NotificationsDataModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsDataModelFromJson(json);
}
