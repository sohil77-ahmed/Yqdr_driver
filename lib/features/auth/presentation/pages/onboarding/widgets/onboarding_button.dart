part of 'onboarding_widgets_imports.dart';

class OnboardingButton extends StatelessWidget {
  final OnboardingController controller;
  const OnboardingButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.currentIndex,
      builder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: LoadingButton(
            title: index == controller.pages.length - 1
                ? 'ابدأ الآن'
                : 'التالي',
            onTap: () => controller.onNextPressed(context),
            color: context.colors.black,
            textColor: context.colors.white,
            btnKey: controller.btnKey,
            borderRadius: 5.r,
            margin: EdgeInsets.zero,
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
            height: 45.h,
          ),
        );
      }
    );
  }
}
