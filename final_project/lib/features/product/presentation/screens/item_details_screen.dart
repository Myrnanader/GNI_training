import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/add_to_cart_button.dart';
import '../../../../core/widgets/app_screen.dart';
import '../../../../core/widgets/custom_icon_button.dart';
import '../../../../core/widgets/spacing_widgets.dart';
import '../../models/food_item.dart';
import '../widgets/product_attribute.dart';
import '../widgets/product_image.dart';
import '../widgets/product_info.dart';
import '../widgets/quantity_selector.dart';

class ItemDetailsScreen extends StatefulWidget {
  final FoodItem food;

  const ItemDetailsScreen({
    super.key,
    required this.food,
  });

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  int _quantity = AppConstants.defaultQuantity;

  double get _totalPrice => widget.food.price * _quantity;

  @override
  Widget build(BuildContext context) {
    final food = widget.food;

    return AppScreen(
      bottomAction: const AddToCartButton(),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomIconButton(
              icon: Icons.arrow_back_ios_new,
              backgroundColor: AppColors.transparent,
              iconColor: AppColors.black,
              onPressed: () => Navigator.maybePop(context),
            ),
          ),
          const HeightSpace(24),
          ProductInfo(food: food),
          const HeightSpace(20),
          ProductImage(
            image: food.detailImage,
            width: food.detailImageWidth,
          ),
          const HeightSpace(8),
          QuantitySelector(
            quantity: _quantity,
            onChanged: (value) => setState(() => _quantity = value),
          ),
          const HeightSpace(16),
          Text(
            '\$${_totalPrice.toStringAsFixed(2)}',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          const HeightSpace(104),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductAttribute(
                icon: AppAssets.star,
                value: food.rating.toString(),
              ),
              ProductAttribute(
                icon: AppAssets.emoji,
                value: '${food.calories} Calories',
              ),
              ProductAttribute(
                icon: AppAssets.time,
                value: '${food.preparationTime} - '
                    '${food.preparationTime + 10} min',
              ),
            ],
          ),
          const HeightSpace(24),
        ],
      ),
    );
  }
}
