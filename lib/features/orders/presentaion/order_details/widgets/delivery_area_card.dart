part of 'order_details_widgets_imports.dart';

class DeliveryAreaCard extends StatelessWidget {
  final OrderDetailsController controller;

  const DeliveryAreaCard({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'منطقة التسليم',
          style: AppTextStyle.s16_w500(color: context.colors.black)
              .copyWith(fontSize: 16.sp),
        ),
        Gaps.vGap(8),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.square,
                      color: context.colors.brown,
                      size: 14.r,
                    ),
                    Container(
                      width: 2.w,
                      height: 14.h,
                      color: context.colors.brown,
                    ),
                    Icon(
                      Icons.circle,
                      color: context.colors.brown,
                      size: 14.r,
                    ),
                  ],
                ),
                Gaps.hGap(8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'المنطقة الصناعية، مدينة الكويت',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.s14_w600(
                          color: context.colors.black,
                        ).copyWith(fontSize: 14.sp),
                      ),
                      Gaps.vGap(8),
                      Text(
                        'المنطقة الحرفية، الشويخ، مدينة الكويت',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.s14_w600(
                          color: context.colors.black,
                        ).copyWith(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gaps.vGap(16),
            LoadingButton(
              title: "اتصال بالمستلم",
              onTap: () {},
              color: context.colors.brown.withOpacity(.1),
              textColor: context.colors.brown,
              btnKey: controller.btnKey2,
              borderRadius: 5.r,
              margin: EdgeInsets.zero,
              fontSize: 14.sp,
              height: 35.h,
            ),
          ],
        ),
      ],
    );
  }
}
