import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  final name = stdin.readLineSync() ?? '';

  stdout.write('Enter your age: ');
  final age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter your university: ');
  final university = stdin.readLineSync() ?? '';

  print('\nStudent Information');
  print('Name: $name');
  print('Age: $age');
  print('University: $university');
}