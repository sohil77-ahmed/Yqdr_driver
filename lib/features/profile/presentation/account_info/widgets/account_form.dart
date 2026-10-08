part of 'widgets_imports.dart';

class AccountForm extends StatelessWidget {
  final AccountInfoController controller;
  const AccountForm({super.key, required this.controller});

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
            action: TextInputAction.done,
            fillColor: context.colors.greyWhite,
            validate: (value) => value?.validateEmpty(),
            hint: "name",
            hintColor: context.colors.black,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: SvgPicture.asset(
                Res.user_info,
                width: 18.w,
                height: 18.h,
              ),
            ),
          ),
          GenericTextField(
            controller: controller.phone,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.done,
            fillColor: context.colors.greyWhite,
            validate: (value) => value?.validateEmpty(),
            hint: "xxx xxx xx",
            hintColor: context.colors.blackOpacity,
            margin: EdgeInsets.only(top: 8.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: SvgPicture.asset(
                Res.phone,
                width: 18.w,
                height: 18.h,
                colorFilter: ColorFilter.mode(
                  context.colors.black,
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
          GenericTextField(
            controller: controller.email,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.done,
            fillColor: context.colors.greyWhite,
            validate: (value) => value?.noValidate(),
            hint: "example@gmail.com",
            hintColor: context.colors.blackOpacity,
            margin: EdgeInsets.only(top: 8.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: SvgPicture.asset(
                Res.contactUs,
                width: 18.w,
                height: 18.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
