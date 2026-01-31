import 'package:flutter/material.dart';
import './src/components/ds_bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

/// Widget raiz da aplicação
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

/// Tela principal que controla a navegação
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  /// Lista de telas simuladas
  final List<Widget> _pages = const [
    Center(child: Text('Home')),
    Center(child: Text('Portfolio')),
    Center(child: Text('Trade')),
    Center(child: Text('Prices')),
    Center(child: Text('Settings')),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: DsBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabSelected,
      ),
    );
  }
}
