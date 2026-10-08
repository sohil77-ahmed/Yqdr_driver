// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterDataModelImpl _$$RegisterDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterDataModelImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => PackageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      terms: json['terms'] == null
          ? null
          : TermsModel.fromJson(json['terms'] as Map<String, dynamic>),
      packagesUrl: json['packages_url'] as String?,
    );

Map<String, dynamic> _$$RegisterDataModelImplToJson(
        _$RegisterDataModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'packages': instance.packages,
      'terms': instance.terms,
      'packages_url': instance.packagesUrl,
    };
