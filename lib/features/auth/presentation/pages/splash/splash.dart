part of 'splash_imports.dart';

class SplashScreen extends StatefulWidget {
  static var name = 'splash';
  static var path = '/splash';
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.manipulateSaveData(context);
    controller.displaySplashLogo();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // precacheImage(const AssetImage(Res.logo), context);
    // precacheImage(const AssetImage(Res.logo2), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: ObsValueConsumer(
          observable: controller.showSplashLogo2,
          builder: (context, showFirstLogo) {
            return Center(
              child: SplashLogo(
                showFirstLogo: showFirstLogo,
              ),
            );
          }),
    );
  }
}
