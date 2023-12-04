import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metrocay_cpt_user/src/features/auth/forgot_password/forgot_password_binding.dart';
import 'package:metrocay_cpt_user/src/features/auth/forgot_password/forgot_password_screen.dart';
import 'package:metrocay_cpt_user/src/features/features/home/home_binding.dart';
import 'package:metrocay_cpt_user/src/features/features/home/home_screen.dart';

import '../../features/auth/login/login_binding.dart';
import '../../features/auth/login/login_screen.dart';


class AppRoutes {


  static const String splash = '/splash';
  static const String splashSecond = '/splashSecond';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';
  static const String signUp = '/signUp';
  static const String otp = '/otp';
  static const String home = '/home';


  static String getSplashRoute() => splash;
  static String getSplashSecondRoute() => splashSecond;
  static String getForgotPasswordRoute() => forgotPassword;
  static String getLoginRoute() => login;
  static String getSignUpRoute() => signUp;
  static String getOtpRoute() => otp;
  static String getHomeRoute() => home;



  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return GetPageRoute(
            settings: settings,
            routeName: getLoginRoute(),
            page: () => LoginScreen());
      case forgotPassword:
        return GetPageRoute(
            settings: settings,
            routeName: getForgotPasswordRoute(),
            page: () => ForgotPassword());
      case home:
        return GetPageRoute(
            settings: settings,
            routeName: getHomeRoute(),
            page: () => HomeScreen());

      default:
        return null;
    }
  }

  static getPages() => [

    GetPage(
          name: login,
          page: () => LoginScreen(),
          binding: LoginBinding(),
        ),
    GetPage(
          name: forgotPassword,
          page: () => ForgotPassword(),
          binding: ForgotPasswordBinding(),
        ),
    GetPage(
          name: home,
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),

      ];
}
