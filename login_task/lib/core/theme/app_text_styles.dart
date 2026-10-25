import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  /// Lemon - big titles ("Welcome Back", "Get Started").
  static TextStyle get title => GoogleFonts.lemon(
        fontSize: 28,
        color: AppColors.primary,
      );

  static TextStyle get forgotTitle => GoogleFonts.lemon(
        fontSize: 22,
        color: AppColors.primary,
      );

  static TextStyle get subtitle => GoogleFonts.lexendDeca(
        fontSize: 12,
        color: AppColors.text,
      );

  static TextStyle get hint => GoogleFonts.lexendDeca(
        fontSize: 12,
        color: AppColors.hint,
      );

  static TextStyle get button => GoogleFonts.lexendDeca(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );

  static TextStyle get body => GoogleFonts.lexendDeca(
        fontSize: 13,
        color: AppColors.text,
      );

  static TextStyle get link => GoogleFonts.lexendDeca(
        fontSize: 13,
        color: AppColors.accent,
      );
}