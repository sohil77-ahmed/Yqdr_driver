part of 'widgets_imports.dart';

class ChangePasswordForm extends StatelessWidget {
  final ChangePasswordController controller;
  const ChangePasswordForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          ObsValueConsumer(
            observable: controller.obscureText1,
            builder: (context, obsText) {
              return GenericTextField(
                controller: controller.oldPassword,
                fieldTypes: FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: context.colors.greyWhite,
                obscureText: !obsText,
                validate: (value) => value?.validateEmpty(),
                hint: "كلمة المرور الحالية",
                hintColor: context.colors.blackOpacity,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: SvgPicture.asset(
                    Res.security_safe,
                    width: 20.w,
                    height: 20.h,
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
                controller: controller.newPassword,
                fieldTypes: FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: context.colors.greyWhite,
                obscureText: !obsText,
                validate: (value) => value?.validateEmpty(),
                hint: "كلمة المرور الجديدة",
                hintColor: context.colors.blackOpacity,
                margin: EdgeInsets.only(top: 8.h),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: SvgPicture.asset(
                    Res.security_safe,
                    width: 20.w,
                    height: 20.h,
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
          ObsValueConsumer(
            observable: controller.obscureText3,
            builder: (context, obsText) {
              return GenericTextField(
                controller: controller.newPasswordConfirmation,
                fieldTypes: FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                fillColor: context.colors.greyWhite,
                obscureText: !obsText,
                validate: (value) => value?.validatePasswordConfirm(
                    pass: controller.newPassword.text),
                hint: "تأكيد كلمة المرور",
                hintColor: context.colors.blackOpacity,
                margin: EdgeInsets.only(top: 8.h),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: SvgPicture.asset(
                    Res.security_safe,
                    width: 20.w,
                    height: 20.h,
                    colorFilter: ColorFilter.mode(
                      context.colors.blackOpacity,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () => controller.togglePassword(3),
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
