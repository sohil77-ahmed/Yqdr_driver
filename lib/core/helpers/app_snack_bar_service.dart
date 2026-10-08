import 'package:base_structure/core/errors/base_error.dart';
import 'package:base_structure/core/errors/unknown_error.dart';
import 'package:base_structure/core/localization/translate.dart';
import 'package:base_structure/core/theme/colors/app_colors.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

enum ToastType { success, error, info }

abstract class AppSnackBar {
  const AppSnackBar._();

  static Map<ToastType, Color> toastBgColors = {
    ToastType.success: AppColors.snackBarGreenSuccess, // this is white
    ToastType.error: AppColors.snackBarGreenSuccess,   // now also white
    ToastType.info: AppColors.snackBarGreenSuccess,    // now also white
  };

  static void showSuccessSnackBar(String message) {
    _show(
      type: ToastificationType.success,
      message: message,
      backgroundColor: AppColors.snackBarGreenSuccess,
      foregroundColor: AppColors.fixedColors.black,
    );
  }

  static Future<void> showErrorSnackBar({
    required BaseError error,
    VoidCallback? callback,
    String? callbackMessage,
  }) async {
    _show(
      type: ToastificationType.error,
      message: error.message,
      backgroundColor: AppColors.snackBarGreenSuccess,
      foregroundColor: AppColors.fixedColors.black,
      callback: callback,
      callbackMessage: callbackMessage,
    );
  }

  static void showUnknownErrorSnackBar({VoidCallback? callback}) {
    showErrorSnackBar(error: UnknownError(), callback: callback);
  }

  static void showWarningSnackBar({required String message}) {
    _show(
      type: ToastificationType.warning,
      message: message,
      backgroundColor: AppColors.snackBarGreenSuccess,
      foregroundColor: AppColors.fixedColors.black,
    );
  }

  static void showSimpleToast({
    required String msg,
    Color? color,
    Color? textColor,
    ToastType type = ToastType.error,
  }) {
    // Map your custom enum to ToastificationType
    ToastificationType tType = ToastificationType.error;
    if (type == ToastType.success) tType = ToastificationType.success;
    if (type == ToastType.info) tType = ToastificationType.info;

    _show(
      type: tType,
      message: msg,
      // Default to the white background and black text if nothing is passed
      backgroundColor: color ?? toastBgColors[type] ?? AppColors.snackBarGreenSuccess,
      foregroundColor: textColor ?? AppColors.fixedColors.black,
    );
  }

  static void _show({
    required ToastificationType type,
    required String message,
    required Color backgroundColor,
    required Color foregroundColor,
    VoidCallback? callback,
    String? callbackMessage,
  }) {
    toastification.dismissAll();

    toastification.show(
      type: type,
      style: ToastificationStyle.flat,
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 300),
      description: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                message,
                style: AppTextStyle.s14_w400(
                  color: foregroundColor,
                ).copyWith(fontSize: 14.sp),
                overflow: TextOverflow.visible,
              ),
            ),
          ),
          if (callback != null) const SizedBox(width: 8),
          if (callback != null)
            InkWell(
              onTap: callback,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    callbackMessage ?? Translate.s.retry,
                    style: AppTextStyle.s14_w400(color: foregroundColor),
                  ),
                  Container(
                    width: (callbackMessage?.length ?? 5) * 10.0,
                    height: 1,
                    color: foregroundColor,
                  )
                ],
              ),
            ),
        ],
      ),
      showIcon: false,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      borderSide: BorderSide(color: backgroundColor),
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [
        BoxShadow(
          color: Color(0x14000000),
          blurRadius: 12,
          offset: Offset(0, 4),
        ),
      ],
      showProgressBar: false,
      closeOnClick: true,
      dragToClose: true,
      pauseOnHover: true,
      applyBlurEffect: false,
      closeButton: const ToastCloseButton(
        showType: CloseButtonShowType.none,
      ),
    );
  }
}