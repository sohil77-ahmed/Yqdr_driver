part of 'active_account_widgets_imports.dart';

class ResendCodeRow extends StatelessWidget {
  final ActiveAccountController controller;
  final int userID;
  const ResendCodeRow({super.key, required this.controller, required this.userID});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.remainingSeconds,
        builder: (context, seconds) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'لم يصلك الرمز بعد؟',
                style: AppTextStyle.s14_w600(color: context.colors.blackOpacity)
                    .copyWith(fontSize: 14.sp),
              ),
              if (seconds != 0)
              Text(
                ' (${seconds.toString()})',
                style: AppTextStyle.s14_w600(color: context.colors.blackOpacity)
                    .copyWith(fontSize: 14.sp),
              ),
              if (seconds == 0)
                GestureDetector(
                  onTap: () => controller.resendCode(userID),
                  child: Text(
                    ' إعادة إرسال الرمز',
                    style: AppTextStyle.s14_w600(color: context.colors.primary)
                        .copyWith(fontSize: 14.sp),
                  ),
                ),
            ],
          );
        });
  }
}
