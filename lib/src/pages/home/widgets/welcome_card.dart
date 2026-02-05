import 'package:coinbase/src/components/ds_button.dart';
import 'package:coinbase/src/routes/app_routes.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSpacing.xl),

        SvgPicture.asset(
          'assets/illustration/v_email.svg',
          height: 160,
          width: 160,
        ),

        const SizedBox(height: AppSpacing.xl),

        Text(
          'Welcome to coinbase!',
          style: AppTypography.h3.copyWith(
            fontWeight: FontWeight.w900,
            color: AppColors.black100,
          ),
        ),

        const SizedBox(height: AppSpacing.m),

        Text(
          'Make your first investment today!',
          style: AppTypography.bodySmall.copyWith(color: AppColors.black60),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: AppSpacing.xl),

        DsButton(
          label: 'Add payment method',
          variant: DsButtonVariant.primary,
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.home);
          },
        ),
      ],
    );
  }
}
