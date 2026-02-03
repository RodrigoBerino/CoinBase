import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class DsDropdown<T> extends StatelessWidget {
  final String labelDropdown;
  final String? placeholder;
  final T? valueDrop; // valor selecionado = cada tipo de valor que for
  final List<T> itemsDrop;
  final String Function(T) itemLabelBuilder; // define como exibir o texto
  final ValueChanged<T?> onChanged; //callback
  final String? errorText; // mnsagem de erro
  final bool isLoading;
  final bool enabled;

  const DsDropdown({
    super.key,
    required this.labelDropdown,
    required this.itemsDrop,
    required this.itemLabelBuilder,
    required this.onChanged,
    this.valueDrop,
    this.placeholder,
    this.errorText,
    this.isLoading = false,
    this.enabled = true,
  });

  bool get hasValue => valueDrop != null;

  Widget _buildLabel() {
    return Text(
      labelDropdown,
      style: AppTypography.bodySmall.copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.black60,
      ),
    );
  }

  Color _getBorderColor() {
    if (errorText != null) {
      return AppColors.error100;
    }
    if (valueDrop != null) {
      return AppColors.primary100;
    }
    return AppColors.black20;
  }

  Widget _buildDropdown() {
    return DropdownButtonHideUnderline(
      //
      child: DropdownButton<T>(
        value: valueDrop,
        isExpanded: true,
        icon: Icon(Icons.keyboard_arrow_down),
        hint: Text(
          placeholder ?? '',
          style: AppTypography.bodyMedium.copyWith(color: AppColors.black40),
        ),
        items: itemsDrop.map((T item) {
          return DropdownMenuItem<T>(
            value: item,
            child: Text(itemLabelBuilder(item)),
          );
        }).toList(),
        onChanged: enabled ? onChanged : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool hasError = errorText != null;
    final Color borderColor = _getBorderColor();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        _buildLabel(),

        const SizedBox(height: AppSpacing.s),

        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          decoration: BoxDecoration(
            color: enabled ? AppColors.black0 : AppColors.black20,
            borderRadius: BorderRadius.circular(AppSpacing.sm),
            border: Border.all(color: borderColor),
          ),

          child: isLoading
              ? const Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              : _buildDropdown(),
        ),
        if (hasError) _buildErrorText(),
      ],
    );
  }

  Widget _buildErrorText() {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.xs),
      child: Text(
        errorText!,
        style: AppTypography.bodyMedium.copyWith(color: AppColors.error100),
      ),
    );
  }
}
