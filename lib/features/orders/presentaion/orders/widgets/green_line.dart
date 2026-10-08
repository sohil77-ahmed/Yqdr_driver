part of 'orders_widgets_imports.dart';

class GreenLine extends StatelessWidget {
  final bool isActive;
  const GreenLine({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40.h,
        child: Center(
          child: Divider(
            thickness: 2,
            color: isActive ? context.colors.green : context.colors.grey,
          ),
        ),
      ),
    );
  }
}
