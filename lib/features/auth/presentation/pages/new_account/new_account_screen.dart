part of 'new_account_imports.dart';

class NewAccountScreen extends StatefulWidget {
  static var name = 'newAccount';
  static var path = '/newAccount';

  const NewAccountScreen({super.key});

  @override
  State<NewAccountScreen> createState() => _NewAccountScreenState();
}

class _NewAccountScreenState extends State<NewAccountScreen> {
  final NewAccountController controller = NewAccountController();

  @override
  void initState() {
    controller.getRegisterData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      hasAppBar: true,
      appBarTitle: 'انشاء حساب جديد',
      body: BaseBlocBuilder<BaseResponse<RegisterDataModel>?>(
        bloc: controller.registerDataBloc,
        onSuccessWidget: (data) {
          return SingleChildScrollView(
            padding: Dimens.appPadding,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "أضف بياناتك لإنشاء حساب جديد",
                    style: AppTextStyle.s18_w700(color: context.colors.black)
                        .copyWith(fontSize: 18.sp),
                  ),
                  Gaps.vGap(8),
                  Text(
                    "لإنشاء حساب جديد معنا برجاء اضافة بعض معلوماتك ليتم التعرف اليكم.",
                    style: AppTextStyle.s13_w500(color: context.colors.grey)
                        .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400),
                  ),
                  Gaps.vGap(16),
                  NewAccountForm(controller: controller),
                  Gaps.vGap(16),
                  TermsOfUseRow(controller: controller, terms: data?.data?.terms,),
                  Gaps.vGap(16),
                  NewAccountButton(controller: controller),
                  Gaps.vGap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ActionTextRow(
                        text1: 'لديك حساب بالفعل؟',
                        text2: ' تسجيل الدخول',
                        bundle: true,
                        onTap: () => context.pop(),
                        underline: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

