import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class DsDropdown<T> extends StatelessWidget {
  final String labelDropdown;
  final String? placeholder;
  //final String? helperText;
  final T? value; // valor selecionado = cada tipo de valor que for necessario
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T> onChanged; //callback

  const DsDropdown({
    super.key,
    required this.labelDropdown,
    this.placeholder,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          labelDropdown,
          style: AppTypography.bodySmall.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.black60,
          ),
        ),

        const SizedBox(height: AppSpacing.s),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          decoration: BoxDecoration(
            color: AppColors.black0,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.black20),
          ),
        ),
      ],
    );
  }
}
