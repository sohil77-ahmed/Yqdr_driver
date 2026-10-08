// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountResponseModelImpl _$$AccountResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountResponseModelImpl(
      userInfo: json['user'] == null
          ? null
          : AccountInfoModel.fromJson(json['user'] as Map<String, dynamic>),
      contact: json['contact'] == null
          ? null
          : ContactModel.fromJson(json['contact'] as Map<String, dynamic>),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => TermsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$AccountResponseModelImplToJson(
        _$AccountResponseModelImpl instance) =>
    <String, dynamic>{
      'user': instance.userInfo,
      'contact': instance.contact,
      'pages': instance.pages,
      'version': instance.version,
    };
