// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDataModelImpl _$$HomeDataModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataModelImpl(
      user: json['user'] == null
          ? null
          : HomeUserModel.fromJson(json['user'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeDataModelImplToJson(_$HomeDataModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'orders': instance.orders,
    };
