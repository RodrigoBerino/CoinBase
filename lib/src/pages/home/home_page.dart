import 'package:coinbase/src/components/ds_bottom_navigation_bar.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    /* HomeView(),
    PortfolioView(),
    TradeView(),
    PricesView(),
    SettingsView(), */
  ];

  void _onBottomBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: DsBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomBarTap,
      ),
    );
  }

  Widget HomeView() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: AppSpacing.paddingAllL,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeCard(),
            const SizedBox(height: AppSpacing.l),
          ],
        ),
      ),
    );
  }

  Widget WelcomeCard() {
    return Container(decoration: BoxDecoration(color: AppColors.black0));
  }
}
