part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  final String? text1;
  final String text2;
  final bool bundle;
  final VoidCallback onTap;
  const BuildForgetPasswordView(
      {super.key,
      this.text1,
      required this.text2,
      required this.bundle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (bundle) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1 ?? '',
            style: AppTextStyle.s13_w500(color: context.colors.grey).copyWith(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              text2,
              style: AppTextStyle.s13_w500(
                      color: bundle
                          ? context.colors.primary
                          : context.colors.blackOpacity)
                  .copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: onTap,
            child: Text(
              text2,
              style: AppTextStyle.s13_w500(color: context.colors.blackOpacity)
                  .copyWith(fontSize: 13.sp),
            ),
          ),
        ],
      );
    }
  }
}
