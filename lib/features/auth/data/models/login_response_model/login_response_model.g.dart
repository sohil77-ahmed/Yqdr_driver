// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      userID: (json['user_id'] as num?)?.toInt(),
      isActive: (json['active'] as num?)?.toInt(),
      token: json['authorization'] as String?,
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userID,
      'active': instance.isActive,
      'authorization': instance.token,
    };
