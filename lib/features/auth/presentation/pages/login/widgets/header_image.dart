part of 'login_widgets_imports.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250.h,
      child: Image.asset(
        Res.login_header,
        fit: BoxFit.cover,
      ),
    );
  }
}
