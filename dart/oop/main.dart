import 'models/student.dart';
import 'models/rectangle.dart';
import 'models/bank_account.dart';
import 'models/car.dart';
import 'models/product.dart';
import 'models/book.dart';

void main() {
  //student
  Student s1 = Student("Myrna", 22, 90.5);
  Student s2 = Student("Myada", 26, 85.0);
  Student s3 = Student("Mohammed", 30, 88.0);
  s1.displayInfo();
  s2.displayInfo();
  s3.displayInfo();

  //rectangle
  Rectangle rect = Rectangle(5, 10);
  print("Area: ${rect.calculateArea()}");
  print("Perimeter: ${rect.calculatePerimeter()}");

  //bank account
  BankAccount account = BankAccount("12345", "Myrna", 1000);
  account.deposit(500);
  account.withdraw(200);
  account.withdraw(2000); 
  account.displayBalance();

  //car
  Car car = Car("Toyota ", "Corolla ", 2020, 0);
  car.accelerate();
  car.accelerate();
  car.brake();
  car.displayInfo();

  //product
  Product p1 = Product("Laptop ", 15000, 2);
  Product p2 = Product("Phone ", 8000, 3);
  Product p3 = Product("Headphones ", 500, 5);
  print("Total cost for ${p1.name}: ${p1.calculateTotal()}");
  print("Total cost for ${p2.name}: ${p2.calculateTotal()}");
  print("Total cost for ${p3.name}: ${p3.calculateTotal()}");

  // book
  Book b1 = Book(" Flutter Basics", "Myrna ");
  Book b2 = Book("OOP in Dart ", "Nader");
  b1.borrowBook();
  b1.borrowBook(); // Error
  b1.returnBook();
  b1.returnBook(); // Error
}
