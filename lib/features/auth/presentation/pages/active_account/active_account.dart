part of 'active_account_imports.dart';

class ActiveAccountScreen extends StatefulWidget {
  static var name = 'active_account';
  static var path = '/active_account';
  final int userId;
  const ActiveAccountScreen({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccountScreen> {
  final ActiveAccountController controller = ActiveAccountController();

  @override
  void initState() {
    controller.startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      hasAppBar: true,
      appBarTitle: 'تأكيد رقم الهاتف',
      body: Padding(
        padding: Dimens.appPadding,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Image.asset(
                Res.active_account,
                height: 200.h,
                width: 200.w,
                fit: BoxFit.contain,
              ),
            ),
            Gaps.vGap(24),
            const AuthHeaderTitleWidget(
              title: "تأكيد رقم الهاتف",
              subTitle:
                  "برجاء إدخال الرقم المرسل اليكم عبر الهاتف المحمول لتأكيد رقم الهاتف والدخول الى حسابك.",
            ),
            Gaps.vGap(16),
            PinFieldWidget(onChanged: controller.onChanged),
            BuildActiveButton(controller: controller,
              userId: widget.userId,
            ),
            Gaps.vGap(16),
            ResendCodeRow(controller: controller,userID: widget.userId,),
          ],
        ),
      ),
    );
  }
}
