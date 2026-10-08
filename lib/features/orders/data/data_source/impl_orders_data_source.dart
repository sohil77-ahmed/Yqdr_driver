import 'dart:convert';

import 'package:base_structure/core/http/generic_http/api_names.dart';
import 'package:base_structure/core/http/generic_http/generic_http.dart';
import 'package:base_structure/core/http/models/http_request_model.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/orders/data/data_source/orders_data_source.dart';
import 'package:base_structure/features/orders/data/models/order_model/order_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersDataSource)
class ImplOrdersDataSource implements OrdersDataSource {
  @override
  Future<MyResult<BaseResponse<List<OrderModel>>?>> getOrders(
      String status) async {
    HttpRequestModel request = HttpRequestModel(
      url: ApiNames.orders(status),
      responseType: ResType.list,
      requestMethod: RequestMethod.get,
      responseKey: (json) => json,
      toJsonFunc: (json) => BaseResponse<List<OrderModel>>.fromJson(
        json,
        (data) => (data as List).map((e) => OrderModel.fromJson(e)).toList(),
      ),
      errorFunc: (json) => json['message'],
    );
    return await GenericHttpImpl<BaseResponse<List<OrderModel>>?>()(request);
  }
}
