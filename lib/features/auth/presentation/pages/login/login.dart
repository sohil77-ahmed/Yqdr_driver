part of 'login_imports.dart';

class LoginScreen extends StatefulWidget {
  static var name = 'login';
  static var path = '/login';

  final TermsModel? terms;

  const LoginScreen({super.key, this.terms});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      hasAppBar: false,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Column(
            children: [
              const HeaderImage(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: LoginView(controller: controller),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
