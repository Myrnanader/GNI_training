import 'dart:io';

void main() {
  final numbers = <int>[];

  for (var i = 1; i <= 6; i++) {
    stdout.write('Enter integer $i: ');
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  var positive = 0;
  var negative = 0;
  var zeros = 0;

  for (final number in numbers) {
    if (number > 0) {
      positive++;
    } else if (number < 0) {
      negative++;
    } else {
      zeros++;
    }
  }

  print('Positive numbers: $positive');
  print('Negative numbers: $negative');
  print('Zeros: $zeros');
}