part of 'change_password_imports.dart';

class ChangePasswordScreen extends StatelessWidget {
  static final String name = 'change_password';
  static final String path = '/change_password';

  final ChangePasswordController controller = ChangePasswordController();
  ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: DefaultAppBar(title: 'تغيير كلمة المرور'),
      body: SingleChildScrollView(
        padding: Dimens.appPadding,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'إعادة تعيين كلمة المرور',
                style: AppTextStyle.s18_w500(color: context.colors.black)
                    .copyWith(fontSize: 18.sp),
              ),
              Gaps.vGap(4),
              Text(
                'برجاء إدخال الرقم المرسل اليكم عبر الهاتف المحمول لتأكيد رقم الهاتف والدخول الى حسابك.',
                style: AppTextStyle.s14_w400(color: context.colors.grey)
                    .copyWith(fontSize: 14.sp),
              ),
              Gaps.vGap(24),
              ChangePasswordForm(controller: controller),
              Gaps.vGap(16),
              LoadingButton(
                title: "حفظ التعديلات",
                onTap: () => controller.onSubmit(context),
                color: context.colors.black,
                textColor: context.colors.white,
                btnKey: controller.btnKey,
                borderRadius: 5.r,
                margin: EdgeInsets.zero,
                fontSize: 14.sp,
                height: 45.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
