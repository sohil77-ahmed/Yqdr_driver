part of 'onboarding_widgets_imports.dart';

class OnboardingSinglePage extends StatelessWidget {
  final String image;
  final String title;
  final String supTitle;
  final int index;
  const OnboardingSinglePage(
      {super.key,
      required this.image,
      required this.title,
      required this.supTitle, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 280.h,
          width: 280.w,
          fit: BoxFit.contain,
        ),
        Gaps.vGap(24),
        OnboardingDot(index: index),
        Gaps.vGap(16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyle.s24_w700(
            color: context.colors.black,
          ).copyWith(fontSize: 21.sp),
        ),
        Gaps.vGap(8),
        Text(
          supTitle,
          textAlign: TextAlign.center,
          style: AppTextStyle.s16_w400(
            color: context.colors.grey,
          ).copyWith(fontSize: 14.sp),
        ),
      ],
    );
  }
}
