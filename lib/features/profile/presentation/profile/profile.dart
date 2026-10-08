part of 'profile_imports.dart';

class ProfileScreen extends StatefulWidget {
  static final String name = 'profile';
  static final String path = '/profile';
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  late ProfileController controller = ProfileController();

  @override
  void initState() {
    controller.getAccount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseBlocBuilder(
          bloc: controller.profileBloc,
          onLoadingWidget: (context) => ProfileLoadingView(),
          onSuccessWidget: (data) {
            return Column(
              children: [
                ProfileHeader(
                  info: data?.data?.userInfo,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: Dimens.cardPadding,
                    child: Column(
                      children: [
                        LabelSettings(title: 'طلباتي'),
                        Gaps.vGap(8),
                        Container(
                          width: double.infinity,
                          padding: Dimens.cardPadding,
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: context.colors.greyWhite),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    context.colors.disableGray.withOpacity(.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              SettingRow(
                                assetName: Res.completed_ordere,
                                settingName: 'الطلبات المكتملة',
                                isContact: false,
                                onTap: () => context.push(OrdersScreen.path,
                                    extra: "completed"),
                              ),
                            ],
                          ),
                        ),
                        Gaps.vGap(16),
                        LabelSettings(title: 'إدارة حسابي'),
                        Gaps.vGap(8),
                        Container(
                          width: double.infinity,
                          padding: Dimens.cardPadding,
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: context.colors.greyWhite),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    context.colors.disableGray.withOpacity(.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              SettingRow(
                                  assetName: Res.user_info,
                                  settingName: 'معلومات الحساب',
                                  isContact: false,
                                  onTap: () async {
                                    final result = await context
                                        .push(AccountInfoScreen.path);
                                    if (result == true) {
                                      controller.getAccount();
                                    }
                                  }),
                            ],
                          ),
                        ),
                        Gaps.vGap(16),
                        LabelSettings(title: 'الاعدادت'),
                        Gaps.vGap(8),
                        Container(
                          width: double.infinity,
                          padding: Dimens.cardPadding,
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: context.colors.greyWhite),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    context.colors.disableGray.withOpacity(.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              SettingRow(
                                  assetName: Res.change_lang,
                                  settingName: 'لغة التطبيق',
                                  isContact: false,
                                  onTap: () {
                                    showLanguagePickerSheet(
                                        context, controller);
                                  }),
                              Gaps.vGap(4),
                              ObsValueConsumer(
                                  observable: controller.isNotify,
                                  builder: (context, value) {
                                    return SettingRow(
                                      assetName: Res.bell,
                                      settingName: 'الاشعارات',
                                      isNotification: true,
                                      switchValue: value,
                                      onSwitchChanged: (value) {
                                        controller.switchNotify(context);
                                      },
                                      isContact: false,
                                      onTap: () {},
                                    );
                                  }),
                            ],
                          ),
                        ),
                        Gaps.vGap(16),
                        LabelSettings(title: 'كن على تواصل معنا'),
                        Gaps.vGap(8),
                        Container(
                          width: double.infinity,
                          padding: Dimens.cardPadding,
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: context.colors.greyWhite),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    context.colors.disableGray.withOpacity(.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SettingRow(
                                  assetName: Res.sendMessage,
                                  settingName: 'ارسال رسالة',
                                  isContact: true,
                                  onTap: () {
                                    controller.sendEmail(
                                        data?.data?.contact?.email ?? '');
                                  }),
                              SettingRow(
                                  assetName: Res.phone,
                                  settingName: 'اتصل بنا',
                                  isContact: true,
                                  onTap: () {
                                    controller.makePhoneCall(
                                        data?.data?.contact?.phone ?? '');
                                  }),
                              SettingRow(
                                  assetName: Res.contactUs,
                                  settingName: 'تواصل معنا',
                                  isContact: true,
                                  onTap: () {}),
                            ],
                          ),
                        ),
                        Gaps.vGap(16),
                        LabelSettings(title: 'عن يقدر'),
                        Gaps.vGap(8),
                        Container(
                          width: double.infinity,
                          padding: Dimens.cardPadding,
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: context.colors.greyWhite),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    context.colors.disableGray.withOpacity(.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                          child: ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              separatorBuilder: (context, index) =>
                                  Gaps.vGap(4),
                              itemCount: data?.data?.pages?.length ?? 0,
                              itemBuilder: (context, index) {
                                final item = data?.data?.pages?[index];
                                return SettingRow(
                                  assetName: '',
                                  asset2Name: item?.icon,
                                  settingName: item?.title ?? '',
                                  onTap: () => context.push(
                                    TermsScreen.path,
                                    extra: item,
                                  ),
                                  isContact: false,
                                );
                              }),
                        ),
                        Gaps.vGap(16),
                        Container(
                          width: double.infinity,
                          padding: Dimens.cardPadding,
                          decoration: BoxDecoration(
                            color: context.colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: context.colors.greyWhite),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    context.colors.disableGray.withOpacity(.2),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              SettingRow(
                                assetName: Res.signOut,
                                settingName: 'تسجيل الخروج',
                                isContact: false,
                                onTap: () =>
                                    controller.showLogoutDialog(context),
                              ),
                              Gaps.vGap(4),
                              SettingRow(
                                assetName: Res.trash2,
                                settingName: 'حذف الحساب',
                                isContact: false,
                                onTap: () =>
                                    controller.showDeleteAccountDialog(context),
                              ),
                            ],
                          ),
                        ),
                        Gaps.vGap(16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'النسخة رقم ${data?.data?.version ?? ''}',
                              style: AppTextStyle.s14_w500(
                                      color: context.colors.grey)
                                  .copyWith(fontSize: 14.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

/*
                  RequesterConsumer(
                    requester: controller.profileRequester,
                    successBuilder: (context, data, isLoading) {
                      return Column(
                        children: [
                          // Profile options list...
                        ],
                      );
                    },
                    loadingBuilder: (context) {
                      return const Center(child: CircularProgressIndicator());
                    },
                    failureBuilder: (context, error, callback) {
                      return Center(
                        child: TextButton(
                          onTap: callback,
                          child: Text(error.message ?? 'إعادة المحاولة'),
                        ),
                      );
                    },
                  ),
                  */
