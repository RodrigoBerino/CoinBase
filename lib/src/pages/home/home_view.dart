import 'package:coinbase/src/pages/home/widgets/watchlist_card.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:flutter/material.dart';
import '../home/widgets/welcome_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: AppSpacing.paddingAllL,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            WelcomeCard(),
            SizedBox(height: AppSpacing.xl),
            WatchlistCard(),
          ],
        ),
      ),
    );
  }
}
