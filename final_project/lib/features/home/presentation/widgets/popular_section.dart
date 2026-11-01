import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/spacing_widgets.dart';
import '../../../product/models/food_item.dart';
import 'food_card.dart';

class PopularSection extends StatelessWidget {
  final List<FoodItem> foods;
  final ValueChanged<FoodItem> onFoodTap;

  const PopularSection({
    super.key,
    required this.foods,
    required this.onFoodTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppConstants.popular,
          style: AppTextStyles.headingMedium,
        ),
        const HeightSpace(30),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: foods.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppDimensions.foodCardSpacing.w,
            mainAxisSpacing: AppDimensions.spacing16.h,
            mainAxisExtent: AppDimensions.foodCardHeight.h,
          ),
          itemBuilder: (context, index) {
            final food = foods[index];
            return FoodCard(
              food: food,
              onTap: () => onFoodTap(food),
            );
          },
        ),
      ],
    );
  }
}
