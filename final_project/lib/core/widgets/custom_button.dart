import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';
import '../theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isEnabled;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.backgroundColor,
    this.width,
    this.height,
    this.borderRadius,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final enabled = isEnabled && !isLoading;
    final radius = BorderRadius.circular(
      (borderRadius ?? AppDimensions.buttonRadius).r,
    );

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? AppDimensions.buttonHeight.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: backgroundColor == null && enabled
              ? AppColors.primaryGradient
              : null,
          color: backgroundColor ??
              (enabled ? null : AppColors.primary.withValues(alpha: 0.5)),
          borderRadius: radius,
          boxShadow: enabled
              ? [
                  BoxShadow(
                    color: AppColors.secondary.withValues(alpha: 0.25),
                    blurRadius: 10.r,
                    offset: Offset(0, 4.h),
                  ),
                ]
              : [],
        ),
        child: ElevatedButton(
          onPressed: enabled ? onPressed : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.transparent,
            disabledBackgroundColor: AppColors.transparent,
            shadowColor: AppColors.transparent,
            foregroundColor: AppColors.white,
            elevation: 0,
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            shape: RoundedRectangleBorder(borderRadius: radius),
          ),
          child: isLoading
              ? SizedBox(
                  width: AppDimensions.iconMedium.w,
                  height: AppDimensions.iconMedium.w,
                  child: const CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.white,
                  ),
                )
              : Text(text, style: textStyle ?? AppTextStyles.button),
        ),
      ),
    );
  }
}
