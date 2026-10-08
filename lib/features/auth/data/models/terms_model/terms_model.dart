import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_model.freezed.dart';
part 'terms_model.g.dart';

@freezed
class TermsModel with _$TermsModel {
  const factory TermsModel({
    int? id,
    String? title,
    @JsonKey(name: "desc") String? description,
    String? icon,
    String? image,
  }) = _TermsModel;

  factory TermsModel.fromJson(Map<String, dynamic> json) => _$TermsModelFromJson(json);
}