
abstract class Delivery {
  int orderId;
  double price;

  Delivery(this.orderId, this.price);

  void displayInfo() {
    print('Order ID: $orderId');
    print('Price: $price EGP');
  }

  double calculateDeliveryFee() {
    return price * 0.10;
  }

  void deliver();
}
