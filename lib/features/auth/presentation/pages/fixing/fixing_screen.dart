part of 'fixing_screen_imports.dart';

class FixingScreen extends StatelessWidget {
  static var name = 'fixing';
  static var path = '/fixing';
  final FixingScreenController controller = FixingScreenController();
  FixingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      hasAppBar: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const FixingContentWidget(),
            const Spacer(),
            LoadingButton(
              title: "حاول مرة أخرى",
              onTap: () => context.pushReplacement(SplashScreen.path),
              color: context.colors.black,
              textColor: context.colors.white,
              btnKey: controller.btnKey,
              borderRadius: 5.r,
              margin: EdgeInsets.zero,
              fontSize: 14.sp,
              height: 45.h,
            ),
            Gaps.vGap(10),
          ],
        ),
      ),
    );
  }
}
