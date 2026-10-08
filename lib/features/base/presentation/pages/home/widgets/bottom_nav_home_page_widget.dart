part of 'home_widgets_imports.dart';

class BottomNavHomePageWidget extends StatelessWidget {
  final HomeController controller;

  const BottomNavHomePageWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      height: 50.h,
      elevation: 0,
      borderColor: context.colors.disableGray.withOpacity(0.4),
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 0,
      rightCornerRadius: 0,
      splashSpeedInMilliseconds: 1,
      splashRadius: 0,
      scaleFactor: 0,
      backgroundColor: context.colors.white,
      itemCount: controller.svgIconPaths.length,
      tabBuilder: (index, isActive) {
        final color =
            isActive ? context.colors.black : context.colors.disableGray;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 2.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  controller.svgIconPaths[index],
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                  width: 22.w,
                  height: 22.h,
                ),
                Gaps.vGap(4),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    controller.titles[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.s12_w400(color: color)
                        .copyWith(fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      activeIndex: controller.bottomNavIndex.getValue(),
      onTap: (index) {
        controller.changeBottomNavIndex(index);
      },
      gapLocation: GapLocation.none,
    );
  }
}
