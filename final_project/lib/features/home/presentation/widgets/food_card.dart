import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/price_text.dart';
import '../../../../core/widgets/spacing_widgets.dart';
import '../../../product/models/food_item.dart';

class FoodCard extends StatelessWidget {
  final FoodItem food;
  final VoidCallback onTap;

  const FoodCard({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(AppDimensions.radiusLarge.r);

    return Material(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: const BorderSide(color: AppColors.border),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Padding(
          padding: EdgeInsets.all(AppDimensions.cardPadding.w),
          child: Column(
            children: [
              const HeightSpace(AppDimensions.spacing8),
              Text(
                food.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${food.calories} calories',
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.secondary,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppDimensions.spacing8.h,
                  ),
                  child: Image.asset(
                    food.image,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              PriceText(price: food.price),
              const HeightSpace(AppDimensions.spacing8),
            ],
          ),
        ),
      ),
    );
  }
}
