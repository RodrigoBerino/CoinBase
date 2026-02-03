import 'package:coinbase/src/routes/app_routes.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: AppColors.primary100,
      body: Center(
        child: Text(
          'CoinBase',
          style: AppTypography.h1.copyWith(
            color: Colors.white,
            fontSize: 48,
            letterSpacing: -2,
          ),
        ),
      ),
    );
  }
}
