import 'package:coinbase/src/tokens/app_colors.dart';
import 'package:coinbase/src/tokens/app_spacing.dart';
import 'package:coinbase/src/tokens/app_typography.dart';
import 'package:flutter/material.dart';

class DsCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String? label;

  const DsCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //
      onTap: () => onChanged(!value),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.primary100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSpacing.xs),
            ),
          ),

          if (label != null) Text(label!, style: AppTypography.bodySmall),
        ],
      ),
    );
  }
}

class DsRadioButton<T> extends StatelessWidget {
  final T value;
  final T selectedValue;
  final ValueChanged<T?> onChanged;
  final String? label;

  const DsRadioButton({
    super.key,
    required this.value,
    required this.selectedValue,
    required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),

      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Radio<T>.adaptive(
            splashRadius: 0,
            value: value,
            groupValue: selectedValue,
            onChanged: onChanged,
            activeColor: AppColors.primary100,
            visualDensity: VisualDensity.compact,
          ),
          if (label != null) Text(label!, style: AppTypography.bodySmall),
        ],
      ),
    );
  }
}

class DsSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const DsSwitch({
    //
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeThumbColor: Colors.white,
      activeTrackColor: AppColors.primary100,
      inactiveThumbColor: Colors.white,
      inactiveTrackColor: AppColors.black20,
      trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    );
  }
}
