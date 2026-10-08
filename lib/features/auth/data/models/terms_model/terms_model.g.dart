// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermsModelImpl _$$TermsModelImplFromJson(Map<String, dynamic> json) =>
    _$TermsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['desc'] as String?,
      icon: json['icon'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$TermsModelImplToJson(_$TermsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.description,
      'icon': instance.icon,
      'image': instance.image,
    };
