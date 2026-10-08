import 'package:base_structure/core/constants/gaps.dart';
import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthHeaderTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const AuthHeaderTitleWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s18_w700(color: context.colors.black)
              .copyWith(fontSize: 18.sp),
        ),
        Gaps.vGap(4),
        Text(
          subTitle,
          style: AppTextStyle.s14_w400(color: context.colors.blackOpacity)
              .copyWith(fontSize: 13.sp, height: 1.h),
        ),
      ],
    );
  }
}
