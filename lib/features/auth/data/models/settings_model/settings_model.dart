import 'package:base_structure/features/auth/data/models/terms_model/terms_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    @JsonKey(name: "fixing") bool? fixing,
    @JsonKey(name: "login") bool? login,
    @JsonKey(name: "terms") TermsModel? terms,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) => _$SettingsModelFromJson(json);
}