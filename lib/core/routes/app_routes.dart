import 'package:base_structure/features/auth/data/models/terms_model/terms_model.dart';
import 'package:base_structure/features/auth/presentation/pages/active_account/active_account_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/fixing/fixing_screen_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/forget_password/forget_password_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/login/login_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/new_account/new_account_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/onboarding/onboarding_imports.dart';
import 'package:base_structure/features/auth/presentation/pages/splash/splash_imports.dart';
import 'package:base_structure/features/base/presentation/pages/home/home_imports.dart';
import 'package:base_structure/features/base/presentation/pages/home/widgets/home_widgets_imports.dart';
import 'package:base_structure/features/notifications/presentation/notifications/notifications_imports.dart';
import 'package:base_structure/features/orders/presentaion/order_details/order_details_imports.dart';
import 'package:base_structure/features/orders/presentaion/orders/orders_imports.dart';
import 'package:base_structure/features/general/presentation/pages/terms/terms_imports.dart';
import 'package:base_structure/features/profile/presentation/account_info/account_info_imports.dart';
import 'package:base_structure/features/profile/presentation/change_password/change_password_imports.dart';
import 'package:base_structure/features/profile/presentation/profile/profile_imports.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    name: SplashScreen.name,
    path: SplashScreen.path,
    builder: (context, state) => SplashScreen(),
  ),

  GoRoute(
    name: FixingScreen.name,
    path: FixingScreen.path,
    builder: (context, state) => FixingScreen(),
  ),

  GoRoute(
    name: NotificationsScreen.name,
    path: NotificationsScreen.path,
    builder: (context, state) => NotificationsScreen(),
  ),

  GoRoute(
    name: ChangePasswordScreen.name,
    path: ChangePasswordScreen.path,
    builder: (context, state) => ChangePasswordScreen(),
  ),

  GoRoute(
    name: AccountInfoScreen.name,
    path: AccountInfoScreen.path,
    builder: (context, state) => AccountInfoScreen(),
  ),

  GoRoute(
    name: OrderDetailsScreen.name,
    path: OrderDetailsScreen.path,
    builder: (context, state) => OrderDetailsScreen(),
  ),

  GoRoute(
    name: OrdersScreen.name,
    path: OrdersScreen.path,
    builder: (context, state) {
      final status = state.extra as String;
      return OrdersScreen(status: status);
    },
  ),

  GoRoute(
    name: HomeMainScreen.name,
    path: HomeMainScreen.path,
    builder: (context, state) => HomeMainScreen(),
  ),

  GoRoute(
    name: OnboardingScreen.name,
    path: OnboardingScreen.path,
    builder: (context, state) => OnboardingScreen(),
  ),

  GoRoute(
    name: NewAccountScreen.name,
    path: NewAccountScreen.path,
    builder: (context, state) => NewAccountScreen(),
  ),

  GoRoute(
    name: LoginScreen.name,
    path: LoginScreen.path,
    builder: (context, state) => LoginScreen(),
  ),

  GoRoute(
    name: ForgetPasswordScreen.name,
    path: ForgetPasswordScreen.path,
    builder: (context, state) => ForgetPasswordScreen(),
  ),

  GoRoute(
    name: ActiveAccountScreen.name,
    path: ActiveAccountScreen.path,
    builder: (context, state) {
      final userId = state.extra as int;
      return ActiveAccountScreen(userId: userId);
    }
  ),

  GoRoute(
    name: TermsScreen.name,
    path: TermsScreen.path,
    builder: (context, state) {
      final terms = state.extra as TermsModel?;
      return TermsScreen(terms: terms);
    },
  ),

  GoRoute(
    name: HomeScreen.name,
    path: HomeScreen.path,
    builder: (context, state) => HomeScreen(),
  ),

  GoRoute(
    name: ProfileScreen.name,
    path: ProfileScreen.path,
    builder: (context, state) => ProfileScreen(),
  ),

  /// You can use this if you need to navigate to a screen with a persistent bottom navigation bar or any widget
  // ShellRoute(
  //   builder: (BuildContext context, GoRouterState state, Widget child) {
  //     return ScaffoldWithNavBar(child: child);
  //   },
  //   routes: <RouteBase>[
  //   ],
  // ),
];
