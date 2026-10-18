
class BankAccount {
  double _balance;

  BankAccount(this._balance);

  void deposit(double amount) {
    if (amount <= 0) {
      print('Invalid deposit amount ');
    } else {
      _balance += amount;
      print('Deposit successful ');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid withdrawal amount');
    } else if (amount > _balance) {
      print('Insufficient balance');
    } else {
      _balance -= amount;
      print('Withdrawal successful');
    }
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount(1000);

  account.deposit(500);
  account.withdraw(200);
  account.withdraw(2000);

  print('Current balance: ${account.getBalance()}');
}
