part of 'account_info_imports.dart';

class AccountInfoController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
  final GlobalKey<CustomButtonState> btnKey2 = GlobalKey<CustomButtonState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final BaseBloc<BaseResponse<ProfileModel>?> profileBloc = BaseBloc();
  final BaseBloc<BaseResponse<dynamic>?> updateProfileBloc = BaseBloc();

  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();

  void getProfile() async {
    profileBloc.loadingState();
    final result = await GetProfileUseCase()(NoParams());
    profileBloc.successState(result);
    if (result?.data != null) {
      name.text = result?.data?.name ?? '';
      phone.text = result?.data?.phone ?? '';
      email.text = result?.data?.email ?? '';
    }
  }

  void updateProfile(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      updateProfileBloc.loadingState();
      final result = await UpdateProfileUseCase()(
        UpdateProfileParams(
          name: name.text,
          phone: phone.text,
          email: email.text,
        ),
      );
      updateProfileBloc.successState(result);
      if (result?.data != null && result != null) {
        AppSnackBar.showSimpleToast(msg: result.message ?? '');
        context.pop(true);
      }
    }
  }
}
