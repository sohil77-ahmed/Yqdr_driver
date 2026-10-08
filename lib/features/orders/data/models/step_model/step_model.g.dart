// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepModelImpl _$$StepModelImplFromJson(Map<String, dynamic> json) =>
    _$StepModelImpl(
      name: json['name'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StepModelImplToJson(_$StepModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
    };
