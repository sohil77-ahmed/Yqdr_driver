part of 'order_details_imports.dart';

class OrderDetailsScreen extends StatelessWidget {
  static final String name = 'order_details';
  static final String path = '/order_details';
  final OrderDetailsController controller = OrderDetailsController();
  OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'تتبع الطلب'),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: Dimens.appPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PickupDetailsCard(),
              Divider(
                height: 32.h,
                color: context.colors.disableGray,
              ),
              DeliveryAreaCard(controller: controller),
              Divider(height: 32.h, color: context.colors.disableGray),
              const AdditionalDetailsCard(),
              Divider(height: 32.h, color: context.colors.disableGray),
              const OrderStatusDropdown(),
              Gaps.vGap(20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: OrderDetailsBottomBar(controller: controller),
    );
  }
}
