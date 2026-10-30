import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/theme/app_text_styles.dart';
import '../core/utils/responsive.dart';

class CustomSearchBar extends StatelessWidget {
  final String hint;
  const CustomSearchBar({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.s,
      padding: EdgeInsets.symmetric(horizontal: 16.s),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24.s),
      ),
      child: Row(
        children: [
          Icon(Icons.search, size: 20.s, color: AppColors.dark),
          SizedBox(width: 12.s),
          Text(hint, style: AppTextStyles.hint),
        ],
      ),
    );
  }
}