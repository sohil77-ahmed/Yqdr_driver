part of 'new_account_imports.dart';

class NewAccountController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController carNumber = TextEditingController();
  final TextEditingController iban = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController passwordConfirmation = TextEditingController();

  ObsValue<bool> obscureText = ObsValue<bool>.withInit(false);
  ObsValue<bool> obscureText2 = ObsValue<bool>.withInit(false);
  ObsValue<bool> checkTermsOfUse = ObsValue<bool>.withInit(false);

  ObsValue<CategoryModel?> selectedCategory = ObsValue<CategoryModel?>.withInit(null);
  ObsValue<PackageModel?> selectedPackage = ObsValue<PackageModel?>.withInit(null);

  ObsValue<List<CategoryModel>> categories = ObsValue<List<CategoryModel>>.withInit([]);
  ObsValue<List<PackageModel>> packages = ObsValue<List<PackageModel>>.withInit([]);

  BaseBloc<BaseResponse<RegisterDataModel>?> registerDataBloc = BaseBloc();
  BaseBloc<BaseResponse<LoginResponseModel>?> registerBloc = BaseBloc();

  void togglePassword(int id) {
    if (id == 1) {
      obscureText.setValue(!obscureText.getValue());
    } else {
      obscureText2.setValue(!obscureText2.getValue());
    }
  }

  void toggleTermsCheckBox() {
    checkTermsOfUse.setValue(!checkTermsOfUse.getValue());
  }

  void getRegisterData() async {
    registerDataBloc.loadingState();
    final result = await GetRegisterDataUseCase()(NoParams());
    if (result?.data != null) {
      categories.setValue(result?.data?.categories ?? []);
      packages.setValue(result?.data?.packages ?? []);
    }
    registerDataBloc.successState(result);
  }

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {


      if (selectedCategory.getValue() == null) {
        AppSnackBar.showSimpleToast(msg: 'يجب تحديد نوع السيارة');
        return;
      }

      if (selectedPackage.getValue() == null) {
        AppSnackBar.showSimpleToast(msg: 'يجب اختيار الباقة');
        return;
      }

      if (checkTermsOfUse.getValue() != true) {
        AppSnackBar.showSimpleToast(msg: 'يجب الموافقة على الشروط والآحكام');
        return;
      }
      
      registerBloc.loadingState();
      final result = await RegisterUseCase()(RegisterParams(
          name: name.text,
          email: email.text,
          phone: phone.text,
          categoryId: selectedCategory.getValue()?.id ?? 0,
          carNumber: carNumber.text,
          iban: iban.text,
          packageId: selectedPackage.getValue()?.id ?? 0,
          password: password.text,
          confirmPassword: passwordConfirmation.text,
      ),
      );
      registerBloc.successState(result);
      
      if (result != null && result.status == 1) {
        context.push(ActiveAccountScreen.path, extra: result.data?.userID);
      }
    }
  }
}

