import 'package:coinbase/src/components/ds_bottom_navigation_bar.dart';
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:flutter/material.dart';
import '../home/home_view.dart';
import '../portfolio/portfolio_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // páginas indexadas conforme o ds_bottom_navigation_bar (0=home, 1=portfolio)
  final List<Widget> _pages = const [
    HomeView(),
    PortfolioView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black0,
      // limita o index ao tamanho da lista para evitar out-of-range nas tabs ainda não implementadas
      body: _pages[_currentIndex.clamp(0, _pages.length - 1)],
      bottomNavigationBar: DsBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
