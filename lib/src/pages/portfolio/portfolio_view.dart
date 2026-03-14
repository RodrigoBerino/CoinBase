import 'package:coinbase/src/components/ds_button.dart';
import 'package:coinbase/src/components/ds_controls.dart';
import 'package:coinbase/src/components/ds_crypto_card.dart';
import 'package:coinbase/src/components/ds_list_tile.dart';
import 'package:coinbase/src/tokens/app_assets.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  // estados locais para exibir os controles interativos
  bool _checkboxValue = true;
  bool _switchValue = true;
  String _selectedPeriod = '1M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppSpacing.paddingAllM,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('cores primárias'),
              const SizedBox(height: AppSpacing.m),
              _buildPrimaryColors(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('cores secundárias'),
              const SizedBox(height: AppSpacing.m),
              _buildSecondaryColors(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('cores semânticas'),
              const SizedBox(height: AppSpacing.m),
              _buildSemanticColors(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('cores neutras'),
              const SizedBox(height: AppSpacing.m),
              _buildNeutralColors(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('tipografia — inter'),
              const SizedBox(height: AppSpacing.m),
              _buildTypography(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('espaçamentos'),
              const SizedBox(height: AppSpacing.m),
              _buildSpacingTokens(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('botões'),
              const SizedBox(height: AppSpacing.m),
              _buildButtons(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('controles'),
              const SizedBox(height: AppSpacing.m),
              _buildControls(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('ícones — phosphor'),
              const SizedBox(height: AppSpacing.m),
              _buildIcons(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('assets — ilustrações'),
              const SizedBox(height: AppSpacing.m),
              _buildAssets(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('componente — crypto card'),
              const SizedBox(height: AppSpacing.m),
              _buildCryptoCards(),
              const SizedBox(height: AppSpacing.xl),
              _buildSectionTitle('componente — list tile'),
              const SizedBox(height: AppSpacing.m),
              _buildListTiles(),
              const SizedBox(height: AppSpacing.giant),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Portfólio', style: AppTypography.h3),
            const SizedBox(height: AppSpacing.xs),
            Text(
              'Design system tokens',
              style: AppTypography.bodySmall.copyWith(color: AppColors.black60),
            ),
          ],
        ),
        // ícone usando DsIcon com token de cor primary100
        /* DsIcon(
          icon: PhosphorIconsFill.chartPie,
          color: AppColors.primary100,
          size: AppSpacing.xl,
        ), */
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Container(
          width: AppSpacing.xs,
          height: AppSpacing.m,
          // primary100 como detalhe visual de seção
          decoration: BoxDecoration(
            color: AppColors.primary100,
            borderRadius: BorderRadius.circular(AppSpacing.xs),
          ),
        ),
        const SizedBox(width: AppSpacing.s),
        Text(
          title,
          style: AppTypography.bodyMedium.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.black80,
          ),
        ),
      ],
    );
  }

  Widget _buildPrimaryColors() {
    final colors = [
      (AppColors.primary100, 'primary100', '#2752E7'),
      (AppColors.primary80, 'primary80', '#5275EC'),
      (AppColors.primary60, 'primary60', '#7D97F1'),
      (AppColors.primary40, 'primary40', '#D0DBFF'),
      (AppColors.primary20, 'primary20', '#F1F6FF'),
      (AppColors.primary10, 'primary10', '#FAFCFF'),
    ];
    return _buildColorRow(colors);
  }

  Widget _buildSecondaryColors() {
    final colors = [
      (AppColors.secondary100, 'secondary100', '#FFBE55'),
      (AppColors.secondary80, 'secondary80', '#FFD899'),
      (AppColors.secondary60, 'secondary60', '#FFE5BB'),
      (AppColors.secondary40, 'secondary40', '#FFF2DD'),
      (AppColors.secondary20, 'secondary20', '#FFF9EF'),
    ];
    return _buildColorRow(colors);
  }

  Widget _buildSemanticColors() {
    final colors = [
      (AppColors.success100, 'success', '#3F845F'),
      (AppColors.warning100, 'warning', '#E4C65B'),
      (AppColors.error100, 'error', '#E25C5C'),
      (AppColors.info100, 'info', '#2685CA'),
    ];
    return _buildColorRow(colors);
  }

  Widget _buildNeutralColors() {
    final colors = [
      (AppColors.black100, 'black100', '#111111'),
      (AppColors.black80, 'black80', '#707070'),
      (AppColors.black60, 'black60', '#A0A0A0'),
      (AppColors.black40, 'black40', '#CFCFCF'),
      (AppColors.black20, 'black20', '#F3F3F3'),
      (AppColors.black0, 'black0', '#FFFFFF'),
    ];
    return _buildColorRow(colors);
  }

  Widget _buildColorRow(List<(Color, String, String)> colors) {
    return Wrap(
      spacing: AppSpacing.s,
      runSpacing: AppSpacing.s,
      children: colors.map((entry) {
        final (color, name, hex) = entry;
        final needsBorder =
            color == AppColors.black0 ||
            color == AppColors.black20 ||
            color == AppColors.primary10 ||
            color == AppColors.primary20 ||
            color == AppColors.secondary20;
        return Column(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(AppSpacing.s),
                // borda apenas para cores muito claras para manter contraste
                border: needsBorder
                    ? Border.all(color: AppColors.black40, width: 1)
                    : null,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            SizedBox(
              width: 52,
              child: Text(
                name,
                style: AppTypography.bodySmall.copyWith(
                  fontSize: 9,
                  color: AppColors.black80,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 52,
              child: Text(
                hex,
                style: AppTypography.bodySmall.copyWith(
                  fontSize: 9,
                  color: AppColors.black60,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildTypography() {
    return Container(
      width: double.infinity,
      padding: AppSpacing.paddingAllM,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.m),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // h1 — inter black 40px
          Text(
            'H1 · 40px · w900',
            style: AppTypography.h1.copyWith(fontSize: 20),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'H2 · 32px · w600',
            style: AppTypography.h2.copyWith(fontSize: 18),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'H3 · 24px · w900',
            style: AppTypography.h3.copyWith(fontSize: 16),
          ),
          const Divider(height: AppSpacing.xl, color: AppColors.black40),
          Text('bodyLarge · 18px · w400', style: AppTypography.bodyLarge),
          const SizedBox(height: AppSpacing.s),
          Text('bodyMedium · 16px · w400', style: AppTypography.bodyMedium),
          const SizedBox(height: AppSpacing.s),
          Text('bodySmall · 14px · w400', style: AppTypography.bodySmall),
        ],
      ),
    );
  }

  Widget _buildSpacingTokens() {
    final spacings = [
      (AppSpacing.xs, 'xs', '4'),
      (AppSpacing.s, 's', '8'),
      (AppSpacing.sm, 'sm', '12'),
      (AppSpacing.m, 'm', '16'),
      (AppSpacing.ml, 'ml', '20'),
      (AppSpacing.l, 'l', '24'),
      (AppSpacing.xl, 'xl', '32'),
      (AppSpacing.xxl, 'xxl', '40'),
    ];

    return Column(
      children: spacings.map((entry) {
        final (value, name, px) = entry;
        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.s),
          child: Row(
            children: [
              SizedBox(
                width: 48,
                child: Text(
                  name,
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.black60,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.s),
              // barra visual representando o valor do token
              Container(
                width: value,
                height: AppSpacing.m,
                decoration: BoxDecoration(
                  color: AppColors.primary100,
                  borderRadius: BorderRadius.circular(AppSpacing.xs),
                ),
              ),
              const SizedBox(width: AppSpacing.s),
              Text(
                '${px}px',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.black60,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        DsButton(
          label: 'primary',
          onPressed: () {},
          variant: DsButtonVariant.primary,
        ),
        const SizedBox(height: AppSpacing.m),
        DsButton(
          label: 'secondary',
          onPressed: () {},
          variant: DsButtonVariant.secondary,
        ),
        const SizedBox(height: AppSpacing.m),
        DsButton(
          label: 'ghost',
          onPressed: () {},
          variant: DsButtonVariant.ghost,
        ),
        const SizedBox(height: AppSpacing.m),
        // botão com ícone do phosphor icons
        DsButton(
          label: 'com ícone',
          onPressed: () {},
          variant: DsButtonVariant.primary,
          icon: PhosphorIconsFill.wallet,
        ),
        const SizedBox(height: AppSpacing.m),
        // estado de loading do ds_button
        const DsButton(
          label: 'carregando...',
          variant: DsButtonVariant.primary,
          isLoading: true,
        ),
      ],
    );
  }

  Widget _buildControls() {
    return Container(
      padding: AppSpacing.paddingAllM,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.m),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ds checkbox',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.black60,
                ),
              ),
              DsCheckbox(
                value: _checkboxValue,
                onChanged: (v) => setState(() => _checkboxValue = v ?? false),
                label: _checkboxValue ? 'ativo' : 'inativo',
              ),
            ],
          ),
          const Divider(height: AppSpacing.xl, color: AppColors.black40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ds switch',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.black60,
                ),
              ),
              DsSwitch(
                value: _switchValue,
                onChanged: (v) => setState(() => _switchValue = v),
              ),
            ],
          ),
          const Divider(height: AppSpacing.xl, color: AppColors.black40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ds radio button',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.black60,
                ),
              ),
              Row(
                children: ['BTC', 'ETH'].map((opt) {
                  return DsRadioButton<String>(
                    value: opt,
                    selectedValue: _selectedPeriod == opt ? opt : 'BTC',
                    onChanged: (v) => setState(() {}),
                    label: opt,
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcons() {
    // ícones do phosphor flutter usados no projeto
    final icons = [
      (PhosphorIconsFill.house, 'house'),
      (PhosphorIconsFill.chartPie, 'chartPie'),
      (PhosphorIcons.arrowsLeftRight(), 'arrows'),
      (PhosphorIconsFill.receipt, 'receipt'),
      (PhosphorIconsFill.user, 'user'),
      (PhosphorIconsFill.wallet, 'wallet'),
      (PhosphorIconsFill.trendUp, 'trendUp'),
      (PhosphorIconsFill.bell, 'bell'),
    ];

    return Container(
      padding: AppSpacing.paddingAllM,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.m),
      ),
      child: Wrap(
        spacing: AppSpacing.xl,
        runSpacing: AppSpacing.m,
        children: icons.map((entry) {
          final (icon, name) = entry;
          return Column(
            children: [
              DsIcon(
                icon: icon,
                color: AppColors.primary100,
                size: AppSpacing.xl,
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                name,
                style: AppTypography.bodySmall.copyWith(
                  fontSize: 9,
                  color: AppColors.black60,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildAssets() {
    // svgs do projeto carregados via flutter_svg
    final assets = [
      ('assets/illustration/icon_bitcoin.svg', 'icon_bitcoin'),
      ('assets/illustration/buy.svg', 'buy'),
      ('assets/illustration/mail.svg', 'mail'),
      ('assets/illustration/v_email.svg', 'v_email'),
      ('assets/illustration/photo.svg', 'photo'),
    ];

    return Container(
      padding: AppSpacing.paddingAllM,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.m),
      ),
      child: Wrap(
        spacing: AppSpacing.l,
        runSpacing: AppSpacing.m,
        alignment: WrapAlignment.center,
        children: assets.map((entry) {
          final (path, name) = entry;
          return Column(
            children: [
              SvgPicture.asset(
                path,
                width: AppSpacing.huge,
                height: AppSpacing.huge,
                placeholderBuilder: (_) => Container(
                  width: AppSpacing.huge,
                  height: AppSpacing.huge,
                  decoration: BoxDecoration(
                    color: AppColors.black20,
                    borderRadius: BorderRadius.circular(AppSpacing.s),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.s),
              Text(
                name,
                style: AppTypography.bodySmall.copyWith(
                  fontSize: 10,
                  color: AppColors.black60,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCryptoCards() {
    return Column(
      children: [
        DsCryptoCard(
          iconCard: SvgPicture.asset(
            'assets/illustration/icon_bitcoin.svg',
            width: AppSpacing.l,
            height: AppSpacing.l,
          ),
          titleCard: 'Bitcoin',
          symbolCard: 'BTC',
          balance: '0.42 BTC',
          valueInCurrency: 'R\$ 28.140',
          percentageChange: 12.4,
        ),
        const SizedBox(height: AppSpacing.m),
        DsCryptoCard(
          iconCard: Icon(
            PhosphorIconsFill.currencyEth,
            color: AppColors.primary100,
            size: AppSpacing.l,
          ),
          titleCard: 'Ethereum',
          symbolCard: 'ETH',
          balance: '3.8 ETH',
          valueInCurrency: 'R\$ 11.400',
          percentageChange: -3.2,
        ),
        const SizedBox(height: AppSpacing.m),
        DsCryptoCard(
          iconCard: Icon(
            PhosphorIconsFill.currencyDollar,
            color: AppColors.success100,
            size: AppSpacing.l,
          ),
          titleCard: 'USD Coin',
          symbolCard: 'USDC',
          balance: '8.780 USDC',
          valueInCurrency: 'R\$ 8.780',
          percentageChange: 0.01,
        ),
      ],
    );
  }

  Widget _buildListTiles() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.m),
      ),
      child: Column(
        children: [
          DsListTile(
            title: 'depósito',
            subtitle: 'adicionar fundos à conta',
            leading: Icon(PhosphorIconsFill.arrowDown),
            trailing: Icon(
              PhosphorIcons.caretRight(),
              color: AppColors.black40,
              size: AppSpacing.m,
            ),
            onTap: () {},
          ),
          const Divider(
            height: 1,
            indent: AppSpacing.m,
            color: AppColors.black40,
          ),
          DsListTile(
            title: 'saque',
            subtitle: 'transferir para conta bancária',
            leading: Icon(PhosphorIconsFill.arrowUp),
            trailing: Icon(
              PhosphorIcons.caretRight(),
              color: AppColors.black40,
              size: AppSpacing.m,
            ),
            onTap: () {},
          ),
          const Divider(
            height: 1,
            indent: AppSpacing.m,
            color: AppColors.black40,
          ),
          DsListTile(
            title: 'extrato',
            subtitle: 'histórico de transações',
            leading: Icon(PhosphorIconsFill.receipt),
            trailing: Icon(
              PhosphorIcons.caretRight(),
              color: AppColors.black40,
              size: AppSpacing.m,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
