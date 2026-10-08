part of 'new_account_widgets_imports.dart';

class ActionTextRow extends StatelessWidget {
  final String? text1;
  final String text2;
  final bool bundle;
  final bool underline;
  final VoidCallback onTap;

  const ActionTextRow({
    super.key,
    this.text1,
    required this.text2,
    required this.bundle,
    required this.onTap,
    required this.underline,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          if (text1 != null && text1!.isNotEmpty)
            TextSpan(
              text: '${text1!} ',
              style: AppTextStyle.s13_w500(color: context.colors.grey).copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          TextSpan(
            text: text2,
            recognizer: TapGestureRecognizer()..onTap = onTap,
            style: AppTextStyle.s13_w500(
              color:
                  bundle ? context.colors.primary : context.colors.blackOpacity,
            ).copyWith(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              decoration:
                  underline ? TextDecoration.underline : TextDecoration.none,
              decorationColor: context.colors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
