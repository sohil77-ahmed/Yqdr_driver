part of 'onboarding_widgets_imports.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController controller;
  const OnboardingView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        itemCount: controller.pages.length,
        itemBuilder: (context, index) {
          final item = controller.pages[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: OnboardingSinglePage(
              image: item.image,
              title: item.title,
              supTitle: item.description,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
