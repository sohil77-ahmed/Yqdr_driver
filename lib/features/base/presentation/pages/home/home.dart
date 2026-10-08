part of 'home_imports.dart';

class HomeScreen extends StatefulWidget {
  static final String name = 'home';
  static final String path = '/home';

  const HomeScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.bottomNavIndex,
        builder: (context, index) {
          return Scaffold(
            backgroundColor: context.colors.white,
            body: controller.pages[index],
            bottomNavigationBar:
                BottomNavHomePageWidget(controller: controller),
          );
        });
  }
}
