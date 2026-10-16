class BankAccount {
  String accountNumber;
  String ownerName;
  double balance;

  BankAccount(this.accountNumber, this.ownerName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited : $amount ");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn : $amount ");
    } else {
      print("Insufficient balance");
    }
  }

  void displayBalance() {
    print("Your Current balance is : $balance");
  }
}
