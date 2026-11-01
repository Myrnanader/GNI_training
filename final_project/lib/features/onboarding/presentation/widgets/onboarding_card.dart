import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/doorstep_title.dart';

class OnboardingCard extends StatelessWidget {
  final VoidCallback onGetStarted;

  const OnboardingCard({
    super.key,
    required this.onGetStarted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.onboardingCardHeight.h,
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing20.w,
        vertical: AppDimensions.spacing24.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          AppDimensions.radiusExtraLarge.r,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.12),
            blurRadius: 18.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DoorstepTitle(),
          Text(
            AppConstants.onboardingDescription,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          CustomButton(
            text: AppConstants.getStarted,
            onPressed: onGetStarted,
            width: AppDimensions.pillButtonWidth.w,
            height: AppDimensions.pillButtonHeight.h,
            borderRadius: AppDimensions.radiusCircular,
            textStyle: AppTextStyles.buttonLarge,
          ),
        ],
      ),
    );
  }
}
