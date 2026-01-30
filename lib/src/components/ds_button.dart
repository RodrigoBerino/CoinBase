//widget customizado envolvendo widgets nativos do flutter
//flexiveis e reutilizados
import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';
import '../tokens/app_spacing.dart';

enum DsButtonVariant { primary, secondary, ghost } //variações semanticas

//stateless para o button n guardar estados e manter o conteudo reutilizavel
class DsButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final DsButtonVariant variant;
  final bool isLoading;
  final IconData? icon;

  const DsButton({
    //constructor representando o primary
    super.key,
    required this.label,
    this.onPressed,
    this.variant = DsButtonVariant.primary,
    this.isLoading = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: _getButtonStyle(),
        child: isLoading
            ? const SizedBox(
                height: AppSpacing.l,
                width: AppSpacing.l,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.black0,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    Icon(icon, size: 20),
                    const SizedBox(width: AppSpacing.s),
                  ],
                  Text(
                    label,
                    style: AppTypography.bodyMedium.copyWith(
                      fontWeight: FontWeight.w600,
                      color: _getTextColor(),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  ButtonStyle _getButtonStyle() {
    switch (variant) {
      case DsButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary100,
          foregroundColor: AppColors.black0,
          disabledBackgroundColor: AppColors.primary40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          elevation: 0,
        );
      case DsButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: AppColors.black0,
          foregroundColor: AppColors.black100,
          disabledBackgroundColor: AppColors.primary40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          elevation: 0,
        );
      case DsButtonVariant.ghost:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.primary100,
          disabledBackgroundColor: AppColors.primary40,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          elevation: 0,
        );
    }
  }

  Color _getTextColor() {
    if (variant == DsButtonVariant.primary) return Colors.white;
    if (variant == DsButtonVariant.ghost) return AppColors.primary100;
    return AppColors.black100;
  }
}
