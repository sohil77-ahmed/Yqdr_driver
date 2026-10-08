import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_user_model.freezed.dart';
part 'home_user_model.g.dart';

@freezed
class HomeUserModel with _$HomeUserModel {
  const factory HomeUserModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "orders") int? orders,
    @JsonKey(name: "total") String? total,
  }) = _HomeUserModel;

  factory HomeUserModel.fromJson(Map<String, dynamic> json) =>
      _$HomeUserModelFromJson(json);
}