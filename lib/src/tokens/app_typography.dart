import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract class AppTypography {
  static TextStyle get _baseStyle =>
      GoogleFonts.inter(color: AppColors.black100);

  //Heading
  static TextStyle h1 = _baseStyle.copyWith(
    fontSize: 40,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.0,
  );
}
