part of 'order_details_widgets_imports.dart';

class OrderStatusDropdown extends StatelessWidget {
  const OrderStatusDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'حالة الطلب',
          style: AppTextStyle.s16_w500(color: context.colors.black)
              .copyWith(fontSize: 16.sp),
        ),
        Gaps.vGap(8),
        GenericTextField(
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.done,
          fillColor: context.colors.greyWhite,
          validate: (value) => value?.validateEmpty(),
          hint: "تم استلام الطلب",
          hintColor: context.colors.black,
          suffixIcon: Padding(
            padding: EdgeInsets.all(12.r),
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 24.r,
              color: context.colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
