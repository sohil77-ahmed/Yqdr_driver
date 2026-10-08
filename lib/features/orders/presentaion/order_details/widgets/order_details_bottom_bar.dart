part of 'order_details_widgets_imports.dart';

class OrderDetailsBottomBar extends StatelessWidget {
  final OrderDetailsController controller;

  const OrderDetailsBottomBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 12.h,
        bottom: MediaQuery.paddingOf(context).bottom + 12.h,
      ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
        boxShadow: [
          BoxShadow(
            color: context.colors.disableGray.withOpacity(.3),
            blurRadius: 20,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: context.colors.greyWhite,
              borderRadius: BorderRadius.circular(100.r),
            ),
          ),
          Gaps.vGap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الاجمالي',
                style: AppTextStyle.s16_w500(color: context.colors.black)
                    .copyWith(fontSize: 16.sp),
              ),
              Text(
                '1100 KWD',
                style: AppTextStyle.s16_w500(color: context.colors.black)
                    .copyWith(fontSize: 16.sp),
              ),
            ],
          ),
          Gaps.vGap(16),
          LoadingButton(
            title: "حفظ التعديلات",
            onTap: () {},
            color: context.colors.black,
            textColor: context.colors.white,
            btnKey: controller.btnKey,
            borderRadius: 5.r,
            margin: EdgeInsets.zero,
            fontSize: 14.sp,
            height: 45.h,
          ),
        ],
      ),
    );
  }
}
