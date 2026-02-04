import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> implements SplashNavigator {
  late final SplashController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SplashController(this); //injeta o navigator
    _controller.start(); //inicia a splash
  }

  @override
  void goTo(String route) {
    if (!mounted) return; //verifica se o widget existe
    Navigator.pushReplacementNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return const _SplashView();
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
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
