import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class DsCryptoCard extends StatelessWidget {
  final Widget iconCard;
  final String titleCard;
  final String symbolCard;
  final String balance;
  final String valueInCurrency;
  final double percentageChange;

  const DsCryptoCard({
    super.key,
    required this.iconCard,
    required this.titleCard,
    required this.symbolCard,
    required this.balance,
    required this.valueInCurrency,
    required this.percentageChange,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = percentageChange >= 0;
    return Container(
      padding: EdgeInsets.all(AppSpacing.m),

      decoration: BoxDecoration(
        color: AppColors.black0,
        borderRadius: BorderRadius.circular(AppSpacing.m),
        border: Border.all(color: AppColors.black20),
      ),

      child: Row(
        children: [
          CircleAvatar(backgroundColor: AppColors.surface, child: iconCard),

          const SizedBox(width: AppSpacing.m),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleCard,
                  style: AppTypography.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  symbolCard,
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.black60,
                  ),
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Text(
                valueInCurrency,
                style: AppTypography.bodyMedium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(width: 4),

              Text(
                '${isPositive ? '+' : ''}${percentageChange.toStringAsFixed(2)}%',
                style: AppTypography.bodySmall.copyWith(
                  color: isPositive ? AppColors.success80 : AppColors.error100,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
