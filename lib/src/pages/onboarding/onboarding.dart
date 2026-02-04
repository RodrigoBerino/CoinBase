import 'package:coinbase/src/components/ds_button.dart';
import 'package:coinbase/src/routes/app_routes.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary100,
      body: SafeArea(
        child: Padding(
          padding: AppSpacing.paddingAllL,
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/illustration/icon_bitcoin.svg',
                    width: 72,
                    height: 72,
                  ),
                  const SizedBox(height: AppSpacing.s),
                  Text(
                    'Coinbase',
                    style: AppTypography.h1.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 32,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              DsButton(
                label: 'Get started',
                variant: DsButtonVariant.secondary,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
              ),
              const SizedBox(height: AppSpacing.m),
              DsButton(
                label: 'Sign in',
                variant: DsButtonVariant.ghostWhite,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
