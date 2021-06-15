import 'dart:io';

main() {
  String input = stdin.readLineSync();
  int number = int.tryParse(input);

  print(input); //for print string

  //you can use this for print integer
  print(number + 10);
}