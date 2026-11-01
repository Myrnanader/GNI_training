import 'package:flutter/material.dart';

import '../../../../app/routes/app_routes.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/add_to_cart_button.dart';
import '../../../../core/widgets/app_screen.dart';
import '../../../../core/widgets/spacing_widgets.dart';
import '../../../product/data/sample_foods.dart';
import '../../../product/models/food_item.dart';
import '../widgets/food_categories.dart';
import '../widgets/home_header.dart';
import '../widgets/popular_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openDetails(BuildContext context, FoodItem food) {
    Navigator.pushNamed(
      context,
      AppRoutes.itemDetails,
      arguments: food,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      bottomAction: const AddToCartButton(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightSpace(AppDimensions.spacing4),
          const HomeHeader(),
          const HeightSpace(62),
          Text(
            AppConstants.greeting,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.secondary,
            ),
          ),
          const HeightSpace(AppDimensions.spacing8),
          Text(
            AppConstants.homeTitle,
            style: AppTextStyles.headingMedium,
          ),
          const HeightSpace(AppDimensions.spacing32),
          const FoodCategories(),
          const HeightSpace(102),
          PopularSection(
            foods: sampleFoods,
            onFoodTap: (food) => _openDetails(context, food),
          ),
          const HeightSpace(AppDimensions.spacing24),
        ],
      ),
    );
  }
}
