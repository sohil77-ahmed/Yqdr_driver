part of 'forget_password_imports.dart';

class ForgetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();

  TextEditingController phone = TextEditingController();

  final BaseBloc<BaseResponse<dynamic>?> forgetPasswordBloc = BaseBloc();

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      forgetPasswordBloc.loadingState();
      final result = await ForgetPasswordUseCase()(
        ForgetPasswordParams(
          phone: phone.text,
        ),
      );
      forgetPasswordBloc.successState(result);

      if (result != null && result.status == 1) {
        AppSnackBar.showSimpleToast(msg: result.message);
        context.pop();
      }
    }
  }
}
