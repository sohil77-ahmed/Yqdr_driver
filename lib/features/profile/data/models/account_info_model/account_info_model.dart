import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_info_model.freezed.dart';
part 'account_info_model.g.dart';

@freezed
class AccountInfoModel with _$AccountInfoModel {
  const factory AccountInfoModel({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "total") String? total,
  }) = _AccountInfoModel;

  factory AccountInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoModelFromJson(json);
}