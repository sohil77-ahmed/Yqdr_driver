part of 'onboarding_widgets_imports.dart';

class OnboardingDot extends StatelessWidget {
  final int index;
  const OnboardingDot({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final activeColor = context.colors.brown;
    final inactiveColor = context.colors.disableGray;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12.w,
          height: 12.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 0 ? activeColor : inactiveColor,
          ),
        ),
        Gaps.hGap(4),
        Container(
          width: 12.w,
          height: 12.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 1 ? activeColor : inactiveColor,
          ),
        ),
        Gaps.hGap(4),
        Container(
          width: 12.w,
          height: 12.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 2 ? activeColor : inactiveColor,
          ),
        ),
      ],
    );
  }
}
