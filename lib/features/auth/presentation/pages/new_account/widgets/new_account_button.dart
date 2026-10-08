part of 'new_account_widgets_imports.dart';

class NewAccountButton extends StatelessWidget {
  final NewAccountController controller;
  const NewAccountButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "انشاء حساب جديد",
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
