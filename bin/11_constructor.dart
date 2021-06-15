//if this code have more than 1 SAMPLE, you can comment other SAMPLE first for run SAMPLE you want test run

main(List<String> args) {

  Person p = Student();

  print(p.name1);
  
}

class Person {
  String name1;

  Person({String name2 = 'no name'}) {
    print('constructor person');
    this.name1 = name2;
  }
}

class Student extends Person {
  Student() : super(name2: 'no name in person, change with NAME') {
    print('constructor student');
  }
}