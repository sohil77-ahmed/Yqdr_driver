part of 'home_imports.dart';

class HomeController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();

  final ObsValue<int> bottomNavIndex = ObsValue<int>.withInit(0);
  ObsValue<int> selectedTab = ObsValue.withInit(1);

  final BaseBloc<BaseResponse<HomeDataModel>?> homeBloc = BaseBloc();

  void onTabChanged(int index) {
    selectedTab.setValue(index);
  }

  void onStartActive() {
    selectedTab.setValue(0);
  }

  final List<String> svgIconPaths = [Res.home, Res.boxNavBar, Res.settings];

  final List<String> titles = [
    "الرئيسية",
    "الطلبات المعلقة",
    "الاعدادات",
  ];

  List<Widget> get pages => [
        HomeMainScreen(),
        OrdersScreen(status: 'pending'),
        ProfileScreen(),
      ];

  void changeBottomNavIndex(int index) {
    bottomNavIndex.setValue(index);
  }

  void getHomeData() async {
    homeBloc.loadingState();
    final result = await GetHomeDataUseCase()(NoParams());
    homeBloc.successState(result);
  }
}
