import 'package:coinbase/src/components/ds_bottom_navigation_bar.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:flutter/material.dart';
import '../home/home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    /*
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black0,
      body: _pages[_currentIndex],
      bottomNavigationBar: DsBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
