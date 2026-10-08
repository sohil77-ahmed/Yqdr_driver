part of 'forget_password_widgets_imports.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordController controller;
  const BuildForgetForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: GenericTextField(
        fieldTypes: FieldTypes.normal,
        type: TextInputType.phone,
        controller: controller.phone,
        action: TextInputAction.next,
        validate: (value) => value?.validatePhone(),
        hint: "رقم الهاتف",
        hintColor: context.colors.blackOpacity,
        maxLength: 8,
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          child: SvgPicture.asset(
            Res.phone,
            width: 20.w,
            height: 20.h,
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
    );
  }
}
