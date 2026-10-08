part of 'splash_widgets_imports.dart';

class SplashLogo extends StatelessWidget {
  final bool showFirstLogo;
  const SplashLogo({super.key, required this.showFirstLogo});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      switchInCurve: Curves.easeOutBack,
      switchOutCurve: Curves.easeIn,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
      child: showFirstLogo
          ? SvgPicture.asset(
              Res.main_logo,
              key: const ValueKey('logo1'),
              height: 100.h,
              width: 100.w,
            )
          : SvgPicture.asset(
              Res.main_logo_2,
              key: const ValueKey('logo2'),
              height: 80.h,
              width: 80.w,
            ),
    );
  }
}
