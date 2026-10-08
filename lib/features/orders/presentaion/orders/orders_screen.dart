part of 'orders_imports.dart';

class OrdersScreen extends StatefulWidget {
  static final String name = 'orders';
  static final String path = '/orders';

  final String status;

  const OrdersScreen({super.key, required this.status});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final OrdersController controller = OrdersController();

  @override
  void initState() {
    controller.getOrders(widget.status);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: widget.status == "current"
            ? "الطلبات الحالية"
            : widget.status == "completed"
                ? "الطلبات المكتملة"
                : "الطلبات المعلقة",
        showBack: widget.status != "pending",
      ),
      body: BaseBlocBuilder(
          bloc: controller.ordersBloc,
          onLoadingWidget: (context) =>
              SingleChildScrollView(child: OrdersLoadingView()),
          onSuccessWidget: (data) {
            final orders = data?.data ?? [];

            if (orders.isEmpty) {
              return Center(
                child: Text(
                  'لا توجد طلبات',
                  style: AppTextStyle.s14_w400(color: context.colors.black)
                      .copyWith(fontSize: 14.sp),
                ),
              );
            } else {
              return SingleChildScrollView(
                padding: Dimens.appPadding,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.status == "pending"
                              ? "الطلبات المعلقة"
                              : widget.status == "completed"
                                  ? "الطلبات المكتملة"
                                  : "الطلبات الحالية",
                          style:
                              AppTextStyle.s16_w700(color: context.colors.black)
                                  .copyWith(fontSize: 16.sp),
                        ),
                        Text(
                          '${orders.length} طلبات',
                          style:
                              AppTextStyle.s16_w400(color: context.colors.grey)
                                  .copyWith(fontSize: 16.sp),
                        ),
                      ],
                    ),
                    Gaps.vGap(16),
                    OrdersView(
                      controller: controller,
                      status: widget.status,
                      orders: orders,
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }
}
