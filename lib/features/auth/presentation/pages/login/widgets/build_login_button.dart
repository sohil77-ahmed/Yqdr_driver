part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginController controller;

  const BuildLoginButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
        title: "تسجيل الدخول",
        onTap: () => controller.onSubmit(context),
        color: context.colors.black,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
        borderRadius: 5.r,
        margin: EdgeInsets.zero,
        fontSize: 14.sp,
        height: 45.h,
    );
  }
}
