part of 'change_password_imports.dart';

class ChangePasswordController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  BaseBloc<BaseResponse<dynamic>?> resetPasswordBloc = BaseBloc();

  ObsValue<bool> obscureText1 = ObsValue<bool>.withInit(false);
  ObsValue<bool> obscureText2 = ObsValue<bool>.withInit(false);
  ObsValue<bool> obscureText3 = ObsValue<bool>.withInit(false);

  final TextEditingController oldPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController newPasswordConfirmation = TextEditingController();


  void togglePassword(int index) {
    if (index == 1) {
      obscureText1.setValue(!obscureText1.getValue());
    } else if (index == 2) {
      obscureText2.setValue(!obscureText2.getValue());
    } else if (index == 3) {
      obscureText3.setValue(!obscureText3.getValue());
    }
  }

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      resetPasswordBloc.loadingState();
      final result = await ResetPasswordUseCase()(
        ResetPasswordParams(
            oldPassword: oldPassword.text,
            newPassword: newPassword.text,
            newPasswordConfirmation: newPasswordConfirmation.text
        ),
      );
      resetPasswordBloc.successState(result);
      if (result != null) {
        AppSnackBar.showSimpleToast(msg: result.message);
        context.pop();
      }
    }
  }
}
