part of 'forget_password_imports.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static var name = 'forget_password';
  static var path = '/forget_password';
  const ForgetPasswordScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPasswordScreen> {
  final ForgetPasswordController controller = ForgetPasswordController();
  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      hasAppBar: true,
      appBarTitle: 'نسيت كلمة المرور؟',
      body: Padding(
        padding: Dimens.appPadding,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Image.asset(
                Res.forget_password,
                height: 200.h,
                width: 200.w,
                fit: BoxFit.contain,
              ),
            ),
            Gaps.vGap(24),
            const AuthHeaderTitleWidget(
              title: "تأكيد رقم الهاتف",
              subTitle:
                  "برجاء إدخال رقم الهاتف المحمول لتأكيد رقم الهاتف والدخول الى حسابك.",
            ),
            Gaps.vGap(16),
            BuildForgetForm(
              controller: controller,
            ),
            Gaps.vGap(16),
            BuildForgetPasswordButton(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
