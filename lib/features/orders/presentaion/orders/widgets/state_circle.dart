part of 'orders_widgets_imports.dart';

class StateCircle extends StatelessWidget {
  final bool isActive;
  final bool done;
  final String? title;

  const StateCircle({
    super.key,
    required this.isActive,
    required this.done,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 40.h,
          child: Center(
            child: Container(
              width: isActive ? 40.w : 30.w,
              height: isActive ? 40.h : 30.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: done ? context.colors.green : context.colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: done ? context.colors.green : context.colors.grey,
                ),
              ),
              child: SvgPicture.asset(
                isActive ? Res.loadState : Res.check,
                colorFilter: ColorFilter.mode(
                  context.colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        if (title != null) ...[
          Gaps.vGap(6),
          Text(
            title!,
            style: AppTextStyle.s12_w500(color: context.colors.green)
                .copyWith(fontSize: 11.sp),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}
