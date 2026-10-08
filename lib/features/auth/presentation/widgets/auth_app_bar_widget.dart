import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AuthAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Function()? onBack;
  final bool showBack;
  const AuthAppBarWidget({super.key, this.title, this.onBack, this.showBack = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: title != null
          ? Text(
              title ?? "",
              style: AppTextStyle.s20_w500(color: context.colors.black)
                  .copyWith(fontSize: 20.sp),
            )
          : null,
      backgroundColor: Colors.transparent,
      leading: Offstage(
        offstage: !showBack,
        child: InkWell(
          onTap: onBack ?? () => context.pop(),
          child: Icon(
            Icons.arrow_back,
            size: 24.r,
            color: context.colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
