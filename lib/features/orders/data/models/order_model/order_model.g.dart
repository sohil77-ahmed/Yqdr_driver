// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      pickup: json['pickup'] as String?,
      delivery: json['delivery'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pickup': instance.pickup,
      'delivery': instance.delivery,
      'price': instance.price,
      'image': instance.image,
      'steps': instance.steps,
    };
