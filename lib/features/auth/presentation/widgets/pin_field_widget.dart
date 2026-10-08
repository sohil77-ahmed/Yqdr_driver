import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final EdgeInsetsGeometry? margin;

  const PinFieldWidget({
    super.key,
    required this.onChanged,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PinCodeTextField(
        length: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        showCursor: false,
        beforeTextPaste: (text) => false,
        appContext: context,
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        backgroundColor: Colors.transparent,
        animationType: AnimationType.fade,
        textStyle: AppTextStyle.s18_w500(color: context.colors.black)
            .copyWith(fontSize: 18.sp),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8.r),
          fieldHeight: 44.h,
          fieldWidth: 55.w,
          activeBorderWidth: 0,
          inactiveBorderWidth: 0,
          inactiveColor: context.colors.greyWhite,
          activeColor: context.colors.greyWhite,
          selectedColor: context.colors.grey,
          selectedFillColor: context.colors.greyWhite,
          inactiveFillColor: context.colors.greyWhite,
          activeFillColor: context.colors.greyWhite,
          disabledColor: context.colors.black,
          fieldOuterPadding: EdgeInsets.symmetric(horizontal: 4.w),
        ),
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
      ),
    );
  }
}
