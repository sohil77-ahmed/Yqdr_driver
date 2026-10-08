part of 'forget_password_widgets_imports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordController controller;

  const BuildForgetPasswordButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "تأكيد",
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
