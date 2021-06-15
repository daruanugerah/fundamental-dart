//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run
//this modul must use import 071_encapsulation_other.class.dart for learn encapsulation

import 'dart:io';

import '07.1_encapsulation_other_file.dart';

void main(List<String> args) {
  PersegiPanjang box1, box2; //this is an identifier for object
  double largeBox1, largeBox2;

  box1 = new PersegiPanjang(); //identification new object, if not identification, identifier will NULL, and NEW is optional
  box1.panjang = 5;
  box1.lebar = 4;

  box2 = PersegiPanjang();
  box2.panjang = double.tryParse(stdin.readLineSync());
  box2.lebar = double.tryParse(stdin.readLineSync());

  largeBox1 = box1.countLarge;
  largeBox2 = box2.countLarge;

  print(largeBox1);
  print(largeBox2);
}

