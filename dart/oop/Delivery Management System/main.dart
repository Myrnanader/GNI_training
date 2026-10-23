
import 'food_delivery.dart';
import 'product_delivery.dart';

void main() {
  FoodDelivery food = FoodDelivery(101, 250);
  ProductDelivery product = ProductDelivery(202, 800);

  print('=== FOOD Delivery ===');
  food.displayInfo();
  print('Delivery Fee : ${food.calculateDeliveryFee()} EGP ');
  food.deliver();
  food.checkFoodOrder();

  print('');

  print('=== Product Delivery ===');
  product.displayInfo();
  print('delivery fee: ${product.calculateDeliveryFee()} EGP');
  product.deliver();
  product.checkProductOrder();
}
