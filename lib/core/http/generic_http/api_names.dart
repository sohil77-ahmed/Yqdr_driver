import 'package:base_structure/core/constants/app_config.dart';

class ApiNames {
  // static String baseUrl = AppConfig.instance.baseUrl;
  static String baseUrl = "https://yqdr.appora.net";

  // auth routes
  static const String settings = "/api/portal/setting";
  static const String login = "/api/portal/login";
  static const String logout = "/api/portal/logout";
  static const String register = "/api/portal/register"; // post & get
  static const String forgetPassword = "/api/portal/forget_password";
  static String activeAccount(int id) => "/api/portal/verify/$id";
  static String resendCode(int id) => "/api/portal/resend/$id";
  static const String resetPassword = "/api/portal/password";
  static const String deleteAccount = "/api/portal/delete_account";

  static const String refreshToken = "auth";
  static const String savePublicKey = "users/";
  static const String switchNotify = "SwitchNotify";

  // home routes
  static const String home = "/api/portal/home";


  // profile routes
  static const String account = "/api/portal/account";
  static const String profile = "/api/portal/profile"; // post & get
  static String orders(String status) => "/api/portal/orders?status=$status";
  static String notifications(int page) => "/api/portal/notifications?page=$page";
}

// 57777779