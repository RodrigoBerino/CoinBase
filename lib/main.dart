import 'package:flutter/material.dart';
import 'src/routes/app_routes.dart';
import './src/pages/splash/splash_page.dart';
import 'src/pages/onboarding/onboarding.dart';

void main() {
  runApp(const CoinbaseApp());
}

class CoinbaseApp extends StatelessWidget {
  const CoinbaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coinbase',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      routes: {AppRoutes.splash: (_) => const SplashPage()},
    );
  }
}
