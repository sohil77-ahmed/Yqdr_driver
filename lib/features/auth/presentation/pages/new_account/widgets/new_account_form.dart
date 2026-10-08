part of 'new_account_widgets_imports.dart';

class NewAccountForm extends StatelessWidget {
  final NewAccountController controller;
  const NewAccountForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: controller.name,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            hint: "الاسم بالكامل",
            hintColor: context.colors.blackOpacity,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: SvgPicture.asset(
                Res.user,
                width: 18.w,
                height: 18.h,
                colorFilter: ColorFilter.mode(
                  context.colors.blackOpacity,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          GenericTextField(
            controller: controller.email,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.noValidate(),
            hint: "البريد الالكتروني",
            hintColor: context.colors.blackOpacity,
            margin: EdgeInsets.only(top: 8.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: SvgPicture.asset(
                Res.sms,
                width: 18.w,
                height: 18.h,
                colorFilter: ColorFilter.mode(
                  context.colors.blackOpacity,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          GenericTextField(
            controller: controller.phone,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(),
            hint: "رقم الهاتف",
            hintColor: context.colors.blackOpacity,
            maxLength: 8,
            margin: EdgeInsets.only(top: 8.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: SvgPicture.asset(
                Res.phone,
                width: 18.w,
                height: 18.h,
                colorFilter: ColorFilter.mode(
                  context.colors.blackOpacity,
                  BlendMode.srcIn,
                ),
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '+965',
                    style: AppTextStyle.s12_w600(color: context.colors.black)
                        .copyWith(fontSize: 12.sp),
                  ),
                  Gaps.hGap(8),
                  SvgPicture.asset(
                    Res.arab_flag,
                    width: 24.w,
                    height: 16.h,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: ObsValueConsumer(
              observable: controller.selectedCategory,
              builder: (context, selectedCategory) {
                return ObsValueConsumer(
                  observable: controller.categories,
                  builder: (context, categoriesList) {
                    return DropdownButtonFormField<CategoryModel>(
                      initialValue: selectedCategory,
                      items: categoriesList.map((category) {
                        return DropdownMenuItem<CategoryModel>(
                          value: category,
                          child: Text(
                            category.name ?? '',
                            style: AppTextStyle.s14_w400(
                                color: context.colors.black)
                                .copyWith(fontSize: 14.sp),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.selectedCategory.setValue(value);
                      },
                      hint: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "اختر نوع السيارة",
                            style: AppTextStyle.s12_w400(
                                    color: context.colors.blackOpacity)
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 24.r,
                        color: context.colors.black,
                      ),
                      decoration: CustomInputDecoration(
                        lang: context
                            .watch<DeviceCubit>()
                            .state
                            .model
                            .locale
                            .languageCode,
                        prefIcon: Padding(
                          padding: EdgeInsets.all(12.r),
                          child: SvgPicture.asset(
                            Res.carForm,
                            width: 18.w,
                            height: 18.h,
                            colorFilter: ColorFilter.mode(
                              context.colors.blackOpacity,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      dropdownColor: context.colors.white,
                      isExpanded: true,
                    );
                  },
                );
              },
            ),
          ),
          GenericTextField(
            controller: controller.carNumber,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            hint: "رقم السيارة",
            hintColor: context.colors.blackOpacity,
            margin: EdgeInsets.only(top: 8.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: SvgPicture.asset(
                Res.carNumber,
                width: 18.w,
                height: 18.h,
                colorFilter: ColorFilter.mode(
                  context.colors.blackOpacity,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          GenericTextField(
            controller: controller.iban,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            hint: "رقم IBAN",
            hintColor: context.colors.blackOpacity,
            margin: EdgeInsets.only(top: 8.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: SvgPicture.asset(
                Res.bank,
                width: 18.w,
                height: 18.h,
                colorFilter: ColorFilter.mode(
                  context.colors.blackOpacity,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: ObsValueConsumer(
              observable: controller.selectedPackage,
              builder: (context, selectedPackage) {
                return ObsValueConsumer(
                  observable: controller.packages,
                  builder: (context, packagesList) {
                    return DropdownButtonFormField<PackageModel>(
                      initialValue: selectedPackage,
                      items: packagesList.map((package) {
                        return DropdownMenuItem<PackageModel>(
                          value: package,
                          child: Text(
                            package.name ?? '',
                            style: AppTextStyle.s14_w400(
                                color: context.colors.black)
                                .copyWith(fontSize: 14.sp),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.selectedPackage.setValue(value);
                      },
                      hint: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "اختر الباقة",
                            style: AppTextStyle.s12_w400(
                                    color: context.colors.blackOpacity)
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 24.r,
                        color: context.colors.black,
                      ),
                      decoration: CustomInputDecoration(
                        lang: context
                            .watch<DeviceCubit>()
                            .state
                            .model
                            .locale
                            .languageCode,
                        prefIcon: Padding(
                          padding: EdgeInsets.all(12.r),
                          child: SvgPicture.asset(
                            Res.boxForm,
                            width: 18.w,
                            height: 18.h,
                            colorFilter: ColorFilter.mode(
                              context.colors.blackOpacity,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      dropdownColor: context.colors.white,
                      isExpanded: true,
                    );
                  },
                );
              },
            ),
          ),
          ObsValueConsumer(
            observable: controller.obscureText,
            builder: (context, obsText) {
              return GenericTextField(
                controller: controller.password,
                fieldTypes: FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                obscureText: !obsText,
                validate: (value) => value?.validateEmpty(),
                hint: "كلمة المرور",
                hintColor: context.colors.blackOpacity,
                margin: EdgeInsets.only(top: 8.h),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: SvgPicture.asset(
                    Res.security_safe,
                    width: 18.w,
                    height: 18.h,
                    colorFilter: ColorFilter.mode(
                      context.colors.blackOpacity,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () => controller.togglePassword(1),
                  child: Padding(
                    padding: EdgeInsets.all(12.r),
                    child: Icon(
                      obsText ? Icons.visibility : Icons.visibility_off,
                      size: 20.r,
                      color: context.colors.disableGray,
                    ),
                  ),
                ),
              );
            },
          ),
          ObsValueConsumer(
            observable: controller.obscureText2,
            builder: (context, obsText) {
              return GenericTextField(
                controller: controller.passwordConfirmation,
                fieldTypes: FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                obscureText: !obsText,
                validate: (value) => value?.validatePasswordConfirm(
                    pass: controller.password.text),
                hint: "تاكيد كلمة المرور",
                hintColor: context.colors.blackOpacity,
                margin: EdgeInsets.only(top: 8.h),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: SvgPicture.asset(
                    Res.security_safe,
                    width: 18.w,
                    height: 18.h,
                    colorFilter: ColorFilter.mode(
                      context.colors.blackOpacity,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () => controller.togglePassword(2),
                  child: Padding(
                    padding: EdgeInsets.all(12.r),
                    child: Icon(
                      obsText ? Icons.visibility : Icons.visibility_off,
                      size: 20.r,
                      color: context.colors.disableGray,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
