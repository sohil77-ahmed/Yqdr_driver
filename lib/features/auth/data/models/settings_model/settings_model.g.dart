// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      fixing: json['fixing'] as bool?,
      login: json['login'] as bool?,
      terms: json['terms'] == null
          ? null
          : TermsModel.fromJson(json['terms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{
      'fixing': instance.fixing,
      'login': instance.login,
      'terms': instance.terms,
    };
