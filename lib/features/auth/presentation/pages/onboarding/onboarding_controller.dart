part of 'onboarding_imports.dart';

class OnboardingController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();
  ObsValue<int> currentIndex =  ObsValue<int>.withInit(0);
  PageController pageController = PageController();

  final List<OnboardingItem> pages = const [
    OnboardingItem(
      image: Res.onboard_1,
      title: ' نظام متكامل لتسهيل وإدارة عملية توصيل طلبات العملاء',
      description: 'يعمل نظام يقدر الى جعل طلب الرحلة أكثر سهولة وسرعة، حيث يتيح للعميل اختيار موقع الانطلاق والوصول، وتحديد نوع السيارة المناسبة، ثم إرسال الطلب مباشرة إلى السائقين المتاحين بدون أي تعقيد.',
    ),
    OnboardingItem(
      image: Res.onboard_2,
      title: 'منصة تواصل فورية وفعّالة بين السائقين والعملاء لإتمام الطلبات',
      description: 'يوفّر الحل نظام إشعارات لحظي يربط بين السائقين والعملاء، حيث يستقبل السائق إشعارًا بالرحلة الجديدة مع إمكانية قبولها أو رفضها فورًا، مما يقلل وقت الانتظار ويجعل التواصل أكثر وضوحًا وسلاسة.',
    ),
    OnboardingItem(
      image: Res.onboard_3,
      title: 'لوحة تحكم متقدمة لإدارة حسابات السائقين وطلبات العملاء بكفاءة',
      description: 'يقدّم يقدر لوحة تحكم متكاملة تساعد في إدارة جميع طلبات العملاء ومتابعة حسابات السائقين. تُمكّن الإدارة من مراقبة الرحلات، تقييم أداء السائقين، وتنظيم العمليات لضمان جودة خدمة عالية.',
    ),
  ];

  void onNextPressed(BuildContext context) {
    if (currentIndex.getValue() < pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      currentIndex.setValue(currentIndex.getValue() + 1);
    } else {
      onFinish(context);
    }
  }

  void onFinish(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("onboarding", true);
    context.push(LoginScreen.path);
  }

  void onSkip(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("onboarding", true);
    context.push(LoginScreen.path);
  }



}

class OnboardingItem {
  final String image;
  final String title;
  final String description;

  const OnboardingItem({
    required this.image,
    required this.title,
    required this.description,
  });
}