import 'package:base_structure/features/auth/data/models/terms_model/terms_model.dart';
import 'package:base_structure/features/profile/data/models/account_info_model/account_info_model.dart';
import 'package:base_structure/features/profile/data/models/contact_model/contact_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_response_model.freezed.dart';
part 'account_response_model.g.dart';

@freezed
class AccountResponseModel with _$AccountResponseModel {
  const factory AccountResponseModel({
    @JsonKey(name: "user") AccountInfoModel? userInfo,
    @JsonKey(name: "contact") ContactModel? contact,
    @JsonKey(name: "pages") List<TermsModel>? pages,
    String? version,
  }) = _AccountResponseModel;

  factory AccountResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseModelFromJson(json);
}