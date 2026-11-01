import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // main Colors
  static const Color primary = Color(0xFFF68989);
  static const Color secondary = Color(0xFFFE5150);

  // Background Colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color inputBackground = Color(0xFFEDF3F5);

  // text Colors
  static const Color textPrimary = Color(0xFF4F4F4F);
  static const Color textSecondary = Color(0xFF999999);

  // Other Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color border = Color(0xFFEAEAEA);
  static const Color transparent = Colors.transparent;

  // status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFF44336);

  // gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      primary,
      secondary,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}