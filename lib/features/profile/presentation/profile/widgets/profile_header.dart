part of 'profile_widgets_imports.dart';

class ProfileHeader extends StatelessWidget {
  final AccountInfoModel? info;
  const ProfileHeader({super.key, this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.r),
          bottomRight: Radius.circular(16.r),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Gaps.vGap(12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60.r,
                  height: 60.r,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    Res.profile_avatar,
                    width: 60.r,
                    height: 60.r,
                    fit: BoxFit.contain,
                  ),
                ),
                Gaps.hGap(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${info?.title}! 👋',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.s16_w700(
                          color: context.colors.white,
                        ).copyWith(fontSize: 15.sp),
                      ),
                      Gaps.vGap(6),
                      Text(
                        info?.phone ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.s12_w400(
                          color: context.colors.white,
                        ).copyWith(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                Gaps.hGap(8),
                InkWell(
                  onTap: () => context.push(NotificationsScreen.path),
                  borderRadius: BorderRadius.circular(30.r),
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: context.colors.white.withOpacity(0.4),
                      ),
                    ),
                    child: SvgPicture.asset(
                      Res.bell,
                      width: 17.w,
                      height: 17.h,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.vGap(8),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: context.colors.brown.withOpacity(.25),
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: context.colors.brown),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'إجمالي ارباح اليوم',
                        style: AppTextStyle.s16_w700(
                          color: context.colors.white,
                        ).copyWith(fontSize: 16.sp),
                      ),
                      Gaps.vGap(4),
                      Text(
                        'الارباح التي حصلت عليها من رحلاتك المكتملة',
                        style: AppTextStyle.s11_w400(
                          color: context.colors.white,
                        ).copyWith(fontSize: 11.sp),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      color: context.colors.greyWhite.withOpacity(.3),
                      borderRadius: BorderRadius.circular(40.r),
                      border: Border.all(color: context.colors.white),
                    ),
                    child: Text(
                      info?.total ?? '',
                      style: AppTextStyle.s12_w500(color: context.colors.white)
                          .copyWith(fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
