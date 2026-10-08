// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationInfoModelImpl _$$PaginationInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationInfoModelImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      firstPageUrl: json['first_page_url'] as String?,
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationInfoModelImplToJson(
        _$PaginationInfoModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'first_page_url': instance.firstPageUrl,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };
