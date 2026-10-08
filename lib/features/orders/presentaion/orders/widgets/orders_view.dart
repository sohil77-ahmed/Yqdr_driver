part of 'orders_widgets_imports.dart';

class OrdersView extends StatelessWidget {
  final OrdersController controller;
  final String status;
  final List<OrderModel> orders;
  const OrdersView(
      {super.key,
        required this.controller,
        required this.status,
        required this.orders});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: orders.length,
      separatorBuilder: (context, index) => Gaps.vGap(12),
      itemBuilder: (context, index) {
        final order = orders[index];
        return OrderCard(
          status: status,
          imagePath: order.image ?? '',
          pickupLocation: order.pickup ?? '',
          dropOffLocation: order.delivery ?? '',
          price: order.price ?? '',
          steps: order.steps,
          onDelete: () {},
        );
      },
    );
  }
}
