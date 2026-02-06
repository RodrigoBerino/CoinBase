import 'package:coinbase/src/pages/buy/buy_page.dart';
import 'package:flutter/material.dart';
import '../pages/splash/splash_page.dart';
//import '../pages/onboarding_page.dart';

//import '../pages/home_page.dart';

abstract class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String home = '/home';
  static const String cryptoBuy = '/buy';

  static Map<String, WidgetBuilder> get routes => {
    splash: (context) => const SplashPage(),
    cryptoBuy: (context) => const BuyPage(),
    /* onboarding: (context) => const OnboardingPage(),
    login: (context) => const LoginPage(),
    home: (context) => const HomePage(), */
  };
}
