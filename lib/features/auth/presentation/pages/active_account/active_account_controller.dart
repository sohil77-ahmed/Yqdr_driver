part of 'active_account_imports.dart';

class ActiveAccountController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  String? code;

  final BaseBloc<bool> codeCubit = BaseBloc(false);

  Timer? timer;
  ObsValue<int> remainingSeconds = ObsValue<int>.withInit(60);
  ObsValue<bool> isRunning = ObsValue<bool>.withInit(false);

  final BaseBloc<BaseResponse<LoginResponseModel>?> verifyOtp = BaseBloc();
  final BaseBloc<BaseResponse<LoginResponseModel>?> resendOtp = BaseBloc();

  void startTimer() {
    if (isRunning.getValue()) return;

    isRunning.setValue(true);
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds.getValue() > 0) {
        remainingSeconds.setValue(remainingSeconds.getValue() - 1);
      } else {
        isRunning.setValue(false);
        timer.cancel();
      }
    });
  }

  void onChanged(String value) {
    code = value;
    codeCubit.successState(value.length == 4);
  }

  void resendCode(int userId) async {
    if (remainingSeconds.getValue() == 0) {
      resendOtp.loadingState();
      final result = await ResendOtpUseCase()(userId);
      resendOtp.successState(result);
      AppSnackBar.showSimpleToast(msg: result?.message ?? '');
      remainingSeconds.setValue(60);
      startTimer();
    }
  }

  void onSubmit(BuildContext context, int userId) async {
    if (code == null || code!.length < 4) return;

    verifyOtp.loadingState();

    final result = await VerifyOtpUseCase()(
      VerifyOtpParams(userId: userId, otp: int.parse(code!)),
    );

    if (result == null || result.status == 0) {
      verifyOtp.successState(result);
      return;
    }

    verifyOtp.successState(result);

    GlobalState.instance
        .set(ApplicationConstants.keyToken, result.data?.token ?? '');

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(ApplicationConstants.keyToken, result.data?.token ?? '');

    context.push(HomeScreen.path);
  }
}
