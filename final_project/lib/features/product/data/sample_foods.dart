import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/theme/app_dimensions.dart';
import '../models/food_item.dart';

const List<FoodItem> sampleFoods = [
  FoodItem(
    name: 'Melting Cheese',
    description: 'Delicious melting cheese pizza.',
    image: AppAssets.pizza1,
    detailImage: AppAssets.pizza4,
    detailImageWidth: AppDimensions.productImageWidth,
    price: 9.47,
    rating: 4.9,
    calories: 44,
    preparationTime: 20,
    category: AppConstants.italian,
  ),
  FoodItem(
    name: 'Pizza Capricciosa',
    description: 'Pizza with delicious fresh toppings.',
    image: AppAssets.pizza3,
    detailImage: AppAssets.pizza3,
    detailImageWidth: AppDimensions.productImageCompactWidth,
    price: 12.55,
    rating: 4.6,
    calories: 54,
    preparationTime: 15,
    category: AppConstants.italian,
  ),
];
