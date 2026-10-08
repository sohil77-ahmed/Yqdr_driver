import 'package:base_structure/core/helpers/di.dart';
import 'package:base_structure/core/models/base_response_model/base_response_model.dart';
import 'package:base_structure/core/usecases/use_case.dart';
import 'package:base_structure/features/orders/data/models/order_model/order_model.dart';
import 'package:base_structure/features/orders/domain/repository/orders_repository.dart';

class GetOrdersUseCase
    extends UseCase<BaseResponse<List<OrderModel>>?, String> {
  @override
  Future<BaseResponse<List<OrderModel>>?> call(String status) async {
    var result = await getIt.get<OrdersRepository>().getOrders(status);
    return result.when(
        isSuccess: (data) => data,
        isError: (error) {
          return;
        }
    );
  }
}
