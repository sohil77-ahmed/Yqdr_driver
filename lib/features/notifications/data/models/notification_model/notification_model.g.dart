// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      message: json['message'] as String?,
      action: json['action'] as String?,
      link: json['link'] as String?,
      orderId: (json['order_id'] as num?)?.toInt(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'action': instance.action,
      'link': instance.link,
      'order_id': instance.orderId,
      'date': instance.date,
    };
