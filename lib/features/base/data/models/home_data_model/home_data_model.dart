import 'package:base_structure/features/base/data/models/home_user_model/home_user_model.dart';
import 'package:base_structure/features/orders/data/models/order_model/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data_model.freezed.dart';
part 'home_data_model.g.dart';

@freezed
class HomeDataModel with _$HomeDataModel {
  const factory HomeDataModel({
    @JsonKey(name: "user") HomeUserModel? user,
    @JsonKey(name: "orders") List<OrderModel>? orders,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);
}