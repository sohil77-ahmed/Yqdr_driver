import 'package:base_structure/features/auth/data/models/category_model/category_model.dart';
import 'package:base_structure/features/auth/data/models/package_model/package_model.dart';
import 'package:base_structure/features/auth/data/models/terms_model/terms_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_data_model.freezed.dart';
part 'register_data_model.g.dart';

@freezed
class RegisterDataModel with _$RegisterDataModel {
  const factory RegisterDataModel({
    @JsonKey(name: "categories") List<CategoryModel>? categories,
    @JsonKey(name: "packages") List<PackageModel>? packages,
    @JsonKey(name: "terms") TermsModel? terms,
    @JsonKey(name: "packages_url") String? packagesUrl,
  }) = _RegisterDataModel;

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataModelFromJson(json);
}