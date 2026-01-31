import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class DsTabBar extends StatelessWidget {
  final TabController controller;
  final List<String> tabs;

  const DsTabBar({super.key, required this.controller, required this.tabs});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      //encapsulamento do tabbar do flutter, importante para reaproveitar estrutura
      controller: controller,
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      indicatorColor: AppColors.primary100,
      indicatorWeight: 3,
      //estilizacao
      labelColor: AppColors.primary100,
      labelStyle: AppTypography.bodyMedium.copyWith(
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: AppColors.black60,
      unselectedLabelStyle: AppTypography.bodyMedium.copyWith(
        fontWeight: FontWeight.w300,
      ),
      //
      dividerColor: AppColors.black20,

      //passando a tab como map
      tabs: tabs.map((tab) => Tab(text: tab)).toList(),
    );
  }
}
