//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run
import 'dart:io';

main() {
  int number = int.tryParse(stdin.readLineSync());
  String output;

  //SAMPLE 1
  if (number > 0) {
    print("positif");
  } else if (number < 0) {
    print("negatif");
  } else {
    print("zero");
  }

  //SAMPLE 2
  //too determine the value, you can write a short IF
  output = (number > 0) ? "positif" : "negatif or zero";
  print(output);

  //SAMPLE 3
  switch (number) {
    case 0:
      print("nol");
      break;
    case 1:
      print(number);
      print("one");
      break;
    case 2:
      print("two");
      break;
    default:
      print("others number");
  }
}
