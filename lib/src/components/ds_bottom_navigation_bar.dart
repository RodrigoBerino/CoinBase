import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class DsBottomNavigationBar extends StatelessWidget {
  /*Controlled component =  usar o bottonnavigation customizado para facilitar manutenção futura
  e stateless para nao guardar o estado, ja que o estado vem do clique do usuário*/

  final int currentIndex; //controle de estado interno -> qual item esta ativo
  final Function(int)
  onTap; //para disparar os eventos no clique-> qual item foi clicado

  const DsBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.black20, width: 1)),
      ),

      child: BottomAppBar(
        color: AppColors.black0,
        elevation: 0,

        child: SizedBox(
          height: AppSpacing.huge,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, Icons.home_filled, 'Home'),
              _buildNavItem(1, Icons.pie_chart_outline, 'Portfolio'),
              _buildTradeButton(),
              _buildNavItem(3, Icons.bar_chart, 'Prices'),
              _buildNavItem(4, Icons.person_outline, 'Settings'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = currentIndex == index; //bool de index
    final finalColor = isSelected ? AppColors.primary100 : AppColors.black60;

    return InkWell(
      onTap: () =>
          onTap(index), //chama a function ontap passand o numero do index
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: finalColor, size: AppSpacing.l),
          const SizedBox(height: AppSpacing.xs),
          Text(
            label,
            style: AppTypography.bodySmall.copyWith(
              color: finalColor,
              fontSize: 10,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTradeButton() {
    return InkWell(
      onTap: () => onTap(2), // Índice do botão central
      child: Container(
        width: 48,
        height: 48,
        decoration: const BoxDecoration(
          color: AppColors.primary100,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0x330052FF),
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: const Icon(Icons.swap_horiz, color: Colors.white, size: 28),
      ),
    );
  }
}
