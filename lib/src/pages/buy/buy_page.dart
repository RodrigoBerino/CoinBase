import 'package:coinbase/src/components/ds_button.dart';
import 'package:coinbase/src/components/ds_controls.dart';
import 'package:coinbase/src/routes/app_routes.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuyPage extends StatefulWidget {
  final String cryptoName;

  final String cryptoSymbol;

  const BuyPage({
    super.key,
    this.cryptoSymbol = 'BTC',
    this.cryptoName = 'Bitcoin',
  });

  @override
  State<BuyPage> createState() => _BuyPage();
}

class _BuyPage extends State<BuyPage> {
  bool _investWeekly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black0,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppColors.black100),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: AppSpacing.paddingAllL,
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/illustration/buy.svg',
                    height: 160,
                    width: 160,
                  ),
                  const SizedBox(height: AppSpacing.l),
                  Text(
                    'Buy \$5 of Bitcoin',
                    style: AppTypography.h3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BTC price S\$102,375.10',
                        style: AppTypography.bodySmall.copyWith(
                          color: AppColors.black60,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.info_outline,
                        size: 14,
                        color: AppColors.black60,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.huge),

                  //receive
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Receive', style: AppTypography.bodyMedium),
                      Text('0.00004884 BTC', style: AppTypography.bodyMedium),
                    ],
                  ),

                  const Divider(
                    height: AppSpacing.xl,
                    color: AppColors.black20,
                  ),

                  //invest
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSpacing.s),
                        decoration: const BoxDecoration(
                          color: AppColors.black20,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.history,
                          size: 16,
                          color: AppColors.black100,
                        ),
                      ),

                      const SizedBox(width: AppSpacing.m),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Invest weekly',
                              style: AppTypography.bodyMedium.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            Text(
                              'Cancel anytime',
                              style: AppTypography.bodySmall.copyWith(
                                color: AppColors.black60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DsSwitch(
                        value: _investWeekly,
                        onChanged: (val) => setState(() => _investWeekly = val),
                      ),
                    ],
                  ),
                  const Divider(
                    height: AppSpacing.xl,
                    color: AppColors.black20,
                  ),

                  Text(
                    'Crypto markets are unique, learn more.',
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.black60,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primary10,
        border: Border(top: BorderSide(color: AppColors.black20)),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            color: AppColors.primary40,
            child: Row(
              children: [
                const Icon(Icons.stars, color: AppColors.primary100, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "You're saving S\$0.99 with Coinbase One",
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.primary100,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //other
          Padding(
            padding: AppSpacing.paddingAllL,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'S\$5.00 total',
                              style: AppTypography.bodyMedium.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.info_outline,
                              size: 14,
                              color: AppColors.black60,
                            ),
                          ],
                        ),
                        Text(
                          'incl. spread',
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.black60,
                          ),
                        ),
                      ],
                    ),
                    DsRadioButton<bool>(
                      value: true,
                      selectedValue: _investWeekly,
                      onChanged: (val) {
                        if (val != null) {
                          setState(() {
                            _investWeekly = val;
                          });
                        }
                      },
                    ),
                  ],
                ),

                const SizedBox(height: AppSpacing.l),
                DsButton(label: 'Buy now', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
