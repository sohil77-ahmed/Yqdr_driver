part of 'login_widgets_imports.dart';

class LoginView extends StatelessWidget {
  final LoginController controller;

  const LoginView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "مرحبا بك في يقدر, سجل دخولك! 👋",
          style: AppTextStyle.s18_w700(color: context.colors.black)
              .copyWith(fontSize: 18.sp),
        ),
        Gaps.vGap(8),
        Text(
          "اكتب معلوماتك لتسجيل الدخول لحسابك ...",
          style: AppTextStyle.s13_w500(color: context.colors.grey)
              .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400),
        ),
        Gaps.vGap(16),
        BuildLoginForm(controller: controller),
        Gaps.vGap(8),
        BuildForgetPasswordView(
          bundle: false,
          text2: "نسيت كلمة المرور؟",
          onTap: () => context.push(ForgetPasswordScreen.path),
        ),
        Gaps.vGap(16),
        BuildLoginButton(controller: controller),
        Gaps.vGap(16),
        BuildForgetPasswordView(
          bundle: true,
          text1: 'ليس لديك حساب؟',
          text2: ' إنشاء حساب جديد',
          onTap: () => context.push(NewAccountScreen.path),
        ),
      ],
    );
  }
}
