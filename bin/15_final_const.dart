// const just declare as top level
const phi = 3.14;

main(List<String> args) {
  // keywoard final must initialize the field
  final int x = 5;

  var a = const ConstSample(number: 5);
  var b = const ConstSample(number: 5);
  var c = ConstSample(number: 5);
  var d = ConstSample(number: 5);

  print(identical(a, b));
  print(identical(c, d));
  print(phi);
}

class FinalSample {
  // keyword final can initialize via constructor
  final int huhu;

  //const just be static field
  static const myCOnst = 12;

  FinalSample({
    this.huhu,
  }) {
    // const just be local variable
    const anotherConst = 14;
    print(anotherConst);
  }
}

class ConstSample {
  final int number;

  const ConstSample({
    this.number,
  });
}
