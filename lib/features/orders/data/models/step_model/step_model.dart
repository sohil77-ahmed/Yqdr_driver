import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_model.freezed.dart';
part 'step_model.g.dart';

@freezed
class StepModel with _$StepModel {
  const factory StepModel({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "status") int? status,
  }) = _StepModel;

  factory StepModel.fromJson(Map<String, dynamic> json) =>
      _$StepModelFromJson(json);
}