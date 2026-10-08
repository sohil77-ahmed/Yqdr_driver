part of 'splash_imports.dart';

class SplashController {
  void manipulateSaveData(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // var userStr = preferences.getString("user");
    bool? showOnboarding = preferences.getBool("onboarding");
    var token = preferences.getString(ApplicationConstants.keyToken);
    var lang = preferences.getString(ApplicationConstants.keyLanguage);
    bool? enableNotification = preferences.getBool(ApplicationConstants.keyEnableNotification);

    if (lang == null) {
      preferences.setString(ApplicationConstants.keyLanguage, 'ar');
      lang = 'ar';
    }
    if (enableNotification == null) {
      preferences.setBool(ApplicationConstants.keyEnableNotification, true);
    }

    final messaging = FirebaseMessaging.instance;
    context.read<DeviceCubit>().updateLanguage(lang == 'ar' ? const Locale('ar') : const Locale('en'));

    await Future.delayed(const Duration(seconds: 4));

    getIt<Utilities>().handleFcmTopic(context);
    unawaited(_resolvePushToken(messaging));

    final BaseBloc<BaseResponse<SettingsModel>?> settingsCubit = BaseBloc();

    settingsCubit.loadingState();
    final result = await SettingsUseCase()(NoParams());
    settingsCubit.successState(result);

    if (result != null && result.data?.fixing != true) {
      if (token != null) {
        GlobalState.instance.set(
          ApplicationConstants.keyToken,
          token,
        );
        context.pushReplacement(HomeScreen.path);
      } else if (showOnboarding ?? false) {
        context.pushReplacement(LoginScreen.path, extra: TermsModel(
          id: result.data?.terms?.id,
          title: result.data?.terms?.title,
          description: result.data?.terms?.description,
          icon: result.data?.terms?.icon,
          image: result.data?.terms?.image,
        ));
      } else {
        context.pushReplacement(OnboardingScreen.path);
      }
    } else {
      context.pushReplacement(FixingScreen.path);
    }
  }

  ObsValue<bool> showSplashLogo2 = ObsValue<bool>.withInit(true);

  void displaySplashLogo() async {
    await Future.delayed(const Duration(seconds: 2));
    showSplashLogo2.setValue(false);
  }

  Future<String?> _resolvePushToken(FirebaseMessaging messaging) async {
    final pushToken = await _getPushToken(messaging);
    GlobalState.instance.set(ApplicationConstants.fcmKeyToken, pushToken);
    return pushToken;
  }

  Future<String?> _getPushToken(FirebaseMessaging messaging) async {
    try {
      if (Platform.isIOS) {
        String? apnsToken = await messaging.getAPNSToken();
        if (apnsToken == null) {
          await Future.delayed(const Duration(seconds: 2));
          apnsToken = await messaging.getAPNSToken();

          if (apnsToken == null) {
            debugPrint(
                'APNS token is null (likely running on iOS Simulator). Skipping FCM.');
            return null;
          }
        }
      }

      final tokenFuture = messaging.getToken();
      return await tokenFuture
          .timeout(DurationConstants.connectTimeoutDuration);
    } catch (e) {
      debugPrint('splash FCM token fetch failed: $e');
      return null;
    }
  }
}
