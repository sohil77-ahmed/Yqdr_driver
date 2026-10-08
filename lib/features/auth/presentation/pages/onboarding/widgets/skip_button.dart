part of 'onboarding_widgets_imports.dart';

class SkipButton extends StatelessWidget {
  final OnboardingController controller;
  const SkipButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40.r),
      onTap: () => controller.onSkip(context),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),
        decoration: BoxDecoration(
          color: context.colors.secondary,
          borderRadius: BorderRadius.circular(40.r),
          border: Border.all(color: context.colors.primary),
        ),
        child: Text(
          'تخطي',
          style: AppTextStyle.s12_w700(
            color: context.colors.primary,
          ).copyWith(fontSize: 12.sp),
        ),
      ),
    );
  }
}
