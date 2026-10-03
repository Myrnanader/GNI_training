import 'dart:io';

void main() {
  stdout.write('Pleas Enter Your electricity units consumed : ');
  final units = double.parse(stdin.readLineSync()!);

  double pricePerUnit;

  if (units > 300) {
    pricePerUnit = 2.5;
  } else if (units > 150) {
    pricePerUnit = 2.0;
  } else {
    pricePerUnit = 1.5;
  }

  final totalBill = units * pricePerUnit;

  print('Total electricity bill: ${totalBill.toStringAsFixed(2)}');



}