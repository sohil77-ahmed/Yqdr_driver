part of 'home_widgets_imports.dart';

class ActiveView extends StatelessWidget {
  final HomeController controller;
  const ActiveView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
        bloc: controller.homeBloc,
        onSuccessWidget: (data) {
          final orders = data?.data?.orders ?? [];
          return Padding(
            padding:
                EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'الارقام والاحصائيات',
                    style: AppTextStyle.s16_w500(color: context.colors.black)
                        .copyWith(fontSize: 16.sp),
                  ),
                  Gaps.vGap(8),
                  Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: context.colors.disableGray.withOpacity(.3),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  data?.data?.user?.orders.toString() ?? '',
                                  style: AppTextStyle.s20_w600(
                                          color: context.colors.brown)
                                      .copyWith(fontSize: 20.sp),
                                ),
                                Gaps.vGap(8),
                                Text(
                                  'طلبات مكتملة',
                                  style: AppTextStyle.s16_w500(
                                          color: context.colors.grey)
                                      .copyWith(fontSize: 15.sp),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: context.colors.disableGray.withOpacity(0.5),
                            thickness: 1.w,
                            width: 24.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  data?.data?.user?.total ?? '',
                                  style: AppTextStyle.s20_w600(
                                          color: context.colors.brown)
                                      .copyWith(fontSize: 20.sp),
                                ),
                                Gaps.vGap(8),
                                Text(
                                  'اجمالي الارباح اليوم',
                                  style: AppTextStyle.s16_w500(
                                          color: context.colors.grey)
                                      .copyWith(fontSize: 15.sp),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gaps.vGap(24),
                  if (orders.isNotEmpty) ...[
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'الطلبات الحالية',
                                style: AppTextStyle.s16_w700(
                                        color: context.colors.black)
                                    .copyWith(fontSize: 16.sp),
                              ),
                              InkWell(
                                onTap: () => context.push(
                                  OrdersScreen.path,
                                  extra: "current",
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'الكل',
                                      style: AppTextStyle.s16_w500(
                                              color: context.colors.brown)
                                          .copyWith(fontSize: 15.sp),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: context.colors.brown,
                                      size: 18.r,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Gaps.vGap(12),
                          ListView.separated(
                            itemCount: orders.length,
                            separatorBuilder: (context, index) => Gaps.vGap(8),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final order = orders[index];
                              return HomeOrderCard(
                                imagePath: Res.car,
                                pickupLocation: order.pickup ?? '',
                                dropOffLocation: order.delivery ?? '',
                                price: order.price ?? '',
                                status: 'current',
                                steps: order.steps,
                                onDelete: () {},
                              );
                            },
                          ),
                        ],
                      ),
                    ))
                  ] else ...[
                    Expanded(
                      child: Center(
                        child: Text(
                          'لا توجد طلبات',
                          style:
                              AppTextStyle.s14_w400(color: context.colors.black)
                                  .copyWith(fontSize: 14.sp),
                        ),
                      ),
                    )
                  ]
                ],
              ),
            ),
          );
        });
  }
}
