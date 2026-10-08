part of 'onboarding_widgets_imports.dart';

class OnboardingHeader extends StatelessWidget {
  final OnboardingController controller;
  const OnboardingHeader({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SkipButton(controller: controller),
          SvgPicture.asset(
            Res.main_logo_black,
            width: 50.w,
            height: 50.h,
          ),
          SizedBox(width: 60.w),
        ],
      ),
    );
  }
}
