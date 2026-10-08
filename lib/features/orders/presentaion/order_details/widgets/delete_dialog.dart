part of 'order_details_widgets_imports.dart';

class DeleteDialog extends StatelessWidget {
  final GlobalKey<CustomButtonState> btnKey;
  final OrderDetailsController controller;

  const DeleteDialog({
    super.key,
    required this.btnKey,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      backgroundColor: context.colors.white,
      contentPadding: EdgeInsets.all(16.r),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Res.delete_box,
              height: 64.h,
              width: 64.w,
              fit: BoxFit.contain,
            ),
            Gaps.vGap(12),
            Text(
              'كن حذرا! سيتم الغاء الطلب',
              style: AppTextStyle.s18_w700(color: context.colors.primary)
                  .copyWith(fontSize: 18.sp),
            ),
            Gaps.vGap(8),
            Text(
              'في حالة تأكيد الغاء الطلب برجاء اختر كيفية استرجاع مبلغ الطلب من الخيارين:',
              style: AppTextStyle.s14_w400(color: context.colors.black)
                  .copyWith(fontSize: 14.sp),
            ),
            Gaps.vGap(24),
            ObsValueConsumer<int>(
              observable: controller.refundMethod,
              builder: (context, value) {
                return Column(
                  children: [
                    RadioListTile<int>(
                      value: 0,
                      groupValue: value,
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      activeColor: context.colors.brown,
                      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                      title: Text(
                        "ارجاع المبلغ 12 دينار لحسابك البنكي",
                        style: AppTextStyle.s14_w600(
                          color: context.colors.black,
                        ).copyWith(fontSize: 14.sp),
                      ),
                      onChanged: (val) {
                        if (val != null) controller.setRefundMethod(val);
                      },
                    ),
                    RadioListTile<int>(
                      value: 1,
                      groupValue: value,
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      activeColor: context.colors.brown,
                      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                      title: Text(
                        "الحصول علي قسيمة شراء مبلغ 23 دينار",
                        style: AppTextStyle.s14_w600(
                          color: context.colors.black,
                        ).copyWith(fontSize: 14.sp),
                      ),
                      onChanged: (val) {
                        if (val != null) controller.setRefundMethod(val);
                      },
                    ),
                  ],
                );
              },
            ),
            Gaps.vGap(24),
            LoadingButton(
              title: "تأكيد الغاء الطلب",
              onTap: () => context.pop(true),
              color: context.colors.black,
              textColor: context.colors.white,
              btnKey: btnKey,
              borderRadius: 8.r,
              margin: EdgeInsets.zero,
              fontSize: 14.sp,
              height: 45.h,
            ),
            Gaps.vGap(8),
            InkWell(
              onTap: context.pop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الرجوع",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s14_w600(
                      color: context.colors.black,
                    ).copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
