// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeUserModelImpl _$$HomeUserModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeUserModelImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      orders: (json['orders'] as num?)?.toInt(),
      total: json['total'] as String?,
    );

Map<String, dynamic> _$$HomeUserModelImplToJson(_$HomeUserModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'orders': instance.orders,
      'total': instance.total,
    };
