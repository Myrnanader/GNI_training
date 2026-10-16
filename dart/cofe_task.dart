
import 'dart:io';

List<String> drinks = ['Coffee', 'Tea', 'Juice', 'Latte'];
Map<String, int> prices = {
  'Coffee': 50,
  'Tea': 30,
  'Juice': 40,
  'Latte': 70,
};

void showDrinks() {
  print('available drinks : ');

  for (String drink in drinks) {
    print(drink);
  }
}

int? getPrice(String? drinkName) {
  if (drinkName == null) {
    return null;
  }

  return prices[drinkName];
}

void main() {
  showDrinks();

  stdout.write('Enter Your drink name : ');
  String? drinkName = stdin.readLineSync();

  int? price = getPrice(drinkName);

  if (price != null) {
    print('$drinkName = $price   EGP');
  } else {
    print('Drink not found ');
  }
}
