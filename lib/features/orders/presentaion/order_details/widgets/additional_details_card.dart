part of 'order_details_widgets_imports.dart';

class AdditionalDetailsCard extends StatelessWidget {
  const AdditionalDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'تفاصيل اضافية:',
          style: AppTextStyle.s16_w500(color: context.colors.black)
              .copyWith(fontSize: 16.sp),
        ),
        Gaps.vGap(8),
        Text(
          'برجاء الاهتمام بالطلب لان به منتجات قابلة للكسر.',
          style: AppTextStyle.s16_w400(color: context.colors.black)
              .copyWith(fontSize: 15.sp),
        ),
      ],
    );
  }
}
