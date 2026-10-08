import 'package:base_structure/features/orders/data/models/step_model/step_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? id,
    String? pickup,
    String? delivery,
    String? price,
    String? image,
    @JsonKey(name: "steps") List<StepModel>? steps,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}