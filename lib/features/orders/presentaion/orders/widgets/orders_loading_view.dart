part of 'orders_widgets_imports.dart';

class OrdersLoadingView extends StatelessWidget {
  const OrdersLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.appPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextShimmer(lineWidthPercent: .7),
              TextShimmer(lineWidthPercent: .7),
            ],
          ),
          Gaps.vGap(16),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (context, index) => Gaps.vGap(12),
            itemBuilder: (context, index) {
              return BaseShimmerWidget(
                child: Container(
                  width: double.infinity,
                  padding: Dimens.cardPadding,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border:
                        Border.all(color: context.colors.disableGray.withOpacity(0.4)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80.w,
                            height: 70.h,
                            padding: EdgeInsets.all(8.r),
                            decoration: BoxDecoration(
                              color: context.colors.greyWhite,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          Gaps.hGap(12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.square,
                                          size: 10.sp,
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                          height: 14.h,
                                        ),
                                        Icon(
                                          Icons.circle,
                                          size: 10.sp,
                                        ),
                                      ],
                                    ),
                                    Gaps.hGap(8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextShimmer(lineWidthPercent: .7),
                                          Gaps.vGap(6),
                                          TextShimmer(lineWidthPercent: .7),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Gaps.vGap(8),
                                TextShimmer(lineWidthPercent: .7),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gaps.vGap(12),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(8.r),
                        child: Container(
                          height: 35.h,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: context.colors.disableGray,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: TextShimmer(lineWidthPercent: .7),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
