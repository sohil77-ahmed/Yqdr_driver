part of 'fixing_widgets_imports.dart';

class FixingContentWidget extends StatelessWidget {
  const FixingContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.engineering_rounded,
          color: context.colors.brown,
          size: 120.r,
        ),
        Gaps.vGap(16),
        Text(
          "نقوم ببعض الإصلاحات!",
          style: AppTextStyle.s20_w500(color: context.colors.black)
              .copyWith(fontSize: 22.sp),
          textAlign: TextAlign.center,
        ),
        Gaps.vGap(12),
        Text(
          "نعمل حالياً على تحديث التطبيق وإضافة ميزات جديدة لتحسين تجربتك. يرجى المحاولة مرة أخرى بعد قليل.",
          style: AppTextStyle.s14_w400(color: context.colors.grey)
              .copyWith(fontSize: 14.sp, height: 1.5),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
