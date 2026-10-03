import 'dart:io';

void main() {
  final numbers = <int>[];

  for (var i = 1; i <= 5; i++) {
    stdout.write('Enter integer $i: ');
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  var sum = 0;

  for (final number in numbers) {
    sum += number;
  }

  print('Sum: $sum');
}