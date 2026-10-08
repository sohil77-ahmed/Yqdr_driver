part of 'orders_widgets_imports.dart';

class OrderCard extends StatelessWidget {
  final String imagePath;
  final String pickupLocation;
  final String dropOffLocation;
  final String price;
  final String status;
  final VoidCallback onDelete;
  final List<StepModel>? steps;

  const OrderCard({
    super.key,
    required this.imagePath,
    required this.pickupLocation,
    required this.dropOffLocation,
    required this.price,
    required this.onDelete,
    required this.status,
    this.steps,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: Dimens.cardPadding,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: context.colors.disableGray.withOpacity(0.4)),
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
                child: CachedImage(
                  url: imagePath,
                  haveRadius: false,
                  fit: BoxFit.contain,
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
                              color: status == "completed"
                                  ? context.colors.grey
                                  : context.colors.brown,
                              size: 10.sp,
                            ),
                            Container(
                              width: 1.w,
                              height: 14.h,
                              color: status == "completed"
                                  ? context.colors.grey
                                  : context.colors.brown,
                            ),
                            Icon(
                              Icons.circle,
                              color: status == "completed"
                                  ? context.colors.grey
                                  : context.colors.brown,
                              size: 10.sp,
                            ),
                          ],
                        ),
                        Gaps.hGap(8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pickupLocation,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.s12_w400(
                                  color: context.colors.black,
                                ).copyWith(fontSize: 12.sp),
                              ),
                              Gaps.vGap(6),
                              Text(
                                dropOffLocation,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.s12_w400(
                                  color: context.colors.disableGray,
                                ).copyWith(fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gaps.vGap(8),
                    Text(
                      price,
                      style: AppTextStyle.s16_w700(
                        color: status == "completed"
                            ? context.colors.grey
                            : context.colors.brown,
                      ).copyWith(fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gaps.vGap(16),
          if (status == "current" && steps != null && steps!.isNotEmpty) ...[
            Builder(
              builder: (context) {
                final lastActiveIndex =
                    steps!.lastIndexWhere((step) => step.status == 1);

                List<Widget> stepWidgets = [];

                for (int i = 0; i < steps!.length; i++) {
                  final step = steps![i];
                  final bool isDone = step.status == 1;
                  final bool isActive = i == lastActiveIndex;

                  stepWidgets.add(
                    StateCircle(
                      isActive: isActive,
                      done: isDone,
                      title: isActive ? step.name : null,
                    ),
                  );

                  if (i < steps!.length - 1) {
                    final nextStep = steps![i + 1];
                    final bool isLineActive = nextStep.status == 1;
                    stepWidgets.add(GreenLine(isActive: isLineActive));
                  }
                }

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: stepWidgets,
                );
              },
            ),
          ] else ...[
            InkWell(
              onTap: () => context.push(OrderDetailsScreen.path),
              borderRadius: BorderRadius.circular(8.r),
              child: Container(
                height: 35.h,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: status == "completed"
                      ? context.colors.disableGray
                      : context.colors.brown.withOpacity(.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  "تفاصيل الطلب",
                  style: AppTextStyle.s14_w500(
                    color: status == "completed"
                        ? context.colors.white
                        : context.colors.brown,
                  ).copyWith(fontSize: 14.sp),
                ),
              ),
            )
          ],
        ],
      ),
    );
  }
}
