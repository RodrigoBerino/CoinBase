import 'package:coinbase/src/components/ds_button.dart';
import 'package:coinbase/src/components/ds_text_field.dart';
import 'package:coinbase/src/routes/app_routes.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      //
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppColors.black100),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      //
      body: Padding(
        padding: AppSpacing.paddingAllL,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sign in to Coinbase', style: AppTypography.h3),
            const SizedBox(height: AppSpacing.xl),
            const DsTextField(label: 'Email', placeholder: 'email@example.com'),
            const SizedBox(height: AppSpacing.l),
            const DsTextField(
              label: 'Password',
              placeholder: '••••••••',
              isPassword: true,
            ),
            const SizedBox(height: AppSpacing.m),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password',
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.primary100,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Privacy policy',
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.primary100,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            DsButton(
              label: 'Sign in',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.home,
                  (route) => false,
                );
              },
            ),
            const SizedBox(height: AppSpacing.m),
          ],
        ),
      ),
    );
  }
}
