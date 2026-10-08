part of 'active_account_widgets_imports.dart';

class BuildActiveButton extends StatelessWidget {
  final ActiveAccountController controller;
  final int userId;

  const BuildActiveButton({super.key, required this.controller, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.codeCubit,
      onSuccessWidget: (data) {
        return AbsorbPointer(
          absorbing: !data,
          child: LoadingButton(
              title: "تأكيد",
              onTap: () => controller.onSubmit(context, userId),
              color: !data ? context.colors.greyWhite : context.colors.black,
              textColor: !data ? context.colors.black : context.colors.white,
              btnKey: controller.btnKey,
              margin: EdgeInsets.zero,
              borderRadius: 5.r,
              fontSize: 15.sp,
              height: 45.h),
        );
      },
    );
  }
}
