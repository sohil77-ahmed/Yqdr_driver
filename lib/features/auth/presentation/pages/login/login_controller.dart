part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  ObsValue<bool> obscureText = ObsValue<bool>.withInit(false);

  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();

  BaseBloc<BaseResponse<LoginResponseModel>?> loginCubit =
  BaseBloc<BaseResponse<LoginResponseModel>?>();

  void togglePassword() {
    obscureText.setValue(!obscureText.getValue());
  }

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      loginCubit.loadingState();

      final result = await LoginUseCase()(
        LoginParams(phone: phone.text, password: password.text),
      );

      if (result == null || result.status == 0 || result.data == null) {
        loginCubit.successState(result);
        return;
      }

      loginCubit.successState(result);

      GlobalState.instance
          .set(ApplicationConstants.keyToken, result.data?.token ?? '');

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(
          ApplicationConstants.keyToken, result.data?.token ?? '');

      if (result.data?.isActive == 1) {
        getIt<Utilities>().handleFcmTopic(context);
        context.pushReplacement(HomeScreen.path);
      } else {
        context.push(ActiveAccountScreen.path, extra: result.data?.userID);
      }
    }
  }
}
