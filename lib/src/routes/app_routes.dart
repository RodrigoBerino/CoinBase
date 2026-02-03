import 'package:flutter/material.dart';
import '../pages/splash_page.dart';
//import '../pages/onboarding_page.dart';
import '../pages/login_page.dart';
//import '../pages/home_page.dart';

abstract class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String home = '/home';

  static Map<String, WidgetBuilder> get routes => {
    splash: (context) => const SplashPage(),
    /* onboarding: (context) => const OnboardingPage(),
    login: (context) => const LoginPage(),
    home: (context) => const HomePage(), */
  };
}
