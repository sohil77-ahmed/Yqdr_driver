part of 'orders_imports.dart';

class OrdersController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();

  BaseBloc<BaseResponse<List<OrderModel>>?> ordersBloc = BaseBloc();

  // final BaseResponse<List<OrderModel>>? dummyOrders = BaseResponse(
  //   status: 1,
  //   message: 'dummmmyyyyy',
  //   data: [
  //     OrderModel(
  //         id: 1,
  //         pickup: "Home Address",
  //         delivery: "Hawalli",
  //         price: "4.000 KWD",
  //         image:
  //             "http://yaqdr.test/upload/categories/YlaHgpczwKbQoHtTgbYbCfPXXPDS50bvIxz0sACi.png",
  //         steps: [
  //           StepModel(name: "Pending", status: 1),
  //           StepModel(name: "Driver on away", status: 1),
  //           StepModel(name: "Shipped", status: 1),
  //           StepModel(name: "Delivered", status: 1),
  //         ]),
  //   ],
  // );

  Future<void> getOrders(String status) async {
    ordersBloc.loadingState();
    // await Future.delayed(Duration(seconds: 1));
    final result = await GetOrdersUseCase()(status);
    ordersBloc.successState(result);
  }
}
