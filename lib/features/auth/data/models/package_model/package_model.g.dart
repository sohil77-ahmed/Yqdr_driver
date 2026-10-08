// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageModelImpl _$$PackageModelImplFromJson(Map<String, dynamic> json) =>
    _$PackageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      duration: json['duration'] as String?,
      trial: json['trial'] as String?,
      price: json['price'] as String?,
      limit: json['limit'] as String?,
    );

Map<String, dynamic> _$$PackageModelImplToJson(_$PackageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'trial': instance.trial,
      'price': instance.price,
      'limit': instance.limit,
    };
