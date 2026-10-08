part of 'order_details_widgets_imports.dart';

class PickupDetailsCard extends StatelessWidget {
  const PickupDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'تفاصيل الاستلام',
          style: AppTextStyle.s16_w500(color: context.colors.black)
              .copyWith(fontSize: 16.sp),
        ),
        Gaps.vGap(8),
        Container(
          width: double.infinity,
          padding: Dimens.cardPadding,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: context.colors.disableGray),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'عنوان منزل',
                style: AppTextStyle.s14_w500(color: context.colors.black)
                    .copyWith(fontSize: 14.sp),
              ),
              Gaps.vGap(4),
              Text(
                'رقم الهاتف: 96685478563+',
                style: AppTextStyle.s12_w400(color: context.colors.grey)
                    .copyWith(fontSize: 12.sp),
              ),
              Gaps.vGap(4),
              Text(
                'العنوان:منطقة الباحة,  جدة, شارع التحلية ـ كونكورد بلازا صندوق بريد 13151',
                style: AppTextStyle.s12_w400(color: context.colors.grey)
                    .copyWith(fontSize: 12.sp),
              ),
              Gaps.vGap(8),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: context.colors.brown,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.my_location,
                            color: context.colors.white,
                            size: 16.r,
                          ),
                          Gaps.hGap(4),
                          Text(
                            'الخريطة',
                            style: AppTextStyle.s12_w400(
                              color: context.colors.white,
                            ).copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gaps.hGap(8),
                  Expanded(
                    child: Container(
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: context.colors.brown.withOpacity(.1),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Res.phone,
                            width: 15.w,
                            height: 15.h,
                            colorFilter: ColorFilter.mode(
                              context.colors.brown,
                              BlendMode.srcIn,
                            ),
                          ),
                          Gaps.hGap(4),
                          Text(
                            'اتصال',
                            style: AppTextStyle.s12_w400(
                              color: context.colors.brown,
                            ).copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
