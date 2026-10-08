import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAlertDialog extends StatelessWidget {
  final String message;
  final String description;
  final VoidCallback onAction;
  final String actionTitle;
  final String cancelTitle;

  const CustomAlertDialog({
    super.key,
    required this.message,
    required this.description,
    required this.onAction,
    this.actionTitle = 'تأكيد',
    this.cancelTitle = 'إلغاء',
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: context.colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyle.s16_w500(color: context.colors.black)
                  .copyWith(fontSize: 16.sp),
            ),
            if (description.isNotEmpty)...[
              Gaps.vGap(8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: AppTextStyle.s14_w400(color: context.colors.black)
                    .copyWith(fontSize: 14.sp),
              ),
            ],
            Gaps.vGap(24),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      onAction();
                    },
                    borderRadius: BorderRadius.circular(8.r),
                    child: Container(
                      height: 45.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        actionTitle,
                        style:
                            AppTextStyle.s14_w500(color: context.colors.white),
                      ),
                    ),
                  ),
                ),
                Gaps.hGap(12),
                Expanded(
                  child: InkWell(
                    onTap: () => context.pop(),
                    borderRadius: BorderRadius.circular(8.r),
                    child: Container(
                      height: 45.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        cancelTitle,
                        style: AppTextStyle.s14_w500(color: context.colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
