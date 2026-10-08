part of 'account_info_imports.dart';

class AccountInfoScreen extends StatefulWidget {
  static final String name = 'account_info';
  static final String path = '/account_info';

  const AccountInfoScreen({super.key});

  @override
  State<AccountInfoScreen> createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {
  final AccountInfoController controller = AccountInfoController();

  @override
  void initState() {
    controller.getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'تعديل الملف الشخصي'),
      body: BaseBlocBuilder(
          bloc: controller.profileBloc,
          onSuccessWidget: (data) {
            return SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                padding: Dimens.appPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120.r,
                      height: 120.r,
                      child: Image.asset(
                        Res.profile_avatar,
                        width: 120.r,
                        height: 120.r,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Gaps.vGap(16),
                    AccountForm(controller: controller,),
                    Gaps.vGap(16),
                    LoadingButton(
                      title: "تغيير كلمة المرور",
                      onTap: () => context.push(ChangePasswordScreen.path),
                      color: context.colors.brown.withOpacity(.1),
                      textColor: context.colors.brown,
                      btnKey: controller.btnKey,
                      borderRadius: 5.r,
                      margin: EdgeInsets.zero,
                      fontSize: 14.sp,
                      height: 45.h,
                    ),
                    Gaps.vGap(8),
                    LoadingButton(
                      title: "حفظ التعديلات",
                      onTap: () => controller.updateProfile(context),
                      color: context.colors.black,
                      textColor: context.colors.white,
                      btnKey: controller.btnKey2,
                      borderRadius: 5.r,
                      margin: EdgeInsets.zero,
                      fontSize: 14.sp,
                      height: 45.h,
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
