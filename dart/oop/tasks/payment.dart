
abstract class Payment {
  void pay(double amount);
}

class CashPayment extends Payment {
  @override
  void pay(double amount) {
    print('Paid $amount EGP using cash');
  }
}

class CreditCardPayment extends Payment {
  @override
  void pay(double amount) {
    print('Paid $amount EGP using credit card');
  }
}

class PayPalPayment extends Payment {
  @override
  void pay(double amount) {
    print('Paid $amount EGP using PayPal');
  }
}

void main() {
  CashPayment cash = CashPayment();
  CreditCardPayment card = CreditCardPayment();
  PayPalPayment paypal = PayPalPayment();

  cash.pay(500);
  card.pay(1000);
  paypal.pay(750);
}
