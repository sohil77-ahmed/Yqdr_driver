import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_model.freezed.dart';
part 'package_model.g.dart';

@freezed
class PackageModel with _$PackageModel {
  const factory PackageModel({
    int? id,
    String? name,
    String? duration,
    String? trial,
    String? price,
    String? limit,
  }) = _PackageModel;

  factory PackageModel.fromJson(Map<String, dynamic> json) =>
      _$PackageModelFromJson(json);
}