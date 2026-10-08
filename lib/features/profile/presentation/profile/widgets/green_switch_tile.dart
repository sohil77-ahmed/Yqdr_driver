part of 'profile_widgets_imports.dart';

class GreenSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const GreenSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeThumbColor: context.colors.white,
      activeTrackColor: context.colors.green,
      inactiveThumbColor: context.colors.white,
      inactiveTrackColor: context.colors.greyWhite,
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return context.colors.green;
        }
        return context.colors.greyWhite;
      }),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
