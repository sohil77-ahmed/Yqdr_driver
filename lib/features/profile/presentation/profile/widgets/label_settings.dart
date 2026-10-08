part of 'profile_widgets_imports.dart';

class LabelSettings extends StatelessWidget {
  final String title;
  const LabelSettings({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.s14_w500(color: context.colors.black).copyWith(
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }
}
