part of 'widgets_imports.dart';

class EmptyNotificationsView extends StatelessWidget {
  const EmptyNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Res.empty_notification,
            width: 160.w,
            height: 160.h,
            fit: BoxFit.contain,
          ),
          Gaps.vGap24,
          Text(
            "لا يوجد لديك اي اشعارات!",
            style: AppTextStyle.s16_w500(color: context.colors.brown).copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gaps.vGap8,
          Text(
            "عندما يكون لديك إشعارات جديدة، ستراها هنا.",
            textAlign: TextAlign.center,
            style: AppTextStyle.s14_w400(color: context.colors.black).copyWith(
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
