import 'package:flutter/material.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_typography.dart';

//implementação do tema global baseado nos tokens
class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primary100,
      scaffoldBackgroundColor: AppColors.background,
      //inicio do padrão de cor
      colorScheme: ColorScheme.light(
        primary: AppColors.primary100,
        secondary: AppColors.secondary100,
        surface: AppColors.surface,
        error: AppColors.error100,
      ),
      //inicio do padrão de texto
      textTheme: TextTheme(
        displayLarge: AppTypography.h1,
        displayMedium: AppTypography.h2,
        displaySmall: AppTypography.h3,
        bodyLarge: AppTypography.bodyLarge,
        bodyMedium: AppTypography.bodyMedium,
        bodySmall: AppTypography.bodySmall,
      ),
    );
  }
}
