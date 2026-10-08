part of 'profile_imports.dart';

class ProfileController {
  final ObsValue<String> selectedLang = ObsValue<String>.withInit('ar');
  final ObsValue<bool> isNotify = ObsValue<bool>.withInit(false);

  final BaseBloc<BaseResponse<AccountResponseModel>?> profileBloc = BaseBloc();
  final BaseBloc<BaseResponse<dynamic>?> logoutBloc = BaseBloc();
  final BaseBloc<BaseResponse<dynamic>?> deleteAccountBloc = BaseBloc();

  void switchLang(String lang) {
    selectedLang.setValue(lang);
  }

  void switchNotify(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNotify.setValue(!isNotify.getValue());
    prefs.setBool(ApplicationConstants.keyEnableNotification, isNotify.getValue());
    getIt<Utilities>().handleFcmTopic(context);
  }

  void getAccount() async {
    profileBloc.loadingState();
    final result = await GetAccountUseCase ()(NoParams());
    profileBloc.successState(result);
  }


  void logout(BuildContext context) async {
    logoutBloc.loadingState();
    final result = await LogoutUseCase()(NoParams());
    logoutBloc.successState(result);

    if (result != null && result.status == 1) {
      AppSnackBar.showSimpleToast(msg: result.message);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove(ApplicationConstants.keyToken);
      GlobalState.instance.set(ApplicationConstants.keyToken, null);
      getIt<Utilities>().handleFcmTopic(context);
      context.pushReplacement(LoginScreen.path);
    }
  }

  void deleteAccount(BuildContext context) async {
    deleteAccountBloc.loadingState();
    final result = await DeleteAccountUseCase()(NoParams());
    deleteAccountBloc.successState(result);

    if (result != null && result.status == 1) {
      AppSnackBar.showSimpleToast(msg: result.message);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove(ApplicationConstants.keyToken);
      GlobalState.instance.set(ApplicationConstants.keyToken, null);
      context.pushReplacement(LoginScreen.path);
    }
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
            message: "هل انت متاكد من رغبتك في تسجيل الخروج",
            description: "",
            onAction: () => logout(context),
          );
        }
    );
  }

  void showDeleteAccountDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
            message: "هل انت متاكد من رغبتك في حذف الحساب",
            description: "",
            onAction: () => deleteAccount(context),
          );
        }
    );
  }

  Future<void> sendEmail(String emailAddress) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );

    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      print('Could not launch email app for $emailAddress');
    }
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );

    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      print('Could not launch phone app for $phoneNumber');
    }
  }

  void changeLanguage(BuildContext context) {
    final locale = Locale(selectedLang.getValue());
    context.read<DeviceCubit>().updateLanguage(locale);
    getIt<SharedPreferences>().setString(ApplicationConstants.keyLanguage, selectedLang.getValue());
    getIt<Utilities>().handleFcmTopic(context);

    Navigator.of(context).popUntil((route) => route.isFirst);
    context.push(HomeScreen.path, extra: 0);
  }

// late ProfileRequester _profileRequester ;
//
// ProfileController(int userId){
//   _profileRequester = ProfileRequester(userId: userId);
//   _profileRequester.request();
// }
}
