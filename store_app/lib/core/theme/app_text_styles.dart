import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../utils/responsive.dart';

class AppTextStyles {
  static TextStyle get location => TextStyle(
      fontSize: 13.s, fontWeight: FontWeight.w500, color: AppColors.dark);

  static TextStyle get hint =>
      TextStyle(fontSize: 12.s, color: AppColors.grey);

  static TextStyle get sectionTitle => TextStyle(
      fontSize: 15.s, fontWeight: FontWeight.w500, color: AppColors.dark);

  static TextStyle get seeAll =>
      TextStyle(fontSize: 11.s, color: AppColors.primary);

  static TextStyle get tag => TextStyle(
      fontSize: 10.s,
      letterSpacing: 0.8,
      fontWeight: FontWeight.w500,
      color: AppColors.primary);

  static TextStyle get cardName => TextStyle(
      fontSize: 15.s, fontWeight: FontWeight.w500, color: AppColors.dark);

  static TextStyle get cardPrice => TextStyle(
      fontSize: 13.s, fontWeight: FontWeight.w600, color: AppColors.dark);

  static TextStyle get bigName => TextStyle(
      fontSize: 24.s, fontWeight: FontWeight.w500, color: AppColors.dark);

  static TextStyle get bigPrice => TextStyle(
      fontSize: 18.s, fontWeight: FontWeight.w500, color: AppColors.dark);

  static TextStyle get description =>
      TextStyle(fontSize: 13.s, height: 1.6, color: AppColors.grey);

  static TextStyle get appBarTitle => TextStyle(
      fontSize: 14.s, fontWeight: FontWeight.w500, color: AppColors.dark);

  static TextStyle get priceLabel =>
      TextStyle(fontSize: 14.s, color: AppColors.grey);

  static TextStyle get priceBold => TextStyle(
      fontSize: 18.s, fontWeight: FontWeight.w700, color: AppColors.dark);

  static TextStyle get button => TextStyle(
      fontSize: 15.s, fontWeight: FontWeight.w500, color: Colors.white);
}