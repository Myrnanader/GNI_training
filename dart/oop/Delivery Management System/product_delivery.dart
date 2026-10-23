
import 'delivery.dart';

class ProductDelivery extends Delivery {
  ProductDelivery(int orderId, double price)
      : super(orderId, price);

  @override
  void deliver() {
    print('Product order $orderId is being delivered. ');
  }

  void checkProductOrder() {
    print('product order is packed and ready. ');
  }
}
