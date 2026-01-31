import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

//enum DsTextField { icon, noIcon, form }

class DsTextField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool isPassword; //implementar o obscure text
  final TextEditingController? controller;
  final String? helperText;
  final Widget? prefixIcon;

  const DsTextField({
    super.key,
    required this.label,
    this.placeholder,
    this.isPassword = false,
    this.controller,
    this.helperText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.bodySmall.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.black60,
          ),
        ),

        //layout
        const SizedBox(height: AppSpacing.s),

        //tex
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: AppTypography.bodyMedium.copyWith(
              color: AppColors.black40,
            ),
            //complemento do text
            prefixIcon: prefixIcon,
            filled: true,
            fillColor: AppColors.black0,
            contentPadding: const EdgeInsets.all(AppSpacing.m),
            errorText: helperText,
            //enable
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.s),
              borderSide: const BorderSide(
                color: AppColors.primary100,
                width: 2,
              ),
            ),
            //error
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.s),
              borderSide: const BorderSide(color: AppColors.error100),
            ),
          ),
        ),
      ],
    );
  }
}
