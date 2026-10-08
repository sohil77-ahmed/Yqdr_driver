import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/http/models/result.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/features/orders/data/data_source/orders_data_source.dart';
import 'package:base_structure/features/orders/data/models/order_model/order_model.dart';
import 'package:base_structure/features/orders/domain/repository/orders_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersRepository)
class ImplOrdersRepository implements OrdersRepository {
  final dataSource = getIt.get<OrdersDataSource>();

  @override
  Future<MyResult<BaseResponse<List<OrderModel>>?>> getOrders(String status) {
    return dataSource.getOrders(status);
  }
}
