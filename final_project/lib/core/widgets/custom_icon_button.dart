import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? iconSize;
  final double? size;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = AppColors.inputBackground,
    this.iconColor = AppColors.textPrimary,
    this.iconSize,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final buttonSize = size ?? 44.w;

    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(
        AppDimensions.radiusMedium.r,
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(
          AppDimensions.radiusMedium.r,
        ),
        child: SizedBox(
          width: buttonSize,
          height: buttonSize,
          child: Icon(
            icon,
            size: (iconSize ?? AppDimensions.iconMedium).sp,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}