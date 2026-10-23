
import 'delivery.dart';

class FoodDelivery extends Delivery {
  FoodDelivery(int orderId, double price)
      : super(orderId, price);

  @override
  void deliver() {
    print('food order $orderId is being delivered. ');
  }

  void checkFoodOrder() {
    print('food order is ready.');
  }
}
