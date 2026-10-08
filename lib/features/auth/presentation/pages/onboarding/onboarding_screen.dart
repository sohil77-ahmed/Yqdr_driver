part of 'onboarding_imports.dart';

class OnboardingScreen extends StatefulWidget {
  static var name = "onboarding";
  static var path = "/onboarding";

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final OnboardingController controller = OnboardingController();

  @override
  void dispose() {
    controller.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OnboardingHeader(controller: controller),
            OnboardingView(controller: controller),
            OnboardingButton(controller: controller),
          ],
        ),
      ),
    );
  }
}
