class Persoon {
  String name;
  int age;
  static int maxAge = 150;

  Persoon(this.name, int age) {
    this.age = (age > 150) ? 150 : age;
  }
}

main(List<String> args) {
  var p = Persoon('David', 170);

  //print(p.maxAge) // will error becouse variable static maxAge only belongs class Persoon, not to belong Persoon object p
  print(Persoon.maxAge);
}