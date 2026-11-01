import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_dimensions.dart';
import 'food_category_item.dart';

class FoodCategories extends StatefulWidget {
  const FoodCategories({super.key});

  @override
  State<FoodCategories> createState() => _FoodCategoriesState();
}

class _FoodCategoriesState extends State<FoodCategories> {
  static const _categories = [
    (title: AppConstants.italian, image: AppAssets.pizza),
    (title: AppConstants.japanese, image: AppAssets.sushi),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppDimensions.categorySpacing.w,
      children: [
        for (var i = 0; i < _categories.length; i++)
          FoodCategoryItem(
            title: _categories[i].title,
            image: _categories[i].image,
            isSelected: _selectedIndex == i,
            onTap: () => setState(() => _selectedIndex = i),
          ),
      ],
    );
  }
}
