part of 'widgets_imports.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  const NotificationItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colors.disableGray.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s14_w500(color: context.colors.black)
                      .copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                Gaps.vGap(13),
                Text(
                  subtitle,
                  style:
                      AppTextStyle.s12_w400(color: context.colors.blackOpacity)
                          .copyWith(fontSize: 12.sp),
                ),
              ],
            ),
          ),
          Gaps.hGap(12),
          Text(
            time,
            style: AppTextStyle.s12_w400(color: context.colors.blackOpacity)
                .copyWith(fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
