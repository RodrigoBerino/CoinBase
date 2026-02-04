import 'package:flutter/material.dart';
import 'src/routes/app_routes.dart';
import './src/pages/splash/splash_page.dart';
import 'src/pages/onboarding/onboarding.dart';

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
        /*         AppRoutes.login: (_) => const _LoginPage(), */
      },
    );
  }
}
