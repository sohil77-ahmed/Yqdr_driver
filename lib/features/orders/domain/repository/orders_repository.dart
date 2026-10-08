import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/orders/data/models/order_model/order_model.dart';

abstract class OrdersRepository {
  Future<MyResult<BaseResponse<List<OrderModel>>?>> getOrders(String status);
}
