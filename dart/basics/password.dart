import 'dart:io';

void main() {
  const correctPassword = '123456';
  var attempts = 0;

  while (attempts < 3) {
    stdout.write('Enter password: ');
    final password = stdin.readLineSync() ?? '';

    if (password == correctPassword) {
      print('Login successfully');
      return;
    }

    attempts++;
    print('Incorrect password');
  }

  print('Account locked');

}