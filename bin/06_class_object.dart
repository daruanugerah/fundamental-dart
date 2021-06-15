//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run

import 'dart:io';

void main(List<String> args) {
  PersegiPanjang kotak1, kotak2; //this is an identifier for object
  double luasKotak1, luasKotak2;

  kotak1 = new PersegiPanjang(); //identification new object, if not identification, identifier will NULL, and NEW is optional
  kotak1.panjang = 5;
  kotak1.lebar = 4;

  kotak2 = PersegiPanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  luasKotak1 = kotak1.hitungLuas();
  luasKotak2 = kotak2.hitungLuas();

  print(luasKotak1);
  print(luasKotak2);
}

class PersegiPanjang{
  double panjang;
  double lebar;

  double hitungLuas() {
    return this.panjang * this.lebar;
  }
}