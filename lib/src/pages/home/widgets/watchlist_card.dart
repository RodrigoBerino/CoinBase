import 'package:coinbase/src/components/ds_crypto_card.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class WatchlistCard extends StatelessWidget {
  const WatchlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Watchlist',
          style: AppTypography.h3.copyWith(
            fontWeight: FontWeight.w900,
            color: AppColors.black100,
          ),
        ),
        const SizedBox(height: AppSpacing.m),
        Column(
          spacing: AppSpacing.m,
          children: [
            DsCryptoCard(
              titleCard: 'Bitcoin',
              symbolCard: 'BTC',
              iconCard: const Icon(
                Icons.currency_bitcoin,
                color: Colors.orange,
              ),
              balance: '\$38,650.31',
              valueInCurrency: '\$38,650.31',
              percentageChange: 3,
            ),
            DsCryptoCard(
              titleCard: 'Exchange',
              symbolCard: 'EX',
              iconCard: const Icon(Icons.currency_exchange, color: Colors.blue),
              balance: '\$38,650.31',
              valueInCurrency: '\$-125.12',
              percentageChange: -1,
            ),
            DsCryptoCard(
              titleCard: 'Yuan',
              symbolCard: 'YN',
              iconCard: const Icon(Icons.currency_yuan, color: Colors.red),
              balance: '\$38,650.31',
              valueInCurrency: '\$38,650.31',
              percentageChange: 2,
            ),
          ],
        ),
      ],
    );
  }
}
