import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // headings
  static TextStyle get headingLarge => TextStyle(
        fontFamily: 'Inter24',
        fontSize: 30.sp,
        fontWeight: FontWeight.w600,
        height: 1.2,
        color: AppColors.textPrimary,
      );

  static TextStyle get headingMedium => TextStyle(
        fontFamily: 'Inter24',
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      );

  static TextStyle get headingSmall => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      );

  // Body
  static TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      );

  static TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      );

  static TextStyle get bodySmall => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: AppColors.textSecondary,
      );

  static TextStyle get caption => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      );

  // Label
  static TextStyle get label => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      );

  // Buttons
  static TextStyle get button => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      );

  static TextStyle get buttonLarge => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      );

  // price
  static TextStyle get price => TextStyle(
        fontFamily: 'Inter18',
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.secondary,
      );
}
