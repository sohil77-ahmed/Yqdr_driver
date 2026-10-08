// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsDataModelImpl _$$NotificationsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsDataModelImpl(
      info: json['info'] == null
          ? null
          : PaginationInfoModel.fromJson(json['info'] as Map<String, dynamic>),
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotificationsDataModelImplToJson(
        _$NotificationsDataModelImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'notifications': instance.notifications,
    };
