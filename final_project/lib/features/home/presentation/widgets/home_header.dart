import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppDimensions.headerButtonSize;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium.r),
          child: Image.asset(
            AppAssets.menu,
            width: size.w,
            height: size.w,
            fit: BoxFit.contain,
          ),
        ),
        Ink(
          width: size.w,
          height: size.w,
          decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.secondary.withValues(alpha: 0.25),
                blurRadius: 8.r,
                offset: Offset(0, 3.h),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {},
            customBorder: const CircleBorder(),
            child: Center(
              child: Image.asset(
                AppAssets.search,
                width: AppDimensions.iconLarge.w,
                height: AppDimensions.iconLarge.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
