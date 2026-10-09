void main() {
  double balance = 1000;
  double orderPrice = 750;
  double deliveryFee = 50;
  int numberOfItems = 4;

  String status = 'shipped';

  double finalCost = orderPrice + deliveryFee;

  if (balance >= finalCost) {
    print('Order confirmed');
  } else {
    print('Payment failed');
  }

  switch (status) {
    case 'pending':
      print('Order is pending');
      break;

    case 'shipped':
      print('Order has been shipped');
      break;

    case 'delivered':
      print('Order has been delivered');
      break;

    default:
      print('Unknown order status');
  }

  for (int i = 1; i <= numberOfItems; i++) {
    print('Delivering item $i');
  }

  print('Final order cost: $finalCost');
}