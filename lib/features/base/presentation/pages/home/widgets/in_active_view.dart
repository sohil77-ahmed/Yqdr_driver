part of 'home_widgets_imports.dart';

class InActiveView extends StatelessWidget {
  final HomeController controller;
  const InActiveView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.appPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Res.inActiveMood,
            width: 200.w,
            height: 200.h,
            fit: BoxFit.contain,
          ),
          Gaps.vGap(24),
          Text(
            'انت غير نشط الان!',
            style: AppTextStyle.s20_w600(color: context.colors.black)
                .copyWith(fontSize: 20.sp),
          ),
          Gaps.vGap(8),
          Text(
            'أنت الآن غير نشط. لن تتمكن من استقبال أي طلبات جديدة حتى تصبح نشطاً.',
            textAlign: TextAlign.center,
            style: AppTextStyle.s14_w400(color: context.colors.black)
                .copyWith(fontSize: 15.sp),
          ),
          Gaps.vGap(16),
          LoadingButton(
            title: "ابدأ في استقبال الطلبات",
            onTap: () => controller.onStartActive(),
            color: context.colors.black,
            textColor: context.colors.white,
            btnKey: controller.btnKey,
            borderRadius: 5.r,
            margin: EdgeInsets.zero,
            fontSize: 14.sp,
            height: 45.h,
          ),
        ],
      ),
    );
  }
}
