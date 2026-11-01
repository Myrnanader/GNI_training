import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/price_text.dart';
import '../../../../core/widgets/spacing_widgets.dart';
import '../../models/food_item.dart';

class ProductInfo extends StatelessWidget {
  final FoodItem food;

  const ProductInfo({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          food.name,
          textAlign: TextAlign.center,
          style: AppTextStyles.headingMedium,
        ),
        const HeightSpace(8),
        PriceText(
          price: food.price,
          style: AppTextStyles.bodyLarge,
        ),
      ],
    );
  }
}
