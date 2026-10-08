import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info_model.freezed.dart';
part 'pagination_info_model.g.dart';

@freezed
class PaginationInfoModel with _$PaginationInfoModel {
  const factory PaginationInfoModel({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _PaginationInfoModel;

  factory PaginationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoModelFromJson(json);
}