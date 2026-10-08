part of 'login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;

  const BuildLoginForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            controller: controller.phone,
            validate: (value) => value?.validatePhone(),
            maxLength: 8,
            hint: "رقم الهاتف",
            hintColor: context.colors.blackOpacity,
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
          ObsValueConsumer(
            observable: controller.obscureText,
            builder: (context, obsText) {
              return GenericTextField(
                fieldTypes: FieldTypes.password,
                type: TextInputType.text,
                action: TextInputAction.done,
                controller: controller.password,
                obscureText: !obsText,
                validate: (value) => value?.validateEmpty(),
                hint: "كلمة المرور",
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
                  onTap: controller.togglePassword,
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
