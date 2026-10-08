part of 'home_widgets_imports.dart';

class HomeMainScreen extends StatefulWidget {
  static final String name = 'home_main';
  static final String path = '/home_main';

  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.getHomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colors.brown,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [context.colors.brown.withOpacity(.8), context.colors.white]),
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: Dimens.appPadding,
                child: ObsValueConsumer(
                  observable: controller.selectedTab,
                  builder: (context, activeIndex) {
                    return Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: BorderRadius.circular(35.r),
                        boxShadow: [
                          BoxShadow(
                            color: context.colors.disableGray.withOpacity(.5),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => controller.onTabChanged(0),
                              child: Container(
                                height: 35.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.w,
                                  vertical: 8.h,
                                ),
                                decoration: BoxDecoration(
                                  color: activeIndex == 0
                                      ? context.colors.brown
                                      : context.colors.white,
                                  borderRadius: BorderRadius.circular(35.r),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      Res.spark,
                                      colorFilter: ColorFilter.mode(
                                        activeIndex == 0
                                            ? context.colors.white
                                            : context.colors.grey,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    Gaps.hGap(10),
                                    Text(
                                      'نشط',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyle.s14_w500(
                                        color: activeIndex == 1
                                            ? context.colors.grey
                                            : context.colors.white,
                                      ).copyWith(fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => controller.onTabChanged(1),
                              child: Container(
                                height: 35.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.w,
                                  vertical: 8.h,
                                ),
                                decoration: BoxDecoration(
                                  color: activeIndex == 1
                                      ? context.colors.brown
                                      : context.colors.white,
                                  borderRadius: BorderRadius.circular(35.r),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      Res.halfMoon,
                                      colorFilter: ColorFilter.mode(
                                        activeIndex == 1
                                            ? context.colors.white
                                            : context.colors.grey,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    Gaps.hGap(10),
                                    Text(
                                      'غير نشط',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyle.s14_w500(
                                        color: activeIndex == 1
                                            ? context.colors.white
                                            : context.colors.grey,
                                      ).copyWith(fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: ObsValueConsumer(
                  observable: controller.selectedTab,
                  builder: (context, activeIndex) {
                    if (activeIndex == 0) {
                      return ActiveView(controller: controller,);
                    } else {
                      return InActiveView(
                        controller: controller,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
