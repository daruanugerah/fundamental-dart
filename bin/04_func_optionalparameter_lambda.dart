//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run
import 'dart:io';

//this is a function 1
double squareLarge(double length, double width) {
  double result;
  result = length * width;
  return result;
  //or you can write like this: return length * width
}

//this is function 2
void greetAudience() {
  print("Hello World!");
}

//this is function 3, optional parameters or named parameters, use {} in parameters
String say1(String from, String message, {String to, String appName}) {
  return from +
      " say " +
      message +
      ((to != null) ? " to " + to : "") +
      ((appName != null) ? " via " + appName : "");
}

//this is function 4, optional parameters or positional parameters, use [] in parameters
String say2(String from, String message, [String to, String appName]) {
  return from +
      " say " +
      message +
      ((to != null) ? " to " + to : "") +
      ((appName != null) ? " via " + appName : "");
}

//this is function 5, optional parameters or default parameters, use = for fill value parameter
String say3(String from, String message,
    [String to, String appName = "whatsapp"]) {
  return from +
      " say " +
      message +
      ((to != null) ? " to " + to : "") +
      ((appName != null) ? " via " + appName : "");
}

//this is lambda, to abbreviate a function that returns the value to just 1 command line, use =>
double squareLarge2(double length, double width) => length * width;

//this is function 7 for tell about anonymous function
int doMathOperator(int number1, int number2, Function(int, int) operator) {
  return operator(number1, number2);
}

main() {
  //SAMPLE 1 for function 1
  double l, w, large;
  l = double.tryParse(stdin.readLineSync());
  w = double.tryParse(stdin.readLineSync());
  large = squareLarge(l, w);
  print(large);

  //SAMPLE 2 for function 2
  greetAudience();

  //SAMPLE 3 for function 3
  print(say1("Jhonny", "Hello",
      appName:
          "whatsapp")); //You can choose one of the parameters in the curly braces without having to think about its position

  //SAMPLE 4 for function 4
  print(say2("Jhonny", "Hello",
      "Doloris")); //you can select one of the parameters in the square brackets but it must match the position, such as you can only delete "appName" and cannot delete "to" only

  //SAMPLE 5 for function 5
  print(say3("Jhonny", "Hello",
      "Doloris")); //if "appName" nul, appName will fillwith default value is "whastsapp"

  //SAMPLE 6 for lambad
  print(squareLarge2(2, 5));

  //SAMPLE 7, function as variable
  Function f;
  f = squareLarge2;
  print(f(6.0, 3.0));

  //SAMPLE 8 for function 7, anonymous function
  print(doMathOperator(2, 4, (a, b) => a * b)); //(a, b) => a * b is anonymous function
}
