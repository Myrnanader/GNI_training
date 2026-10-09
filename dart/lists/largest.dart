
import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Enter integer $i: ');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int largestNumber = findLargest(numbers);

  print('Largest number: $largestNumber');
}


int findLargest(List<int> numbers) {
  int largest = numbers[0];

  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }

  return largest;
}