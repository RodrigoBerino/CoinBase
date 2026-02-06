import 'package:coinbase/src/pages/buy/buy_page.dart';
import 'package:coinbase/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'src/routes/app_routes.dart';
import './src/pages/splash/splash_page.dart';
import 'src/pages/onboarding/onboarding.dart';
import 'src/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coinbase',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (_) => const SplashPage(),
        AppRoutes.onboarding: (_) => const Onboarding(),
        AppRoutes.login: (_) => const LoginPage(),
        AppRoutes.home: (_) => const HomePage(),
        AppRoutes.cryptoBuy: (_) => const BuyPage(),
      },
    );
  }
}
