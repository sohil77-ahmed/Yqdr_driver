part of 'new_account_widgets_imports.dart';

class TermsCheckBox extends StatelessWidget {
  final bool value;
  final NewAccountController controller;
  const TermsCheckBox(
      {super.key, required this.value, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: (value) {
        controller.toggleTermsCheckBox();
      },
      checkColor: context.colors.background,
      fillColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return context.colors.primary;
        }
        return context.colors.background;
      }),
      side: BorderSide(
        color: context.colors.primary,
        width: 1,
      ),
    );
  }
}
