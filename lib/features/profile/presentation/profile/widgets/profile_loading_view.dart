part of 'profile_widgets_imports.dart';

class ProfileLoadingView extends StatelessWidget {
  const ProfileLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
          decoration: BoxDecoration(
            color: context.colors.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
            ),
          ),
          child: BaseShimmerWidget(
            baseColor: context.colors.brown.withOpacity(.3),
            highlightColor: context.colors.primary,
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  Gaps.vGap(12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleShimmer(radius: 60),
                      Gaps.hGap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextShimmer(lineWidthPercent: .7),
                            Gaps.vGap(8),
                            TextShimmer(lineWidthPercent: .4),
                          ],
                        ),
                      ),
                      Gaps.hGap(8),
                      CircleShimmer(radius: 25.r)
                    ],
                  ),
                  Gaps.vGap(8),
                  Container(
                    width: double.infinity,
                    height: 70.h,
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: context.colors.brown.withOpacity(.3),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // FIX: Wrapped the second child in an Expanded widget
        Expanded(
          child: BaseShimmerWidget(
            highlightColor: context.colors.grey,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 16.w, vertical: 16.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90.w,
                      height: 20.h,
                      padding: Dimens.cardPadding,
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    Gaps.vGap(8),
                    Container(
                      width: double.infinity,
                      height: 90.h,
                      padding: Dimens.cardPadding,
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    Gaps.vGap(16),
                    Container(
                      width: 90.w,
                      height: 20.h,
                      padding: Dimens.cardPadding,
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    Gaps.vGap(8),
                    Container(
                      width: double.infinity,
                      height: 90.h,
                      padding: Dimens.cardPadding,
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    Gaps.vGap(16),
                    Container(
                      width: 90.w,
                      height: 20.h,
                      padding: Dimens.cardPadding,
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    Gaps.vGap(8),
                    Container(
                      width: double.infinity,
                      height: 90.h,
                      padding: Dimens.cardPadding,
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}